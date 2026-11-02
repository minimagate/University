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
  </hide-preamble> <assign|page-this-header|><assign|page-this-footer|>

  <\with|par-mode|center>
    <vspace*|6.7cm>

    <with|font-size|3.6|Aritmetica>

    <vspace|1.4fn>

    <with|font-shape|small-caps|font-size|1.5|Spark>

    <vspace|1.4fn>

    <with|font-shape|small-caps|font-size|1.15|settembre e ottobre 2026>
  </with>

  <chapter*|Un percorso, un tassello alla volta>

  Questo libro accompagna il primo incontro con l'aritmetica universitaria.
  Presuppone le operazioni con interi e frazioni e le equazioni elementari;
  introduce nel testo il linguaggio degli insiemi, le dimostrazioni e le
  strutture algebriche.

  Il percorso segue tre domande. <strong|Come ragioniamo e contiamo?> I primi
  tre capitoli costruiscono induzione, conteggio e ricorrenze. <strong|Come
  lavoriamo negli interi?> I capitoli dal 4 all'8 collegano divisione, MCD,
  Bézout, equazioni diofantee e congruenze. <strong|Quali regole hanno queste
  operazioni?> Gli ultimi quattro capitoli introducono strutture algebriche,
  cicli e applicazioni.

  I titoli indicano i concetti che formano l'ossatura del percorso. Quando
  incontri un concetto chiave, fermati sul suo significato e sull'esempio che
  lo precede. Le dimostrazioni centrali spiegano prima che cosa cerchiamo e
  quali informazioni possono aiutarci; poi scrivono il ragionamento completo.

  Gli esempi guidati mostrano anche le scelte. Negli esercizi finali gli
  aiuti diminuiscono: prova a cominciare prima di leggere le soluzioni. Trovi
  una risposta spiegata per ogni esercizio nell'ultima parte del libro.

  Le sezioni intitolate <em|Per proseguire> raccolgono sviluppi più tecnici
  del corso. Puoi riprenderle dopo aver capito l'idea centrale del capitolo.
  Alla prima lettura dai priorità alle definizioni, agli esempi e alle
  dimostrazioni che costruiscono il percorso.

  Il volume rielabora il materiale disponibile dal 23 settembre al 31 ottobre
  2026, inclusa la nota del 19 ottobre sul teorema cinese. Le lezioni di
  novembre appartengono al seguito. Spiegazioni aggiuntive, figure ed
  esercizi di consolidamento sono integrazioni didattiche; non sono
  attribuzioni al docente. La selezione dei dettagli e la corrispondenza con
  le fonti sono documentate nei file che accompagnano il libro.

  <strong|Convenzioni.> I naturali comprendono lo zero. Scriviamo
  <math|a\<mid\>b> per dire che <math|b=a*k> per qualche intero <math|k>:
  \S<math|a> divide <math|b>\T. Il MCD è positivo e si considera per coppie
  non entrambe nulle; i divisori contati sono positivi. Nei moduli lavoriamo
  con <math|n\<geq\>2>, salvo indicazioni esplicite.

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Un percorso, un
    tassello alla volta> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn><no-page-break>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Il
    linguaggio matematico e l'induzione> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn><no-page-break>

    1.1<space|2spc>Insiemi ed enunciati: che cosa stiamo dicendo?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>

    1.2<space|2spc>Induzione: passare da un caso al successivo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>

    1.3<space|2spc>Il principio del minimo e il più piccolo controesempio
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>

    1.4<space|2spc>Induzione forte: usare tutti i casi precedenti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Funzioni
    e conteggio> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn><no-page-break>

    2.1<space|2spc>Funzioni: associare a ogni elemento una sola immagine
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>

    2.2<space|2spc>Sommare i casi e moltiplicare le scelte
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>

    2.3<space|2spc>Coefficienti binomiali: scegliere senza ordinare
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>

    2.4<space|2spc>Binomio di Newton e doppio conteggio
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>

    2.5<space|2spc>Inclusione-esclusione: correggere le sovrapposizioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>

    2.6<space|2spc>Per proseguire: due applicazioni del conteggio
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>Successioni
    e ricorrenze> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn><no-page-break>

    3.1<space|2spc>Una ricorrenza nasce dalle tassellazioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15>

    3.2<space|2spc>La regola e i dati iniziali
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16>

    3.3<space|2spc>Equazione caratteristica: cercare una formula
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17>

    3.4<space|2spc>Fibonacci e il ritorno alle tassellazioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>Divisione,
    MCD e algoritmo di Euclide> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-19><vspace|0.5fn><no-page-break>

    4.1<space|2spc>Divisibilità: riconoscere un multiplo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-20>

    4.2<space|2spc>Divisione euclidea: il resto va scelto bene
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-21>

    4.3<space|2spc>MCD: ciò che i divisori hanno in comune
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-22>

    4.4<space|2spc>Algoritmo di Euclide: conservare i divisori, ridurre i
    numeri <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-23>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>Bézout
    e fattorizzazione in primi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-24><vspace|0.5fn><no-page-break>

    5.1<space|2spc>Identità di Bézout: costruire il MCD
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-25>

    5.2<space|2spc>Quali numeri possiamo ottenere combinando due interi?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-26>

    5.3<space|2spc>Lemma di Euclide: quando possiamo togliere un fattore
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-27>

    5.4<space|2spc>Numeri primi e fattorizzazione unica
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-28>

    5.5<space|2spc>Divisori e mcm: leggere gli esponenti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-29>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>Equazioni
    diofantee> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-30><vspace|0.5fn><no-page-break>

    6.1<space|2spc>Che cosa cambia se le soluzioni devono essere intere?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-31>

    6.2<space|2spc>Esistenza delle soluzioni: il criterio del MCD
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-32>

    6.3<space|2spc>Da una soluzione a tutte le soluzioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-33>

    6.4<space|2spc>Aggiungere vincoli: il problema diventa un intervallo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-34>

    6.5<space|2spc>Per proseguire: differenze di quadrati
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-35>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Congruenze
    e classi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-36><vspace|0.5fn><no-page-break>

    7.1<space|2spc>Congruenze: quando due interi hanno lo stesso resto
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-37>

    7.2<space|2spc>Classi di congruenza: una famiglia diventa un oggetto
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-38>

    7.3<space|2spc>Relazioni di equivalenza: l'idea generale dietro le classi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-39>

    7.4<space|2spc>Fare somme e prodotti con le classi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-40>

    7.5<space|2spc>Per proseguire: anche i razionali sono classi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-41>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8<space|2spc>Congruenze
    lineari e teorema cinese> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-42><vspace|0.5fn><no-page-break>

    8.1<space|2spc>Inversi modulari: che cosa significa dividere?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-43>

    8.2<space|2spc>Cancellazione: quando il modulo deve cambiare
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-44>

    8.3<space|2spc>Congruenze lineari: una diofantea sui resti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-45>

    8.4<space|2spc>Teorema cinese: combinare due informazioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-46>

    8.5<space|2spc>Moduli non coprimi: compatibilità e mcm
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-47>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9<space|2spc>Gruppi,
    anelli e campi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-48><vspace|0.5fn><no-page-break>

    9.1<space|2spc>Prima domanda: su quali oggetti facciamo i conti?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-49>

    9.2<space|2spc>Gruppo: un'operazione che possiamo invertire
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-50>

    9.3<space|2spc>Anello: somma e prodotto insieme
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-51>

    9.4<space|2spc>Campo: dividere per ogni elemento non nullo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-52>

    9.5<space|2spc>Omomorfismi: cambiare oggetti conservando i conti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-53>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|10<space|2spc>Sottogruppi,
    gruppi ciclici e permutazioni> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-54><vspace|0.5fn><no-page-break>

    10.1<space|2spc>Sottogruppo: quali elementi possiamo tenere?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-55>

    10.2<space|2spc>Gruppo ciclico: partire da un solo elemento
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-56>

    10.3<space|2spc>Ordine: dopo quanti passi torniamo al neutro?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-57>

    10.4<space|2spc>Permutazioni: comporre cambiamenti di posizione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-58>

    10.5<space|2spc>Per proseguire: altre immagini dei sottogruppi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-59>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|11<space|2spc>Potenze
    modulari e sviluppi decimali> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-60><vspace|0.5fn><no-page-break>

    11.1<space|2spc>Potenze modulari: cercare dentro un ciclo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-61>

    11.2<space|2spc>Spezzare il modulo, poi ricomporre gli esponenti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-62>

    11.3<space|2spc>Decimali periodici: che cosa si ripete nella divisione?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-63>

    11.4<space|2spc>Dal periodo alla frazione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-64>

    11.5<space|2spc>Il denominatore anticipa la forma del decimale
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-65>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|12<space|2spc>Congruenze
    quadratiche e potenze prime> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-66><vspace|0.5fn><no-page-break>

    12.1<space|2spc>Un quadrato modulo un primo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-67>

    12.2<space|2spc>Per proseguire: il discriminante modulo un primo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-68>

    12.3<space|2spc>Sollevamento: una soluzione piccola va corretta
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-69>

    12.4<space|2spc>Tre possibilità: una, nessuna o più correzioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-70>

    12.5<space|2spc>Il teorema cinese ricompone le radici
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-71>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendice
    A<space|2spc>Soluzioni ragionate> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-72><vspace|0.5fn><no-page-break>
  </table-of-contents>

  <chapter|Il linguaggio matematico e l'induzione>

  <\inbreve>
    Come possiamo essere sicuri che una proprietà valga per tutti i numeri,
    anche quelli che non abbiamo controllato? Cominciamo dal significato di
    una dimostrazione e impariamo l'induzione. Questo sarà il punto di
    partenza per giustificare molti risultati del libro.
  </inbreve>

  <section|Insiemi ed enunciati: che cosa stiamo dicendo?>

  Un <strong|insieme> raccoglie oggetti che chiamiamo <strong|elementi>. Per
  esempio <math|A=<around|{|1,3,5|}>>. Scrivere <math|3\<in\>A> significa che
  3 appartiene ad <math|A>; scrivere <math|2\<nin\>A> significa che 2 non vi
  appartiene. L'insieme senza elementi si indica con <math|\<varnothing\>>.

  Useremo soprattutto i naturali <math|\<bbb-N\>=<around|{|0,1,2,\<ldots\>|}>>,
  gli interi <math|\<bbb-Z\>=<around|{|\<ldots\>,-2,-1,0,1,2,\<ldots\>|}>> e
  i razionali <math|\<bbb-Q\>>, cioè le frazioni di interi con denominatore
  diverso da zero. Specificare dove cerchiamo un numero fa parte del
  problema: <math|2x=1> ha una soluzione razionale, <math|x=1/2>, ma nessuna
  soluzione intera.

  Se ogni elemento di <math|A> appartiene anche a <math|B>, scriviamo
  <math|A\<subseteq\>B>: <math|A> è un <strong|sottoinsieme> di <math|B>.
  L'unione <math|A\<cup\>B> contiene gli elementi che stanno in almeno uno
  dei due insiemi; l'intersezione <math|A\<cap\>B> quelli comuni; la
  differenza <math|A\<setminus\>B> quelli di <math|A> che non stanno in
  <math|B>.

  Due insiemi sono uguali quando hanno esattamente gli stessi elementi. Per
  dimostrare <math|A=B> possiamo quindi fare due lavori: mostrare che ogni
  elemento di <math|A> sta in <math|B>, poi che ogni elemento di <math|B> sta
  in <math|A>. Sono le <strong|due inclusioni>.

  Un <strong|enunciato> è una frase matematica di cui possiamo discutere la
  verità. In \Sogni intero pari ha quadrato pari\T, la parola <em|ogni> è
  essenziale: la frase riguarda tutti gli interi pari. Controllare
  <math|2<rsup|2>=4> e <math|4<rsup|2>=16> dà esempi favorevoli, ma lascia
  aperti tutti gli altri casi.

  Una dimostrazione considera invece un intero pari qualsiasi. Si può
  scrivere <math|n=2k> con <math|k\<in\>\<bbb-Z\>>. Allora
  <math|n<rsup|2>=4k<rsup|2>=2(2k<rsup|2>)>, che è pari. Il ragionamento vale
  per qualunque <math|k>, e perciò copre tutti i casi.

  Il simbolo <math|\<forall\>> significa \Sper ogni\T, mentre
  <math|\<exists\>> significa \Sesiste\T. Per dimostrare che <em|esiste> un
  intero con una proprietà basta esibirne uno; per dimostrare che <em|ogni>
  intero la possiede serve un ragionamento generale. Per smentire \Sogni
  intero è pari\T basta invece un <strong|controesempio>, come 3.

  Nella frase \Sse <math|P>, allora <math|Q>\T, indicata con
  <math|P\<Rightarrow\>Q>, <math|P> è l'<strong|ipotesi> e <math|Q> la
  <strong|tesi>. Assumiamo l'ipotesi e cerchiamo di arrivare alla tesi. \SSe
  e solo se\T, scritto <math|P\<Leftrightarrow\>Q>, richiede entrambi i
  versi: <math|P\<Rightarrow\>Q> e <math|Q\<Rightarrow\>P>. La frase \Sesiste
  un unico\T richiede sia l'esistenza sia l'unicità: trovare un oggetto e
  provare che non ce ne sono altri.

  <section|Induzione: passare da un caso al successivo>

  Guardiamo le somme dei primi numeri dispari:

  <\equation*>
    1=1, <space|2em>1+3=4, <space|2em>1+3+5=9, <space|2em>1+3+5+7=16.
  </equation*>

  I risultati sono quadrati. Il disegno suggerisce una spiegazione: per
  passare da un quadrato di lato <math|n> a uno di lato <math|n+1>
  aggiungiamo una cornice a L di <math|2n+1> quadratini.

  <figura|<image|assets/dispari.pdf|117.5mm|52.5mm||>|Ogni nuova cornice
  aggiunge il dispari successivo. Dopo le prime <math|n> cornici, i
  quadratini formano un quadrato di lato <math|n>.>

  La formula da dimostrare è quindi

  <\equation*>
    1+3+5+\<cdots\>+(2n-1)=n<rsup|2><space|2em>(n\<geq\>1).
  </equation*>

  L'idea è usare il caso con <math|n> addendi per ottenere quello con
  <math|n+1>. Il nuovo caso contiene infatti la somma precedente, più il
  numero <math|2n+1>.

  <\concetto|Principio di induzione>
    Per dimostrare una proprietà <math|P(n)> per ogni naturale
    <math|n\<geq\>n<rsub|0>>, basta verificare la <strong|base>
    <math|P(n<rsub|0>)> e dimostrare il <strong|passo>: per ogni
    <math|n\<geq\>n<rsub|0>>, se vale <math|P(n)> allora vale <math|P(n+1)>.
  </concetto>

  La base fa iniziare il ragionamento. Il passo permette di ripeterlo: dalla
  base otteniamo il caso successivo, poi quello ancora successivo, e così
  raggiungiamo ogni indice. Nel passo assumiamo solo il caso <math|n> per
  dimostrare il caso <math|n+1>; questa assunzione si chiama <strong|ipotesi
  induttiva>.

  <\anatomia|La somma dei dispari>
    Vogliamo dimostrare la formula per ogni <math|n\<geq\>1>. La base è
    <math|n=1>: la somma vale 1, come <math|1<rsup|2>>.

    Per il passo, supponiamo che la somma dei primi <math|n> dispari sia
    <math|n<rsup|2>>. Il nostro obiettivo è la somma dei primi <math|n+1>
    dispari. Per poter usare l'ipotesi separiamo l'ultimo addendo:

    <\equation*>
      1+3+\<cdots\>+(2n-1)+(2n+1)=n<rsup|2>+(2n+1).
    </equation*>

    Il membro destro è <math|(n+1)<rsup|2>>. Abbiamo quindi dimostrato che la
    formula passa da <math|n> a <math|n+1>. Per induzione vale per ogni
    <math|n\<geq\>1>.

    Il punto riutilizzabile è questo: prima cerchiamo, nel problema nuovo,
    una parte che coincida con il problema precedente. Qui la troviamo
    separando l'ultimo addendo.
  </anatomia>

  L'induzione ci ha permesso di <em|verificare> una formula. La formula era
  stata suggerita dagli esempi e dal disegno. Scoprire una congettura e
  dimostrarla sono due momenti diversi del lavoro.

  <\attenzione|La base e il passo devono combaciare>
    La proprietà \S<math|n\<geq\>5>\T passa da <math|n> a <math|n+1>, ma non
    vale per tutti i naturali: manca una base a 0. È invece vera da 5 in poi.
    Bisogna anche controllare che il passo funzioni a partire dalla base
    scelta: una dimostrazione valida soltanto da 2 in poi non collega il caso
    1 al caso 2.
  </attenzione>

  <section|Il principio del minimo e il più piccolo controesempio>

  Se scegliamo alcuni naturali, per esempio
  <math|S=<around|{|4,7,10,\<ldots\>|}>>, tra quelli scelti ce n'è uno che
  viene prima di tutti: qui è 4. Il <strong|principio del minimo> afferma che
  ogni sottoinsieme non vuoto di <math|\<bbb-N\>> ha un elemento minimo.

  È una proprietà specifica dei naturali. L'insieme di tutti gli interi non
  ha minimo: per ogni intero possiamo scendere di uno. Neppure i numeri reali
  positivi, cioè i numeri sulla retta a destra dello zero, hanno minimo,
  perché la metà di un numero positivo è ancora positiva ed è più piccola.

  Il minimo spiega perché l'induzione funziona. Supponiamo di avere base e
  passo, ma che qualche caso sia falso. Scegliamo il più piccolo indice
  falso, <math|m>. Non è la base, che abbiamo controllato. Perciò esiste il
  caso precedente <math|m-1>, ed è vero: altrimenti <math|m> non sarebbe il
  primo caso falso. Il passo ci porta allora da <math|P(m-1)> a <math|P(m)>.
  Contraddizione: <math|P(m)> risulta sia vera sia falsa. Non possono dunque
  esistere casi falsi.

  Questo è un ragionamento <strong|per assurdo>: assumiamo che la conclusione
  fallisca e mostriamo che l'assunzione è incompatibile con ciò che sappiamo.
  Scegliere il <strong|minimo controesempio> aggiunge un'informazione
  preziosa: tutti i casi più piccoli funzionano.

  Anche l'induzione permette di recuperare il principio del minimo. Se un
  insieme <math|S\<subseteq\>\<bbb-N\>> non avesse minimo, 0 non potrebbe
  appartenergli. Supponiamo ora che nessun numero da 0 a <math|n> appartenga
  a <math|S>. Neppure <math|n+1> potrebbe appartenergli: sarebbe il suo
  minimo. L'induzione sulla frase cumulativa \Snessun numero da 0 a <math|n>
  sta in <math|S>\T darebbe <math|S=\<varnothing\>>. Quindi un insieme non
  vuoto deve avere minimo.

  <section|Induzione forte: usare tutti i casi precedenti>

  A volte il caso nuovo dipende da numeri più piccoli, ma non dal solo
  precedente. Per esempio, per scomporre 12 possiamo usare
  <math|12=3\<cdot\>4>: ci servono informazioni su 3 e 4, non su 11.

  L'<strong|induzione forte> permette proprio questo. Verifichiamo la base;
  poi, per dimostrare <math|P(n)>, possiamo assumere vere tutte le proprietà
  <math|P(k)> con <math|n<rsub|0>\<leq\>k\<less\>n>.

  Come esempio, mostriamo che ogni intero <math|n\<geq\>2> è prodotto di
  numeri primi. Ricordiamo il significato dei termini: un numero <math|d>
  <strong|divide> <math|n> se <math|n=d*k> per qualche intero <math|k>; un
  naturale <math|p\<geq\>2> è <strong|primo> se i suoi soli divisori positivi
  sono 1 e <math|p>. Un numero <math|n\<geq\>2> non primo è
  <strong|composto>: si scrive <math|n=a*b> con <math|2\<leq\>a,b\<less\>n>.

  La base è 2, che è già primo. Per il passo, supponiamo fattorizzabili tutti
  i numeri da 2 a <math|n-1>. Se <math|n> è primo, è esso stesso il prodotto
  cercato, con un solo fattore. Se è composto, scriviamo <math|n=a*b>:
  entrambi i fattori sono più piccoli di <math|n>, quindi per ipotesi si
  scompongono in primi. Unendo le loro scomposizioni otteniamo quella di
  <math|n>.

  <figura|<image|assets/fattori.pdf|117.5mm|53.8mm||>|Un numero composto si
  divide in fattori più piccoli. Il ragionamento di induzione forte assicura
  che la scomposizione possa arrivare fino ai primi.>

  Abbiamo provato che una scomposizione esiste. Per dimostrare che è
  <em|unica>, indipendentemente dalle scelte iniziali, servirà il lemma di
  Euclide del capitolo 5.

  L'induzione forte si ottiene anche dall'induzione ordinaria: basta
  applicare quest'ultima alla frase \Stutti i casi fino a <math|n> sono
  veri\T. La forza apparente in più viene dalla scelta di una proprietà che
  conserva tutte le informazioni utili.

  <subsection|In sintesi>

  Una dimostrazione precisa il dominio, le ipotesi e la tesi. L'induzione
  collega una base a un passo generale; la forma forte permette di usare
  tutti i casi precedenti. Il principio del minimo consente di ragionare sul
  primo eventuale fallimento. Useremo queste idee per dimostrare formule e
  spiegare perché certi procedimenti terminano.

  <\verifica|1>
    <strong|1. Con un suggerimento.> Dimostra per induzione che
    <math|1+2+\<cdots\>+n=n(n+1)/2> per ogni <math|n\<geq\>1>. Nel passo,
    separa l'addendo <math|n+1> e raccogli il fattore comune <math|n+1>.

    <strong|2. In autonomia.> Un ragionamento afferma: \SIl primo numero
    naturale è pari. Se <math|n> è pari, anche <math|n+2> è pari. Quindi
    tutti i naturali sono pari\T. Quali numeri raggiunge davvero il
    ragionamento? Spiega quale passaggio manca per applicare l'induzione a
    tutti i naturali.
  </verifica>

  <chapter|Funzioni e conteggio>

  <\inbreve>
    Contare diventa difficile quando gli oggetti sono molti o quando uno
    stesso oggetto può comparire in più modi. Impariamo a descrivere con
    precisione ciò che contiamo, a costruirlo per scelte successive e a
    correggere le ripetizioni. Le funzioni ci daranno il linguaggio per
    mettere in corrispondenza due famiglie di oggetti.
  </inbreve>

  <section|Funzioni: associare a ogni elemento una sola immagine>

  Prendiamo <math|X=<around|{|a,b,c|}>> e <math|Y=<around|{|0,1|}>>. Possiamo
  assegnare ad <math|a> il valore 0, a <math|b> il valore 1 e a <math|c>
  ancora 0. Abbiamo costruito una <strong|funzione>
  <math|f:X\<rightarrow\>Y>.

  L'insieme di partenza <math|X> è il <strong|dominio>; quello di arrivo
  <math|Y> è il <strong|codominio>. Ogni elemento del dominio deve avere
  esattamente un valore assegnato, detto <strong|immagine>. È consentito
  assegnare lo stesso valore a elementi diversi. Non è invece consentito
  lasciare un elemento senza valore o attribuirgli due valori diversi.

  Una funzione è <strong|iniettiva> quando elementi distinti hanno immagini
  distinte. È <strong|suriettiva> quando raggiunge ogni elemento del
  codominio. È <strong|biiettiva> quando possiede entrambe le proprietà: ogni
  elemento di arrivo corrisponde a uno e un solo elemento di partenza.

  <figura|<image|assets/funzioni.pdf|153.6mm|45.6mm||>|Nell'iniezione le
  frecce non arrivano insieme allo stesso punto; nella suriezione tutti i
  punti di arrivo sono raggiunti. Nella biiezione valgono entrambe le
  condizioni.>

  La funzione iniziale è suriettiva perché usa sia 0 sia 1, ma non è
  iniettiva: <math|a> e <math|c> hanno la stessa immagine. L'<strong|immagine
  della funzione> è l'insieme dei valori effettivamente raggiunti; può essere
  più piccolo del codominio. Per esempio, una funzione costante con valore 0
  e codominio <math|<around|{|0,1|}>> ha immagine <math|<around|{|0|}>>.

  Per un insieme finito, la <strong|cardinalità> <math|\|X\|> è il numero dei
  suoi elementi. Una biiezione tra due insiemi finiti dimostra che hanno la
  stessa cardinalità: accoppia tutti gli elementi senza ripeterne né perderne
  nessuno.

  Se dominio e codominio hanno entrambi <math|n> elementi, una funzione
  iniettiva è anche suriettiva: le sue <math|n> immagini distinte occupano
  tutti i posti disponibili. Viceversa una suriezione deve essere iniettiva:
  se due elementi condividessero un'immagine, rimarrebbero meno di <math|n>
  immagini distinte. Questa equivalenza richiede insiemi finiti della stessa
  cardinalità.

  <section|Sommare i casi e moltiplicare le scelte>

  Se possiamo scegliere fra 3 libri di algebra e 2 libri di geometria, tutti
  diversi, i libri disponibili sono <math|3+2=5>. Abbiamo sommato due gruppi
  <strong|disgiunti>, cioè senza elementi comuni.

  Se invece vogliamo formare una coppia scegliendo un libro di algebra e uno
  di geometria, per ciascuna delle 3 prime scelte abbiamo 2 seconde scelte.
  Le coppie sono <math|3\<cdot\>2=6>. È il <strong|principio del prodotto>.
  Vale quando ogni scelta al primo passo ha lo stesso numero previsto di
  continuazioni; se questo numero cambia, dobbiamo distinguere i casi.

  Il <strong|prodotto cartesiano> <math|X\<times\>Y> è proprio l'insieme
  delle coppie ordinate <math|(x,y)> con <math|x\<in\>X> e <math|y\<in\>Y>.
  Se <math|\|X\|=n> e <math|\|Y\|=m>, allora <math|\|X\<times\>Y\|=n*m>.

  Possiamo ora contare le funzioni. Consideriamo <math|n,m\<geq\>1>. Per
  ciascuno degli <math|n> elementi di <math|X> scegliamo una delle <math|m>
  immagini possibili, senza vincoli sulle altre scelte. Otteniamo
  <math|m<rsup|n>> funzioni. Nel primo esempio, da tre elementi a due, sono
  <math|2<rsup|3>=8>.

  Per contare solo le iniezioni, ogni immagine già usata diventa
  indisponibile. Abbiamo <math|m> scelte per il primo elemento, <math|m-1>
  per il secondo, e così via. Se <math|n\<leq\>m>, il numero è

  <\equation*>
    m(m-1)\<cdots\>(m-n+1)=<frac|m!|(m-n)!>.
  </equation*>

  Qui <math|m!>, letto \S<math|m> fattoriale\T, significa
  <math|m(m-1)\<cdots\>1>; poniamo <math|0!=1>. Per ordinare tutti gli
  <math|m> elementi distinti abbiamo quindi <math|m!> possibilità.

  Se <math|n\<gtr\>m>, un'iniezione è impossibile. È il <strong|principio dei
  cassetti>: se gli oggetti sono più dei posti disponibili, almeno due devono
  occupare lo stesso posto. Per esempio, fra 13 persone almeno due sono nate
  nello stesso mese. Il principio assicura l'esistenza della coincidenza
  anche senza dirci quali siano le persone.

  <section|Coefficienti binomiali: scegliere senza ordinare>

  Da tre elementi <math|a,b,c> scegliamone due distinti. Se l'ordine conta,
  abbiamo sei liste: <math|(a,b)>, <math|(a,c)>, <math|(b,a)>, <math|(b,c)>,
  <math|(c,a)>, <math|(c,b)>. Se vogliamo soltanto una coppia di elementi,
  ogni coppia è stata contata due volte: per esempio <math|(a,b)> e
  <math|(b,a)> descrivono lo stesso sottoinsieme <math|<around|{|a,b|}>>.

  <figura|<image|assets/scelte.pdf|155.0mm|72.5mm||>|Sei scelte ordinate
  diventano tre sottoinsiemi. Possiamo dividere per 2 perché ogni
  sottoinsieme compare esattamente due volte.>

  In generale, per scegliere e ordinare <math|k> elementi distinti fra
  <math|n> abbiamo <math|n!/(n-k)!> possibilità. Ma ciascun sottoinsieme di
  <math|k> elementi può essere ordinato in <math|k!> modi. Per contare i
  sottoinsiemi dividiamo per questo numero.

  <\concetto|Coefficiente binomiale>
    Il numero dei sottoinsiemi di <math|k> elementi di un insieme con
    <math|n> elementi è

    <\equation*>
      <binom|n|k>=<frac|n!|k!(n-k)!><space|2em>(0\<leq\>k\<leq\>n).
    </equation*>

    Il simbolo si legge \S<math|n> su <math|k>\T. Scegliere zero elementi ha
    un solo risultato, l'insieme vuoto: perciò <math|<binom|n|0>=1>. Anche
    <math|<binom|n|n>=1>. Fuori dall'intervallo poniamo <math|<binom|n|k>=0>.
  </concetto>

  Per scegliere due persone fra cinque abbiamo dunque
  <math|<binom|5|2>=5\<cdot\>4/2=10> possibilità. Se le due persone devono
  invece ricoprire due ruoli diversi, i modi sono 20: il ruolo conserva
  l'ordine.

  Lo stesso ragionamento spiega gli <strong|anagrammi con lettere ripetute>.
  La parola NONNO contiene tre N e due O. Numerando provvisoriamente le
  copie, gli ordinamenti sarebbero <math|5!>. Ma ogni parola visibile si
  ottiene in <math|3!\<cdot\>2!> modi, scambiando fra loro le N e fra loro le
  O. Gli anagrammi distinti sono quindi <math|5!/(3!2!)=10>.

  Con <math|r> tipi di lettere, presenti rispettivamente
  <math|n<rsub|1>,\<ldots\>,n<rsub|r>> volte e con somma <math|n>, otteniamo
  il <strong|coefficiente multinomiale> <math|n!/(n<rsub|1>!\<cdots\>n<rsub|r>!)>.
  Conta anche le ripartizioni di <math|n> oggetti distinti in gruppi
  etichettati di quelle dimensioni.

  <section|Binomio di Newton e doppio conteggio>

  Il coefficiente binomiale compare anche sviluppando <math|(a+b)<rsup|n>>.
  In ciascuna delle <math|n> parentesi scegliamo <math|a> oppure <math|b>.
  Per ottenere <math|a<rsup|k>b<rsup|n-k>> dobbiamo scegliere quali <math|k>
  parentesi forniscono <math|a>: ci sono <math|<binom|n|k>> modi. Questo
  dimostra il <strong|binomio di Newton>:

  <\equation*>
    (a+b)<rsup|n>=<big|sum><rsub|k=0><rsup|n><binom|n|k>a<rsup|k>b<rsup|n-k>.
  </equation*>

  Il simbolo di somma dice di aggiungere i termini corrispondenti a tutti gli
  indici da 0 a <math|n>. Con <math|n=3> ritroviamo
  <math|a<rsup|3>+3a<rsup|2>b+3a*b<rsup|2>+b<rsup|3>>.

  Scegliere <math|k> elementi equivale a scegliere i <math|n-k> da lasciare
  fuori: dunque <math|<binom|n|k>=<binom|n|n-k>>. Inoltre, fissato un
  elemento, un sottoinsieme di <math|k> elementi può contenerlo oppure no. I
  due casi danno l'<strong|identità di Pascal>:

  <\equation*>
    <binom|n|k>=<binom|n-1|k-1>+<binom|n-1|k><space|2em>(n\<geq\>1).
  </equation*>

  Queste dimostrazioni contano la stessa famiglia in due modi: è il
  <strong|doppio conteggio>. Anche tutti i sottoinsiemi si possono contare in
  due modi. Per ogni elemento scegliamo se inserirlo: <math|2<rsup|n>>
  possibilità. Oppure li raggruppiamo per dimensione. Ne segue
  <math|<big|sum><rsub|k=0><rsup|n><binom|n|k>=2<rsup|n>>.

  Se <math|n\<geq\>1>, i sottoinsiemi di dimensione pari e quelli di
  dimensione dispari sono altrettanti: fissiamo un elemento e aggiungiamolo
  quando manca, togliendolo quando c'è. Questa operazione è reversibile e
  cambia la parità. Ciascuna famiglia contiene quindi <math|2<rsup|n-1>>
  sottoinsiemi.

  Un altro esempio utile è scegliere un sottoinsieme con un suo elemento
  contrassegnato. Scegliendo prima la dimensione <math|k>, poi il
  sottoinsieme, poi il contrassegno, otteniamo
  <math|<big|sum><rsub|k=0><rsup|n>k<binom|n|k>>. Scegliendo prima l'elemento
  contrassegnato abbiamo <math|n> possibilità; degli altri <math|n-1>
  elementi scegliamo liberamente quali inserire. Perciò, per
  <math|n\<geq\>1>,

  <\equation*>
    <big|sum><rsub|k=0><rsup|n>k<binom|n|k>=n2<rsup|n-1>.
  </equation*>

  <section|Inclusione-esclusione: correggere le sovrapposizioni>

  Fra gli interi da 1 a 12, sei sono multipli di 2 e quattro sono multipli di
  3. Per contare quelli divisibili per almeno uno dei due, non possiamo
  limitarci a sommare: 6 e 12 compaiono in entrambi i gruppi. Li abbiamo
  contati due volte, quindi sottraiamo una delle due copie. Il risultato è
  <math|6+4-2=8>.

  Per due insiemi finiti questo dà

  <\equation*>
    \|A\<cup\>B\|=\|A\|+\|B\|-\|A\<cap\>B\|.
  </equation*>

  Con tre insiemi sommiamo i singoli, sottraiamo le intersezioni a due a due
  e aggiungiamo l'intersezione tripla. Un elemento comune a tutti e tre è
  infatti contato <math|3-3=0> volte prima dell'ultima aggiunta: dobbiamo
  riportare il suo contributo a 1.

  <figura|<image|assets/venn3.pdf|150.0mm|62.5mm||>|Il contributo finale di
  ogni elemento dell'unione deve essere 1, anche se appartiene a più insiemi.
  Le intersezioni correggono le copie in eccesso.>

  La stessa regola continua per più insiemi: singoli con segno più,
  intersezioni doppie con segno meno, triple con segno più, e così via.
  Perché funziona? Se un elemento sta in esattamente <math|j\<geq\>1>
  insiemi, il suo contributo è

  <\equation*>
    <binom|j|1>-<binom|j|2>+\<cdots\>+(-1)<rsup|j+1><binom|j|j>=1.
  </equation*>

  L'uguaglianza segue da Newton: <math|(1-1)<rsup|j>=0>; separando il termine
  iniziale 1 e portando gli altri dall'altra parte otteniamo proprio questa
  somma. Ogni elemento presente viene dunque contato una volta; gli elementi
  esterni non contribuiscono.

  Una <strong|funzione caratteristica> esprime lo stesso meccanismo con
  numeri: <math|\<chi\><rsub|A>(x)> vale 1 se <math|x\<in\>A> e 0 altrimenti.
  Sommando questi valori contiamo gli elementi di <math|A>. Il prodotto
  <math|\<chi\><rsub|A>\<chi\><rsub|B>> segnala l'intersezione, mentre
  <math|\<chi\><rsub|A>+\<chi\><rsub|B>-\<chi\><rsub|A>\<chi\><rsub|B>>
  segnala l'unione. È un modo algebrico di descrivere il conteggio
  precedente.

  <section|Per proseguire: due applicazioni del conteggio>

  Le idee fondamentali del capitolo sono già costruite. Le prossime due
  applicazioni mostrano come combinarle in problemi più articolati; puoi
  tornarci dopo una prima lettura.

  <subsection|Contare le suriezioni>

  Per contare le suriezioni da tre elementi a due, partiamo dalle 8 funzioni
  totali. Quelle che omettono 0 sono la sola funzione costante 1; quelle che
  omettono 1 sono la sola funzione costante 0. Restano <math|8-1-1=6>
  suriezioni.

  Per <math|n\<geq\>1> elementi di partenza e <math|m\<geq\>1> di arrivo, le
  funzioni che evitano un valore fissato sono <math|(m-1)<rsup|n>>; quelle
  che evitano due valori fissati sono <math|(m-2)<rsup|n>>, e così via.
  Scegliendo i valori da evitare e correggendo le sovrapposizioni otteniamo

  <\equation*>
    <big|sum><rsub|k=0><rsup|m>(-1)<rsup|k><binom|m|k>(m-k)<rsup|n>.
  </equation*>

  Il termine <math|k=0> conta tutte le funzioni. I successivi eliminano
  quelle che omettono almeno un valore, con le correzioni necessarie.

  <subsection|Stelle e sbarre: distribuire quantità uguali>

  Quante soluzioni intere non negative ha <math|x+y+z=4>? Le posizioni sono
  distinguibili: <math|(4,0,0)> e <math|(0,4,0)> sono soluzioni diverse.

  Rappresentiamo le quattro unità con stelle e separiamo le tre quantità con
  due sbarre. Per esempio \Sdue stelle, sbarra, due stelle, sbarra\T descrive
  <math|(2,2,0)>. Sbarre adiacenti o agli estremi permettono quantità nulle.

  <figura|<image|assets/stelle.pdf|140.0mm|37.5mm||>|Quattro stelle
  rappresentano le unità; due sbarre separano tre quantità. La posizione
  delle sbarre determina una e una sola soluzione.>

  Abbiamo sei posizioni e scegliamo quali due occupare con le sbarre:
  <math|<binom|6|2>=15> soluzioni. In generale, per <math|r\<geq\>1> e
  <math|n\<geq\>0>,

  <\equation*>
    x<rsub|1>+\<cdots\>+x<rsub|r>=n,<space|1em>x<rsub|i>\<geq\>0
    <space|1em>\<Longrightarrow\><space|1em><binom|n+r-1|r-1><text|
    soluzioni.>
  </equation*>

  Se le quantità devono essere tutte positive, assegniamo prima un'unità a
  ciascuna. Restano <math|n-r> unità da distribuire senza altri vincoli: per
  <math|n\<geq\>r> le soluzioni sono <math|<binom|n-1|r-1>>. Per
  <math|n\<less\>r> non ce ne sono.

  <subsection|In sintesi>

  La domanda decisiva è quali scelte descrivano un oggetto una volta sola. I
  casi disgiunti si sommano, le scelte successive si moltiplicano. Se
  dimentichiamo l'ordine correggiamo le ripetizioni uniformi; se i casi si
  sovrappongono usiamo inclusione-esclusione. Una biiezione o un doppio
  conteggio possono spiegare un'identità senza lunghe manipolazioni.

  <\verifica|2>
    <strong|1. Con un suggerimento.> Quante funzioni suriettive esistono da
    un insieme di quattro elementi a uno di tre? Parti dalle funzioni totali,
    sottrai quelle che evitano un valore e correggi quelle che ne evitano
    due.

    <strong|2. In autonomia.> Quante terne ordinate di interi positivi
    <math|(x,y,z)> soddisfano <math|x+y+z=7>? Spiega perché dividere il
    risultato per <math|3!> non darebbe in generale il numero di terne senza
    ordine.
  </verifica>

  <chapter|Successioni e ricorrenze>

  <\inbreve>
    Nel conteggio possiamo riconoscere un problema più piccolo dentro quello
    che stiamo affrontando. Questo produce una ricorrenza: una regola che
    calcola un termine usando i precedenti. Impariamo a costruire questa
    regola, a capire quali dati la completano e a ricavarne una formula
    esplicita.
  </inbreve>

  <section|Una ricorrenza nasce dalle tassellazioni>

  Vogliamo ricoprire un rettangolo di due righe e <math|n> colonne con
  tessere di dimensioni <math|2\<times\>1>. Possiamo ruotarle, ma non
  sovrapporle o lasciare buchi. Indichiamo con <math|T<rsub|n>> il numero
  delle coperture possibili.

  Per una colonna c'è una sola possibilità: una tessera verticale. Per due
  colonne ce ne sono due: due tessere verticali oppure due orizzontali. Per
  quattro colonne le coperture sono cinque.

  <figura|<image|assets/tassellazioni.pdf|155.0mm|23.0mm||>|Le cinque
  coperture di un rettangolo <math|2\<times\>4>. Per lunghezze maggiori,
  disegnarle tutte diventa poco pratico.>

  Cerchiamo una classificazione che non richieda di elencare tutte le
  coperture. Guardiamo la casella in alto a sinistra. Se la tessera che la
  copre è verticale, occupa la prima colonna: resta un rettangolo di
  lunghezza <math|n-1>, con <math|T<rsub|n-1>> coperture.

  Se invece la tessera è orizzontale, anche la casella sotto deve essere
  coperta da una tessera orizzontale: una verticale si sovrapporrebbe alla
  prima. Le due tessere occupano le prime due colonne. Resta un rettangolo di
  lunghezza <math|n-2>, con <math|T<rsub|n-2>> coperture.

  <figura|<image|assets/domino.pdf|155.0mm|33.8mm||>|Le due partenze
  esauriscono le possibilità e sono incompatibili fra loro. Perciò i loro
  conteggi si sommano.>

  Otteniamo la regola

  <\equation*>
    T<rsub|n>=T<rsub|n-1>+T<rsub|n-2><space|2em>(n\<geq\>2).
  </equation*>

  Poniamo <math|T<rsub|0>=1>: c'è un solo modo di coprire il rettangolo
  vuoto, non mettere tessere. Insieme a <math|T<rsub|1>=1>, questa scelta
  produce

  <\equation*>
    T<rsub|0>,T<rsub|1>,T<rsub|2>,T<rsub|3>,T<rsub|4>,T<rsub|5>,\<ldots\>=1,1,2,3,5,8,\<ldots\>
  </equation*>

  <section|La regola e i dati iniziali>

  Una <strong|successione> assegna un numero a ogni indice naturale:
  scriviamo <math|a<rsub|0>,a<rsub|1>,a<rsub|2>,\<ldots\>>. In termini del
  capitolo precedente, è una funzione che ha come dominio <math|\<bbb-N\>>.
  Il simbolo <math|a<rsub|n>> indica il termine di indice <math|n>.

  <\concetto|Ricorrenza del secondo ordine>
    Una regola della forma <math|a<rsub|n+2>=c*a<rsub|n+1>+d*a<rsub|n>>
    calcola il termine nuovo dai due precedenti. Per determinare una
    successione occorrono anche due <strong|dati iniziali>, <math|a<rsub|0>>
    e <math|a<rsub|1>>. I coefficienti <math|c,d> sono fissati.
  </concetto>

  Per esempio, con

  <\equation*>
    a<rsub|n+2>=3a<rsub|n+1>-2a<rsub|n>,<space|2em>a<rsub|0>=0,<space|1em>a<rsub|1>=1,
  </equation*>

  calcoliamo <math|a<rsub|2>=3\<cdot\>1-2\<cdot\>0=3>, poi
  <math|a<rsub|3>=3\<cdot\>3-2\<cdot\>1=7>, poi 15, 31 e così via. Con dati
  iniziali diversi otterremmo numeri diversi, pur mantenendo la stessa
  regola.

  I dati iniziali e la regola determinano una sola successione. Infatti, se
  due successioni partono dagli stessi primi due termini, la regola produce
  lo stesso terzo termine; poi lo stesso quarto, e così via. Formalmente è
  un'induzione sulla coppia di uguaglianze <math|a<rsub|n>=b<rsub|n>> e
  <math|a<rsub|n+1>=b<rsub|n+1>>: dalle due uguaglianze segue quella al posto
  <math|n+2>.

  Questa <strong|unicità> ha una conseguenza pratica: per dimostrare che una
  formula descrive la successione cercata, basta controllare i primi due
  termini e la ricorrenza.

  <section|Equazione caratteristica: cercare una formula>

  Calcolare tutti i termini precedenti per arrivare al centesimo può essere
  scomodo. Cerchiamo una <strong|formula esplicita>, che usi direttamente
  l'indice <math|n>.

  Perché provare con le potenze? Una potenza mantiene la stessa forma quando
  spostiamo l'indice: da <math|\<lambda\><rsup|n>> a
  <math|\<lambda\><rsup|n+1>> basta moltiplicare per <math|\<lambda\>>.
  Questo permette di confrontare facilmente termini consecutivi.

  Proviamo quindi <math|a<rsub|n>=\<lambda\><rsup|n>>, con
  <math|\<lambda\>\<neq\>0>, nella ricorrenza dell'esempio. Otteniamo

  <\equation*>
    \<lambda\><rsup|n+2>=3\<lambda\><rsup|n+1>-2\<lambda\><rsup|n>.
  </equation*>

  Dividendo per <math|\<lambda\><rsup|n>> rimane un'equazione che non dipende
  più da <math|n>:

  <\equation*>
    \<lambda\><rsup|2>-3\<lambda\>+2=0, <space|2em>(\<lambda\>-1)(\<lambda\>-2)=0.
  </equation*>

  È l'<strong|equazione caratteristica>. Le radici 1 e 2 ci danno due
  successioni che rispettano la regola: quella costante <math|1<rsup|n>> e
  quella <math|2<rsup|n>>.

  La ricorrenza è <strong|lineare e omogenea>: moltiplicare due soluzioni per
  costanti e sommarle produce ancora una soluzione. Per vederlo, se
  <math|u<rsub|n>> e <math|v<rsub|n>> rispettano la regola, allora

  <\equation*>
    3(A*u<rsub|n+1>+B*v<rsub|n+1>)-2(A*u<rsub|n>+B*v<rsub|n>)=A*u<rsub|n+2>+B*v<rsub|n+2>.
  </equation*>

  Possiamo dunque cercare la nostra successione nella forma
  <math|a<rsub|n>=A+B2<rsup|n>>. Per rispettare i dati iniziali chiediamo

  <\equation*>
    A+B=0,<space|2em>A+2B=1.
  </equation*>

  Sottraendo la prima uguaglianza dalla seconda troviamo <math|B=1>, poi
  <math|A=-1>. Quindi

  <\equation*>
    a<rsub|n>=2<rsup|n>-1.
  </equation*>

  <\anatomia|Perché la formula trovata è proprio quella cercata>
    Trovare un'espressione plausibile non basta. Dobbiamo collegarla ai dati
    del problema.

    La formula parte bene: <math|2<rsup|0>-1=0> e <math|2<rsup|1>-1=1>.
    Rispetta anche la ricorrenza, perché

    <\equation*>
      3(2<rsup|n+1>-1)-2(2<rsup|n>-1)=2<rsup|n+2>-1.
    </equation*>

    Per l'unicità dimostrata prima, questa successione coincide con quella
    definita dalla regola. Il metodo non richiede di confrontare un'infinità
    di valori: basta verificare la partenza e il modo in cui prosegue.
  </anatomia>

  <subsection|Per proseguire: il caso generale>

  Per <math|a<rsub|n+2>=c*a<rsub|n+1>+d*a<rsub|n>>, con <math|d\<neq\>0>, il
  polinomio caratteristico è <math|\<lambda\><rsup|2>-c\<lambda\>-d>. Qui
  trattiamo il caso di due radici distinte
  <math|\<lambda\><rsub|1>,\<lambda\><rsub|2>>. La formula è

  <\equation*>
    a<rsub|n>=A\<lambda\><rsub|1><rsup|n>+B\<lambda\><rsub|2><rsup|n>.
  </equation*>

  Perché raggiungiamo ogni possibile coppia di dati iniziali? Le condizioni
  sono <math|A+B=a<rsub|0>> e <math|A\<lambda\><rsub|1>+B\<lambda\><rsub|2>=a<rsub|1>>.
  Sostituendo <math|A=a<rsub|0>-B>, la seconda diventa
  <math|B(\<lambda\><rsub|2>-\<lambda\><rsub|1>)=a<rsub|1>-a<rsub|0>\<lambda\><rsub|1>>.
  Poiché le radici sono distinte, possiamo sempre trovare un unico <math|B>,
  poi un unico <math|A>. L'unicità della ricorrenza conclude il ragionamento.
  Se necessario, le radici e i calcoli si considerano nei numeri complessi,
  della forma <math|x+i*y> con <math|x,y> reali e <math|i<rsup|2>=-1>.

  <section|Fibonacci e il ritorno alle tassellazioni>

  La successione di <strong|Fibonacci> è definita da <math|F<rsub|0>=0>,
  <math|F<rsub|1>=1> e <math|F<rsub|n+2>=F<rsub|n+1>+F<rsub|n>>. I primi
  termini sono <math|0,1,1,2,3,5,8,\<ldots\>>.

  L'equazione caratteristica è <math|\<lambda\><rsup|2>-\<lambda\>-1=0>. Le
  radici sono

  <\equation*>
    \<varphi\>=<frac|1+<sqrt|5>|2>,<space|2em>\<psi\>=<frac|1-<sqrt|5>|2>.
  </equation*>

  Scriviamo <math|F<rsub|n>=A\<varphi\><rsup|n>+B\<psi\><rsup|n>>. La
  partenza dà <math|A+B=0> e <math|A\<varphi\>+B\<psi\>=1>. Quindi
  <math|B=-A> e <math|A(\<varphi\>-\<psi\>)=1>. Poiché
  <math|\<varphi\>-\<psi\>=<sqrt|5>>, otteniamo la <strong|formula di Binet>:

  <\equation*>
    F<rsub|n>=<frac|\<varphi\><rsup|n>-\<psi\><rsup|n>|<sqrt|5>>.
  </equation*>

  Le radici quadrate possono sorprendere, ma l'unicità garantisce che la
  formula dia proprio gli interi generati dalla ricorrenza.

  Le tassellazioni seguono la stessa regola con partenza 1, 1. Sono quindi
  Fibonacci spostata di un posto: <math|T<rsub|n>=F<rsub|n+1>>. Controlliamo
  gli indici: <math|T<rsub|0>=F<rsub|1>=1> e <math|T<rsub|1>=F<rsub|2>=1>.

  <subsection|Per proseguire: un secondo conteggio delle tassellazioni>

  Possiamo ritrovare anche un legame con i binomiali. Se una copertura
  contiene <math|k> coppie orizzontali, queste occupano <math|2k> colonne;
  rimangono <math|n-2k> tessere verticali. Ci sono dunque <math|n-k> blocchi
  in tutto e scegliamo quali <math|k> siano coppie orizzontali. Sommando sui
  valori possibili di <math|k> otteniamo

  <\equation*>
    T<rsub|n>=<big|sum><rsub|k=0><rsup|\<lfloor\>n/2\<rfloor\>><binom|n-k|k>.
  </equation*>

  Il simbolo <math|\<lfloor\>n/2\<rfloor\>> indica il massimo intero non
  maggiore di <math|n/2>. Per <math|n=4> la somma vale <math|1+3+1=5>: lo
  stesso conteggio del disegno iniziale.

  <subsection|In sintesi>

  La ricorrenza descrive come proseguire; i dati iniziali stabiliscono da
  dove partire. Il polinomio caratteristico cerca soluzioni adatte alla
  regola; le costanti adattano queste soluzioni alla partenza. L'unicità
  spiega perché controllare regola e dati iniziali è sufficiente.

  <\verifica|3>
    <strong|1. Con un suggerimento.> Trova la formula esplicita per
    <math|a<rsub|n+2>=3a<rsub|n+1>-2a<rsub|n>> con <math|a<rsub|0>=5> e
    <math|a<rsub|1>=7>. Il polinomio caratteristico è quello già studiato:
    cambia soltanto il sistema per <math|A,B>.

    <strong|2. In autonomia.> Quante coperture ha un rettangolo
    <math|2\<times\>6>? Calcola il numero sia con la ricorrenza sia
    distinguendo quante coppie orizzontali compaiono.
  </verifica>

  <chapter|Divisione, MCD e algoritmo di Euclide>

  <\inbreve>
    Come troviamo ciò che due interi hanno in comune? Partiamo dalla
    divisibilità, precisiamo la divisione con resto e arriviamo a un
    procedimento che calcola il massimo comun divisore. A ogni passaggio
    distingueremo che cosa stiamo facendo e perché possiamo farlo.
  </inbreve>

  <section|Divisibilità: riconoscere un multiplo>

  Il numero 18 si può ottenere moltiplicando 6 per un intero:
  <math|18=6\<cdot\>3>. Diciamo perciò che <strong|6 divide 18>, oppure che
  18 è un <strong|multiplo> di 6. La scrittura <math|6\<mid\>18> contiene
  proprio questa informazione.

  In generale, per interi <math|a,b>, scriviamo <math|a\<mid\>b> se esiste un
  intero <math|k> tale che <math|b=a*k>. L'ordine conta: <math|6\<mid\>18>,
  mentre <math|18\<nmid\>6>. Il numero a destra è quello che vogliamo
  ottenere come multiplo.

  Sono ammessi anche interi negativi: <math|3\<mid\>(-12)> perché
  <math|-12=3\<cdot\>(-4)>. Inoltre ogni intero divide 0, dato che
  <math|0=a\<cdot\>0>. Lo zero divide soltanto 0: un prodotto con 0 non può
  dare un numero diverso da 0.

  La divisibilità non è l'ordine usuale. Tra 2 e 3 nessuno divide l'altro.
  Sui naturali è un <strong|ordine parziale>: è riflessiva, transitiva e
  antisimmetrica. Riflessiva significa <math|a\<mid\>a>. Transitiva significa
  che da <math|a\<mid\>b> e <math|b\<mid\>c> segue <math|a\<mid\>c>: infatti,
  se <math|b=a*k> e <math|c=b\<#2113\>>, allora <math|c=a(k\<#2113\>)>.
  Antisimmetrica significa che, per naturali, <math|a\<mid\>b> e
  <math|b\<mid\>a> impongono <math|a=b>. Per numeri positivi segue dalle due
  disuguaglianze; se uno è zero, l'altro deve esserlo. Sugli interi questa
  conclusione diventa <math|a=\<pm\>b>.

  Una proprietà accompagnerà tutto il percorso. Se <math|d> divide sia
  <math|a> sia <math|b>, divide anche <math|a+b>, <math|a-b> e, più in
  generale, ogni <strong|combinazione intera> <math|u*a+v*b>, con
  <math|u,v\<in\>\<bbb-Z\>>. Per capirne il motivo, scriviamo <math|a=d*h> e
  <math|b=d*k>. Allora

  <\equation*>
    u*a+v*b=d(u*h+v*k).
  </equation*>

  La parentesi è un intero: abbiamo esposto il fattore <math|d> che
  cercavamo.

  <section|Divisione euclidea: il resto va scelto bene>

  Dividendo 17 per 5 otteniamo <math|17=3\<cdot\>5+2>. Il quoziente è 3, il
  resto è 2. Potremmo anche scrivere <math|17=2\<cdot\>5+7>, ma il 7 contiene
  ancora un intero gruppo di 5: non abbiamo finito la divisione.

  La divisione euclidea chiede un resto non negativo e più piccolo del
  divisore in valore assoluto.

  <\concetto|Divisione euclidea>
    Per ogni <math|a,b\<in\>\<bbb-Z\>>, con <math|b\<neq\>0>, esistono unici
    interi <math|q,r> tali che

    <\equation*>
      a=q*b+r,<space|2em>0\<leq\>r\<less\>\|b\|.
    </equation*>

    Chiamiamo <math|q> il quoziente e <math|r> il resto.
  </concetto>

  La condizione sul resto vale anche con numeri negativi. Per esempio,

  <\equation*>
    -17=(-4)\<cdot\>5+3.
  </equation*>

  Il resto è 3. La scrittura <math|-17=(-3)\<cdot\>5-2> dà l'uguaglianza
  giusta, ma non una divisione euclidea: il resto sarebbe negativo. Se il
  divisore è <math|-5>, scriviamo invece <math|-17=4\<cdot\>(-5)+3>; il resto
  rimane 3.

  <figura|<image|assets/divisione.pdf|155.0mm|30.0mm||>|Per dividere
  <math|-17> per 5 partiamo dal multiplo <math|-20> e avanziamo di 3. Il
  resto misura questa distanza non negativa.>

  <subsection|Perché esistono quoziente e resto>

  Consideriamo prima <math|b\<gtr\>0>. Cerchiamo numeri non negativi della
  forma <math|a-q*b>. Ce n'è almeno uno: se <math|a\<geq\>0> basta
  <math|q=0>; se <math|a\<less\>0>, scegliamo <math|q=a> e otteniamo
  <math|a-a*b=a(1-b)\<geq\>0>, perché entrambi i fattori sono non positivi.

  Per il principio del minimo esiste dunque il più piccolo numero non
  negativo di questa forma. Chiamiamolo <math|r=a-q*b>. Se fosse
  <math|r\<geq\>b>, potremmo sottrarre ancora <math|b>: il numero
  <math|r-b=a-(q+1)b> sarebbe non negativo e più piccolo di <math|r>. Questo
  contraddice la scelta del minimo. Perciò <math|0\<leq\>r\<less\>b>, come
  volevamo.

  Se <math|b\<less\>0>, dividiamo prima per <math|\|b\|=-b>. Cambiando segno
  al quoziente otteniamo poi la divisione per <math|b>, con lo stesso resto.

  <subsection|Perché la scelta è unica>

  Supponiamo di avere due divisioni corrette: <math|a=q*b+r=q'b+r'>.
  Sottraendole troviamo

  <\equation*>
    (q-q')b=r'-r.
  </equation*>

  Quindi <math|r'-r> è un multiplo di <math|b>. Ma entrambi i resti stanno
  fra 0 e <math|\|b\|-1>, perciò <math|\|r'-r\|\<less\>\|b\|>. L'unico
  multiplo di <math|b> così piccolo in valore assoluto è 0. Segue
  <math|r'=r>, e poi <math|q'=q> perché <math|b\<neq\>0>.

  <section|MCD: ciò che i divisori hanno in comune>

  I divisori positivi di 18 sono <math|1,2,3,6,9,18>; quelli di 12 sono
  <math|1,2,3,4,6,12>. I divisori comuni sono <math|1,2,3,6>. Il più grande è
  6.

  <\concetto|Massimo comun divisore>
    Il <strong|massimo comun divisore>, abbreviato MCD e scritto
    <math|gcd(a,b)>, è il massimo dei divisori comuni positivi di <math|a,b>,
    quando i due numeri non sono entrambi nulli.
  </concetto>

  Esiste perché 1 è un divisore comune e i divisori positivi di un numero non
  nullo sono finiti.

  I segni non cambiano i divisori positivi, dunque
  <math|gcd(a,b)=gcd(\|a\|,\|b\|)>. Inoltre <math|gcd(a,0)=\|a\|> per
  <math|a\<neq\>0>: tutti i divisori di <math|a> dividono anche 0. Due interi
  si chiamano <strong|coprimi> quando il loro MCD è 1.

  <section|Algoritmo di Euclide: conservare i divisori, ridurre i numeri>

  Elencare i divisori funziona per numeri piccoli. Per numeri grandi conviene
  cambiare la coppia senza cambiare i suoi divisori comuni.

  Se <math|a=q*b+r>, un divisore di <math|a,b> divide anche <math|r=a-q*b>.
  Viceversa, un divisore di <math|b,r> divide anche <math|a=q*b+r>. Le coppie
  <math|(a,b)> e <math|(b,r)> hanno quindi esattamente gli stessi divisori
  comuni:

  <\equation*>
    gcd(a,b)=gcd(b,r).
  </equation*>

  Questa uguaglianza è il motivo per cui funziona l'<strong|algoritmo di
  Euclide>. Partiamo dai valori assoluti, mettiamo il maggiore per primo e
  ripetiamo la divisione con resto.

  Per 45 e 17 otteniamo:

  <\equation*>
    45=2\<cdot\>17+11,<space|2em>17=1\<cdot\>11+6,
  </equation*>

  <\equation*>
    11=1\<cdot\>6+5,<space|2em>6=1\<cdot\>5+1,<space|2em>5=5\<cdot\>1+0.
  </equation*>

  Dopo la prima riga cerchiamo il MCD di 17 e 11; poi quello di 11 e 6;
  infine arriviamo a 1 e 0. I resti positivi diminuiscono:
  <math|11\<gtr\>6\<gtr\>5\<gtr\>1>. Non possono diminuire per sempre nei
  naturali, quindi il procedimento termina.

  Quando compare resto zero, il divisore dell'ultima divisione divide il
  numero precedente. Il MCD è dunque l'<strong|ultimo resto non nullo>. Qui è
  1: 45 e 17 sono coprimi. Se la prima divisione dà già resto zero, il MCD è
  il divisore di quella divisione: per esempio <math|gcd(18,6)=6>. Se uno dei
  due numeri di partenza è già zero, il MCD è subito il valore assoluto
  dell'altro.

  <figura|<image|assets/euclide.pdf|145.0mm|61.0mm||>|Nel rettangolo
  <math|45\<times\>17> togliamo prima due quadrati di lato 17, poi quadrati
  di lato 11, 6, 5 e 1. Le dimensioni rimaste seguono le divisioni
  dell'algoritmo.>

  <subsection|In sintesi>

  La <strong|divisione euclidea> produce un resto controllato. Il
  <strong|MCD> descrive il più grande divisore comune. L'<strong|algoritmo di
  Euclide> lo calcola conservando i divisori comuni e facendo diminuire i
  resti. Nel prossimo capitolo leggeremo le stesse divisioni al contrario: ne
  ricaveremo un'informazione nuova.

  <\verifica|4>
    <strong|1.> Trova quoziente e resto di <math|-29> diviso per 6. Per
    orientarti, cerca i due multipli consecutivi di 6 fra cui cade
    <math|-29>.

    <strong|2.> Calcola <math|gcd(84,30)> con Euclide. Spiega perché fermarsi
    alla prima divisione non basta.
  </verifica>

  <chapter|Bézout e fattorizzazione in primi>

  <\inbreve>
    Euclide ci ha dato un numero: il MCD. Ora scopriamo che quel numero si
    può costruire combinando i due interi iniziali. Questa è l'identità di
    Bézout: ci permetterà di capire perché i primi si comportano in modo
    speciale e perché la fattorizzazione è unica.
  </inbreve>

  <section|Identità di Bézout: costruire il MCD>

  Nel capitolo precedente abbiamo ottenuto <math|gcd(45,17)=1>. Possiamo
  ottenere proprio 1 moltiplicando 45 e 17 per coefficienti interi e sommando
  i risultati?

  Con coefficienti positivi non ci riusciremmo: i prodotti sarebbero troppo
  grandi. Ma possiamo sottrarre. Le divisioni di Euclide contengono già le
  sottrazioni necessarie.

  Partiamo dall'ultimo resto non nullo: <math|1=6-5>. Vogliamo eliminare, uno
  dopo l'altro, i numeri intermedi 6, 5 e 11, fino a lasciare solo 45 e 17.

  Dalla divisione <math|11=6+5> ricaviamo <math|5=11-6>. Sostituendo:

  <\equation*>
    1=6-(11-6)=2\<cdot\>6-11.
  </equation*>

  Ora usiamo <math|6=17-11>:

  <\equation*>
    1=2(17-11)-11=2\<cdot\>17-3\<cdot\>11.
  </equation*>

  Infine <math|11=45-2\<cdot\>17>, quindi

  <\equation*>
    1=2\<cdot\>17-3(45-2\<cdot\>17)=8\<cdot\>17-3\<cdot\>45.
  </equation*>

  Controlliamo: <math|8\<cdot\>17-3\<cdot\>45=136-135=1>. Abbiamo espresso il
  MCD come <strong|combinazione intera> dei numeri iniziali. Questo
  procedimento si chiama <strong|risalita di Euclide>.

  <\concetto|Identità di Bézout>
    Se <math|a,b> sono interi non entrambi nulli e <math|d=gcd(a,b)>,
    esistono interi <math|u,v> tali che

    <\equation*>
      d=u*a+v*b.
    </equation*>
  </concetto>

  Perché la risalita funziona sempre? Il primo resto è <math|a-q*b>, quindi è
  una combinazione di <math|a,b>. Il resto successivo si ottiene sottraendo
  un multiplo del primo da <math|b>: è ancora una loro combinazione.
  Ripetendo il ragionamento, ogni resto è una combinazione dei numeri
  iniziali. Lo è dunque anche l'ultimo resto non nullo, cioè il MCD. Se uno
  dei numeri iniziali è zero, l'identità si ottiene direttamente scegliendo
  un coefficiente uguale a 1 o <math|-1>.

  <section|Quali numeri possiamo ottenere combinando due interi?>

  Con <math|a=6> e <math|b=9>, ogni numero <math|6x+9y> è multiplo di 3. Non
  potremo mai ottenere 4. Possiamo invece ottenere 3, perché <math|3=-6+9>.
  Moltiplicando questa uguaglianza otteniamo tutti i multipli di 3: per
  esempio <math|15=-5\<cdot\>6+5\<cdot\>9>.

  La stessa idea vale in generale. Se <math|d=gcd(a,b)>, ogni <math|a*x+b*y>
  è multiplo di <math|d>, perché <math|d> divide entrambi gli addendi.
  Viceversa, Bézout scrive <math|d=u*a+v*b>; moltiplicando per qualsiasi
  intero <math|k> otteniamo <math|k*d=(k*u)a+(k*v)b>.

  Dunque <strong|le combinazioni intere di <math|a,b> sono esattamente i
  multipli del loro MCD>. È questo il significato di Bézout che useremo nelle
  equazioni diofantee.

  Un'altra conseguenza precisa il ruolo del MCD: ogni divisore comune di
  <math|a,b> divide <math|d>. Basta applicare la proprietà delle combinazioni
  a <math|d=u*a+v*b>. Non sappiamo soltanto che quel divisore è più piccolo
  del MCD: sappiamo che lo divide.

  <section|Lemma di Euclide: quando possiamo togliere un fattore>

  Sapere che un numero divide un prodotto non significa che divida uno dei
  fattori. Per esempio, <math|6\<mid\>4\<cdot\>3>, ma 6 non divide né 4 né 3.

  Vediamo che cosa cambia se i numeri sono coprimi. Supponiamo di sapere che
  <math|3\<mid\>5t>. Vogliamo arrivare a <math|3\<mid\>t>, eliminando il
  fattore 5. Osserviamo che <math|1=2\<cdot\>3-5>. Moltiplicando per <math|t>
  otteniamo

  <\equation*>
    t=2\<cdot\>3t-5t.
  </equation*>

  Il primo termine è multiplo di 3 perché contiene 3. Il secondo lo è per
  ipotesi. Anche la loro differenza è quindi multipla di 3: quella differenza
  è proprio <math|t>.

  La possibilità di scrivere 1 usando 3 e 5 viene da Bézout, perché
  <math|gcd(3,5)=1>. Possiamo perciò ripetere questa idea per qualsiasi
  coppia coprima.

  <\anatomia|Perché cercare Bézout>
    Vogliamo dimostrare <math|r\<mid\>t>. Una strada è scrivere <math|t>
    usando quantità che sappiamo essere multiple di <math|r>. Conosciamo già
    due quantità adatte: <math|r*t>, per costruzione, e <math|s*t>, per
    ipotesi. Per combinarle fino a ottenere <math|t>, ci serve un'uguaglianza
    che combini <math|r,s> fino a ottenere 1. È esattamente ciò che offre
    Bézout quando <math|r,s> sono coprimi.
  </anatomia>

  <strong|Lemma di Euclide.> Se <math|gcd(r,s)=1> e <math|r\<mid\>s*t>,
  allora <math|r\<mid\>t>.

  <em|Dimostrazione.> Per Bézout esistono interi <math|u,v> con
  <math|u*r+v*s=1>. Moltiplichiamo per <math|t>:

  <\equation*>
    t=u*r*t+v*s*t.
  </equation*>

  Il termine <math|u*r*t=r(u*t)> è multiplo di <math|r>. Anche <math|v*s*t>
  lo è: l'ipotesi dice <math|s*t=r*k> per un intero <math|k>, quindi
  <math|v*s*t=r(v*k)>. La somma è multipla di <math|r>, dunque
  <math|r\<mid\>t>.

  <section|Numeri primi e fattorizzazione unica>

  Un intero <math|p\<geq\>2> è <strong|primo> se i suoi unici divisori
  positivi sono 1 e <math|p>. Un numero <math|n\<geq\>2> che non è primo è
  <strong|composto>: possiamo scriverlo <math|n=a*b> con
  <math|1\<less\>a,b\<less\>n>. Il numero 1 non è primo.

  Il lemma appena dimostrato spiega la proprietà decisiva dei primi:
  <strong|se un primo divide un prodotto, divide almeno uno dei fattori>.
  Infatti, se <math|p\<mid\>a*b> e <math|p\<nmid\>a>, allora
  <math|gcd(p,a)=1>: l'unico altro divisore positivo possibile sarebbe
  <math|p>. Il lemma dà quindi <math|p\<mid\>b>.

  <strong|Teorema fondamentale dell'aritmetica.> Ogni intero <math|n\<geq\>2>
  si scrive come prodotto di primi. I fattori sono unici, salvo il loro
  ordine.

  L'<em|esistenza> è stata dimostrata con l'induzione forte nel capitolo 1:
  un numero composto si divide in fattori più piccoli, ai quali applichiamo
  l'ipotesi induttiva. Ora abbiamo gli strumenti per affrontare la seconda
  domanda: perché due scomposizioni devono dare gli stessi primi?

  Per l'<em|unicità> dobbiamo confrontare due fattorizzazioni, non
  semplicemente trovarne una. Supponiamo

  <\equation*>
    p<rsub|1>p<rsub|2>\<cdots\>p<rsub|r>=q<rsub|1>q<rsub|2>\<cdots\>q<rsub|s>.
  </equation*>

  Il primo <math|p<rsub|1>> divide il prodotto a destra. Applicando
  ripetutamente la proprietà dei primi, divide uno dei <math|q<rsub|j>>. Ma
  <math|q<rsub|j>> è primo, quindi <math|p<rsub|1>=q<rsub|j>>. Possiamo
  mettere quei fattori per primi e cancellarli.

  Ripetiamo sulle fattorizzazioni rimaste: ogni volta abbiniamo due primi
  uguali. Non possono restare primi soltanto da una parte, perché allora il
  loro prodotto dovrebbe essere 1, mentre ogni primo è almeno 2. Quindi le
  due liste contengono esattamente gli stessi primi, con le stesse
  ripetizioni.

  <section|Divisori e mcm: leggere gli esponenti>

  La fattorizzazione unica rende i divisori facili da descrivere. Per esempio
  <math|72=2<rsup|3>3<rsup|2>>. Un divisore positivo deve avere la forma
  <math|2<rsup|i>3<rsup|j>>, con <math|0\<leq\>i\<leq\>3> e
  <math|0\<leq\>j\<leq\>2>. Possiamo scegliere <math|i> in quattro modi e
  <math|j> in tre: i divisori positivi sono <math|4\<cdot\>3=12>.

  <figura|<image|assets/divisori72.pdf|117.5mm|62.5mm||>|Ogni punto
  corrisponde a una scelta degli esponenti: andando a destra moltiplichiamo
  per 2, salendo moltiplichiamo per 3. La griglia contiene tutti i dodici
  divisori positivi di 72.>

  In generale, per <math|N=p<rsub|1><rsup|\<alpha\><rsub|1>>\<cdots\>p<rsub|k><rsup|\<alpha\><rsub|k>>>
  con primi distinti, il numero dei divisori positivi è
  <math|(\<alpha\><rsub|1>+1)\<cdots\>(\<alpha\><rsub|k>+1)>. Per <math|N=1>
  c'è un solo divisore positivo, 1.

  Il <strong|minimo comune multiplo>, scritto <math|<math-up|mcm>(a,b)> per
  <math|a,b\<gtr\>0>, è il più piccolo intero positivo multiplo di entrambi.
  Confrontiamo

  <\equation*>
    72=2<rsup|3>3<rsup|2>,<space|2em>90=2\<cdot\>3<rsup|2>\<cdot\>5.
  </equation*>

  Un divisore comune può usare soltanto i fattori presenti in entrambi: per
  ogni primo scegliamo l'esponente <em|minore>. Otteniamo
  <math|gcd(72,90)=2\<cdot\>3<rsup|2>=18>. Un multiplo comune deve contenere
  abbastanza fattori per entrambi: scegliamo l'esponente <em|maggiore>.
  Otteniamo <math|<math-up|mcm>(72,90)=2<rsup|3>3<rsup|2>5=360>.

  Queste regole valgono in generale, inserendo esponente zero per i primi
  assenti. Poiché minimo e massimo di due esponenti sommano agli esponenti
  iniziali, segue

  <\equation*>
    gcd(a,b)\<cdot\><math-up|mcm>(a,b)=a*b<space|2em>(a,b\<gtr\>0).
  </equation*>

  <subsection|Per proseguire: i fattori primi in un fattoriale>

  Quante volte compare 2 nella fattorizzazione di <math|19!>? I nove multipli
  di 2 fra 1 e 19 danno almeno un fattore ciascuno. I quattro multipli di 4
  ne danno uno ulteriore; i due multipli di 8 un altro; il multiplo di 16
  ancora uno. Il totale è <math|9+4+2+1=16>.

  <figura|<image|assets/legendre.pdf|155.0mm|50.0mm||>|Ogni colonna conta i
  fattori 2 di un numero; ogni riga conta i multipli di una potenza di 2. Le
  stesse sedici unità vengono contate in due modi.>

  Per un primo <math|p>, lo stesso conteggio dà la <strong|formula di
  Legendre>:

  <\equation*>
    v<rsub|p>(n!)=<big|sum><rsub|j\<geq\>1><around*|\<lfloor\>|<frac|n|p<rsup|j>>|\<rfloor\>>.
  </equation*>

  Qui <math|v<rsub|p>> indica l'esponente di <math|p> nella fattorizzazione e
  <math|\<lfloor\>x\<rfloor\>> il più grande intero non maggiore di <math|x>.
  La somma si ferma quando <math|p<rsup|j>\<gtr\>n>, perché da lì i termini
  sono zero.

  <subsection|In sintesi>

  <strong|Bézout> descrive quali numeri possiamo costruire come combinazioni
  intere. Il <strong|lemma di Euclide> ci permette di togliere un fattore
  coprimo. Applicato ai primi, rende possibile confrontare le fattorizzazioni
  e dimostrarne l'unicità. Gli esponenti primi diventano poi un modo per
  leggere divisori, MCD e mcm.

  <\verifica|5>
    <strong|1.> Trova un'identità di Bézout per 30 e 18. Usala per decidere
    se una combinazione intera di questi due numeri può valere 7 oppure 12.

    <strong|2.> Quanti divisori positivi ha 180? Calcola anche
    <math|gcd(180,48)> e <math|<math-up|mcm>(180,48)> spiegando la scelta
    degli esponenti.
  </verifica>

  <chapter|Equazioni diofantee>

  <\inbreve>
    Ora usiamo MCD e Bézout per risolvere equazioni nelle quali sono ammesse
    soltanto soluzioni intere. Impareremo a separare tre domande: esistono
    soluzioni? Come ne troviamo una? Come siamo sicuri di averle trovate
    tutte?
  </inbreve>

  <section|Che cosa cambia se le soluzioni devono essere intere?>

  Cerchiamo di ottenere 15 combinando gruppi da 6 e gruppi da 9. Scriviamo

  <\equation*>
    6x+9y=15.
  </equation*>

  La coppia <math|(x,y)=(1,1)> funziona. Anche <math|(4,-1)> funziona:
  <math|24-9=15>. Il segno negativo è ammesso se stiamo cercando soluzioni
  intere; se il problema parla di oggetti da acquistare, dovremo invece
  aggiungere <math|x,y\<geq\>0>.

  Una <strong|equazione diofantea> richiede soluzioni intere. Qui studiamo
  soprattutto le equazioni <strong|lineari in due incognite>, della forma
  <math|a*x+b*y=c>, con coefficienti interi.

  La richiesta di interezza cambia il problema. L'equazione <math|6x+9y=14>
  ha soluzioni reali, per esempio <math|(14/6,0)>, ma non ha soluzioni
  intere: il membro sinistro è sempre multiplo di 3, il destro no. Conviene
  verificare questo ostacolo prima di cercare una soluzione.

  <section|Esistenza delle soluzioni: il criterio del MCD>

  Poniamo <math|d=gcd(a,b)>, supponendo <math|a,b> non entrambi nulli. Dal
  capitolo precedente sappiamo esattamente quali numeri si possono scrivere
  come <math|a*x+b*y>: i multipli di <math|d>.

  <\concetto|Criterio per le diofantee lineari>
    L'equazione <math|a*x+b*y=c> ha soluzioni intere se e solo se

    <\equation*>
      gcd(a,b)\<mid\>c.
    </equation*>
  </concetto>

  Ricostruiamo le due direzioni. Se una soluzione esiste, <math|d> divide
  <math|a> e <math|b>, quindi divide <math|a*x+b*y=c>. Questa è la
  <strong|necessità>: una soluzione deve rispettare la condizione.

  Se invece <math|d\<mid\>c>, scriviamo <math|c=k*d>. Bézout fornisce
  <math|a*u+b*v=d>. Moltiplichiamo per <math|k>:

  <\equation*>
    a(k*u)+b(k*v)=k*d=c.
  </equation*>

  Abbiamo costruito una soluzione: <math|x<rsub|0>=k*u>,
  <math|y<rsub|0>=k*v>. Questa è la <strong|sufficienza>: la condizione basta
  davvero a garantire l'esistenza.

  Per <math|6x+9y=15>, il MCD è 3 e <math|15=5\<cdot\>3>. Dall'identità
  <math|3=-6+9> otteniamo <math|15=-5\<cdot\>6+5\<cdot\>9>: quindi
  <math|(-5,5)> è una soluzione. La coppia più piccola <math|(1,1)> era
  visibile per tentativi; Bézout offre un metodo anche quando non la vediamo.

  <section|Da una soluzione a tutte le soluzioni>

  Trovare una coppia non chiude il problema. Vogliamo una descrizione che
  comprenda tutte le soluzioni e non ne aggiunga di false.

  Riprendiamo <math|6x+9y=15> e dividiamo per il MCD 3:

  <\equation*>
    2x+3y=5.
  </equation*>

  Conosciamo <math|(1,1)>. Se <math|(x,y)> è un'altra soluzione, sottraiamo
  <math|2\<cdot\>1+3\<cdot\>1=5> dall'equazione:

  <\equation*>
    2(x-1)+3(y-1)=0,<space|1em><text|cioè><space|1em>2(x-1)=-3(y-1).
  </equation*>

  La parte destra è multipla di 3, quindi 3 divide <math|2(x-1)>. Poiché 3 e
  2 sono coprimi, il lemma di Euclide dà <math|3\<mid\>(x-1)>. Esiste dunque
  un intero <math|t> con <math|x-1=3t>.

  Sostituiamo: <math|2\<cdot\>3t=-3(y-1)>. Dividendo per <math|-3> otteniamo
  <math|y-1=-2t>. Tutte le soluzioni devono perciò avere la forma

  <\equation*>
    x=1+3t,<space|2em>y=1-2t,<space|2em>t\<in\>\<bbb-Z\>.
  </equation*>

  Resta il controllo nella direzione opposta. Sostituendo queste espressioni
  troviamo <math|2(1+3t)+3(1-2t)=5>: i termini con <math|t> si cancellano.
  Quindi ogni intero <math|t> dà effettivamente una soluzione. Non abbiamo
  perso né aggiunto coppie.

  Il parametro <math|t> conta i passi dalla soluzione iniziale: aumentarlo di
  1 aumenta <math|x> di 3 e diminuisce <math|y> di 2. Il valore di
  <math|2x+3y> rimane uguale perché il guadagno <math|2\<cdot\>3> è
  compensato dalla perdita <math|3\<cdot\>2>.

  La figura mostra lo stesso passo su una retta parallela: il termine noto è
  9 anziché 5.

  <figura|<image|assets/reticolo.pdf|140.0mm|75.0mm||>|Qui vediamo
  l'equazione <math|2x+3y=9>: i punti <math|(0,3)>, <math|(3,1)> e
  <math|(6,-1)> seguono lo stesso passo <math|(3,-2)>. Cambiare il termine
  noto sposta la retta; i coefficienti determinano il passo fra le
  soluzioni.>

  <subsection|La formula generale e il suo motivo>

  Per <math|a*x+b*y=c> poniamo <math|d=gcd(a,b)>, <math|A=a/d> e
  <math|B=b/d>. I numeri <math|A,B> sono coprimi: un loro divisore comune
  maggiore di 1 produrrebbe un divisore comune di <math|a,b> maggiore di
  <math|d>.

  Fissata una soluzione <math|(x<rsub|0>,y<rsub|0>)>, sottrarre due soluzioni
  dà

  <\equation*>
    A(x-x<rsub|0>)=-B(y-y<rsub|0>).
  </equation*>

  Se <math|B\<neq\>0>, il lemma di Euclide impone
  <math|B\<mid\>(x-x<rsub|0>)>. Scriviamo <math|x-x<rsub|0>=B*t>; sostituendo
  e dividendo per <math|B> troviamo <math|y-y<rsub|0>=-A*t>. Come
  nell'esempio, il controllo per sostituzione dimostra anche il viceversa.

  Otteniamo così tutte le soluzioni:

  <\equation*>
    x=x<rsub|0>+<frac|b|d>t,<space|2em>y=y<rsub|0>-<frac|a|d>t,<space|2em>t\<in\>\<bbb-Z\>.
  </equation*>

  Se <math|b=0> e <math|a\<neq\>0>, basta risolvere <math|a*x=c>: quando
  possibile, <math|x> è fissato e <math|y> è un intero qualsiasi. La formula
  descrive anche questo caso, perché <math|a/d=\<pm\>1>. Se <math|a=b=0>, il
  MCD non è definito secondo la nostra convenzione: per <math|c=0> ogni
  coppia funziona, per <math|c\<neq\>0> nessuna.

  <section|Aggiungere vincoli: il problema diventa un intervallo>

  Se cerchiamo soluzioni non negative di <math|6x+9y=15>, usiamo la
  parametrizzazione già trovata. Le condizioni diventano

  <\equation*>
    1+3t\<geq\>0,<space|2em>1-2t\<geq\>0.
  </equation*>

  La prima richiede <math|t\<geq\>-1/3>, quindi <math|t\<geq\>0> perché
  <math|t> è intero. La seconda richiede <math|t\<leq\>1/2>, quindi
  <math|t\<leq\>0>. L'unica possibilità è <math|t=0>: l'unica soluzione non
  negativa è <math|(1,1)>.

  Ogni vincolo su <math|x,y> diventa così un vincolo sullo stesso parametro.
  Risolviamo le disuguaglianze, prendiamo la loro intersezione e conserviamo
  soltanto gli interi. Se dividiamo una disuguaglianza per un numero
  negativo, dobbiamo invertire il verso, come nel passaggio
  <math|-2t\<geq\>-1> che dà <math|t\<leq\>1/2>.

  <section|Per proseguire: differenze di quadrati>

  La parola \Sdiofantea\T non significa necessariamente \Slineare\T. Per
  <math|x<rsup|2>-y<rsup|2>=15> serve un'altra idea: usare la scomposizione

  <\equation*>
    x<rsup|2>-y<rsup|2>=(x+y)(x-y).
  </equation*>

  <figura|<image|assets/quadrati.pdf|150.0mm|56.2mm||>|Per
  <math|x\<geq\>y\<geq\>0>, l'area rimasta dopo aver tolto il quadrato di
  lato <math|y> si ricompone in un rettangolo di lati <math|x+y> e
  <math|x-y>. L'identità algebrica vale per tutti gli interi.>

  Poniamo <math|u=x+y>, <math|v=x-y>. L'equazione diventa <math|u*v=15>, e
  sommando o sottraendo ricaviamo

  <\equation*>
    x=<frac|u+v|2>,<space|2em>y=<frac|u-v|2>.
  </equation*>

  Per ottenere interi, <math|u,v> devono avere la stessa parità. Per 15 tutte
  le coppie di fattori sono dispari. Le coppie positive
  <math|(15,1),(5,3),(3,5),(1,15)> danno <math|(8,7),(4,1),(4,-1),(8,-7)>. Le
  coppie di fattori negativi danno le quattro coppie opposte: in totale otto
  soluzioni.

  Per <math|x<rsup|2>-y<rsup|2>=26>, invece, nessuna coppia di fattori ha la
  stessa parità: due dispari darebbero un prodotto dispari, due pari un
  multiplo di 4. Il numero 26 non è né l'uno né l'altro. Non ci sono
  soluzioni intere.

  Lo stesso procedimento vale per ogni termine noto non nullo, prendendo
  tutti i divisori interi, anche negativi. Per termine noto zero si ha
  direttamente <math|x=y> oppure <math|x=-y>.

  <subsection|In sintesi>

  Per una <strong|diofantea lineare>, il MCD decide l'esistenza, Bézout
  costruisce una soluzione e la differenza fra due soluzioni ci permette di
  trovarle tutte. I vincoli si applicano soltanto dopo, al parametro. Per
  altre diofantee cerchiamo invece una trasformazione adatta, come il
  prodotto di due fattori nella differenza di quadrati.

  <\verifica|6>
    <strong|1.> Risolvi <math|4x+6y=14> negli interi e poi con
    <math|x,y\<geq\>0>. Puoi partire dalla soluzione <math|(2,1)>.

    <strong|2.> Trova tutte le soluzioni intere di
    <math|x<rsup|2>-y<rsup|2>=8>. Spiega perché non puoi usare tutte le
    coppie di fattori senza controllarne la parità.
  </verifica>

  <chapter|Congruenze e classi>

  <\inbreve>
    Con le diofantee cercavamo interi precisi. Ora impariamo a conservare
    soltanto l'informazione che ci interessa: il resto di una divisione.
    Dalle congruenze arriveremo alle classi, nuovi oggetti sui quali potremo
    fare somme e prodotti.
  </inbreve>

  <section|Congruenze: quando due interi hanno lo stesso resto>

  Dividiamo 2, 7, 12 e 17 per 5. I quozienti cambiano, ma il resto è sempre
  2. Se il nostro problema riguarda soltanto quel resto, possiamo trattare
  questi quattro numeri nello stesso modo.

  Che cosa hanno in comune? Si ottengono l'uno dall'altro aggiungendo
  multipli di 5. Per esempio <math|17-2=15=3\<cdot\>5>. Anche <math|-3>
  appartiene alla stessa famiglia, perché <math|-3=(-1)\<cdot\>5+2>.

  <\concetto|Congruenza modulo n>
    Fissato un intero <math|n\<geq\>1>, diciamo che <math|a> e <math|b> sono
    <strong|congrui modulo <math|n>> quando hanno lo stesso resto dividendo
    per <math|n>. Scriviamo <math|a\<equiv\>b<pmod|n>>. Il numero <math|n> si
    chiama <strong|modulo>.

    La forma più utile per ragionare è:

    <\equation*>
      a\<equiv\>b<pmod|n><space|1em>\<Leftrightarrow\><space|1em>n\<mid\>(a-b).
    </equation*>
  </concetto>

  Se i resti sono uguali, sottrarre le divisioni elimina il resto e lascia un
  multiplo di <math|n>. Viceversa, scrivendo <math|a=q<rsub|1>n+r<rsub|1>> e
  <math|b=q<rsub|2>n+r<rsub|2>>, se <math|n\<mid\>(a-b)> allora
  <math|n\<mid\>(r<rsub|1>-r<rsub|2>)>. La differenza dei resti ha valore
  assoluto minore di <math|n>: deve essere zero. Questa è la stessa idea
  usata nell'unicità della divisione euclidea.

  <strong|Una congruenza conserva un'informazione precisa, non tutte le
  informazioni.> Scrivere <math|17\<equiv\>2<pmod|5>> non significa
  <math|17=2>. Significa che dividendo per 5 non distinguiamo i loro resti.

  <section|Classi di congruenza: una famiglia diventa un oggetto>

  Raccogliamo tutti gli interi che hanno resto 2 modulo 5:

  <\equation*>
    [2]<rsub|5>=<around|{|\<ldots\>,-8,-3,2,7,12,17,\<ldots\>|}>.
  </equation*>

  Questo insieme è la <strong|classe di congruenza> di 2 modulo 5. Possiamo
  indicarlo anche con <math|[7]<rsub|5>> o <math|[17]<rsub|5>>: la famiglia è
  la stessa. Ciascuno di questi numeri è un <strong|rappresentante> della
  classe.

  <\concetto|Classe di congruenza>
    La classe di <math|a> modulo <math|n> raccoglie tutti gli interi congrui
    ad <math|a>:

    <\equation*>
      [a]<rsub|n>=<around|{|a+k*n:k\<in\>\<bbb-Z\>|}>.
    </equation*>
  </concetto>

  Per la divisione euclidea ogni intero ha esattamente un resto fra
  <math|0,1,\<ldots\>,n-1>. Ci sono quindi esattamente <math|n> classi:
  <math|[0]<rsub|n>,[1]<rsub|n>,\<ldots\>,[n-1]<rsub|n>>. Il loro insieme si
  scrive <math|\<bbb-Z\>/n\<bbb-Z\>>.

  <figura|<image|assets/spirale5.pdf|99.9mm|97.8mm||>|Gli interi sullo stesso
  raggio hanno lo stesso resto modulo 5. Ogni raggio rappresenta una classe;
  cambiare il numero lungo quel raggio cambia il rappresentante, non la
  classe.>

  La distinzione da conservare è questa: <math|2> è un intero,
  <math|[2]<rsub|5>> è un insieme di interi, <math|\<bbb-Z\>/5\<bbb-Z\>> è
  l'insieme delle cinque classi. Ogni classe contiene infiniti interi, ma il
  numero di classi è finito. Modulo 1 c'è una sola classe, perché tutti gli
  interi hanno resto 0.

  <section|Relazioni di equivalenza: l'idea generale dietro le classi>

  Il passaggio appena compiuto si può ripetere anche quando non ci sono
  resti. Scegliamo una relazione che dica quando due oggetti vengono
  considerati equivalenti per lo scopo che ci interessa.

  Una relazione <math|\<sim\>> su un insieme <math|X> è una <strong|relazione
  di equivalenza> se soddisfa tre proprietà: ogni elemento è equivalente a sé
  stesso (<strong|riflessività>); se <math|x\<sim\>y>, allora
  <math|y\<sim\>x> (<strong|simmetria>); se <math|x\<sim\>y> e
  <math|y\<sim\>z>, allora <math|x\<sim\>z> (<strong|transitività>).

  La congruenza le soddisfa: <math|a-a=0>; cambiare segno a un multiplo
  lascia un multiplo; sommare <math|a-b> e <math|b-c> dà <math|a-c>. La
  definizione tramite divisibilità rende quindi verificabili tutte e tre le
  proprietà.

  La classe <math|[x]> raccoglie tutti gli elementi equivalenti a <math|x>.
  Perché queste classi non si sovrappongono in modo confuso? Se <math|z>
  appartiene sia a <math|[x]> sia a <math|[y]>, abbiamo <math|x\<sim\>z> e
  <math|z\<sim\>y>, dunque <math|x\<sim\>y>. Ogni elemento equivalente a
  <math|x> è allora equivalente a <math|y>, e viceversa. Le classi
  coincidono.

  Quindi <strong|due classi o coincidono o sono disgiunte>. Inoltre ogni
  elemento appartiene alla propria classe. Le classi formano così una
  <strong|partizione>: pezzi non vuoti, separati, che coprono tutto
  l'insieme. Viceversa, una partizione definisce un'equivalenza dicendo che
  due elementi sono equivalenti quando stanno nello stesso pezzo.

  L'insieme delle classi si chiama <strong|insieme quoziente> e si scrive
  <math|X/\<sim\>>. La funzione <math|x\<mapsto\>[x]> si chiama
  <strong|proiezione canonica>: manda ogni oggetto nella sua classe.

  <section|Fare somme e prodotti con le classi>

  Vogliamo poter calcolare usando soltanto le classi. Modulo 5, per esempio,
  sommare la classe di 7 e quella di 9 dovrebbe dare la classe di
  <math|7+9=16>, cioè la classe di 1.

  Definiamo perciò

  <\equation*>
    [a]<rsub|n>+[b]<rsub|n>=[a+b]<rsub|n>,<space|2em>[a]<rsub|n>[b]<rsub|n>=[a*b]<rsub|n>.
  </equation*>

  Ma potevamo scegliere 2 al posto di 7 e 4 al posto di 9. La somma sarebbe 6
  anziché 16. Va bene, perché 6 e 16 appartengono alla stessa classe modulo
  5. È la <em|classe del risultato> che deve rimanere uguale.

  <\anatomia|Buona definizione: la scelta del nome non deve cambiare
  l'oggetto>
    Una formula che usa rappresentanti definisce un'operazione sulle classi
    soltanto se cambiarli non cambia la classe del risultato. Questa
    proprietà si chiama <strong|buona definizione>.

    Supponiamo <math|a\<equiv\>a'<pmod|n>> e <math|b\<equiv\>b'<pmod|n>>. La
    differenza fra le due somme è <math|(a-a')+(b-b')>: è multipla di
    <math|n>, quindi le somme sono congrue.

    Per i prodotti cerchiamo di far comparire le differenze che conosciamo.
    Aggiungiamo e sottraiamo <math|a'b>:

    <\equation*>
      a*b-a'b'=(a-a')b+a'(b-b').
    </equation*>

    Ogni addendo è multiplo di <math|n>. Anche i prodotti appartengono dunque
    alla stessa classe. Le due operazioni sono ben definite.
  </anatomia>

  Questo controllo giustifica una regola pratica: <strong|possiamo ridurre i
  numeri prima di sommarli o moltiplicarli>. Per esempio,

  <\equation*>
    85\<cdot\>38\<equiv\>1\<cdot\>3=3<pmod|7>.
  </equation*>

  Vale anche per le potenze intere non negative, che sono prodotti ripetuti.
  Dato che <math|2<rsup|5>=32\<equiv\>-1<pmod|33>>, segue
  <math|2<rsup|10>\<equiv\>(-1)<rsup|2>=1<pmod|33>>.

  <subsection|Un'applicazione: i criteri di divisibilità>

  Il numero 345 significa <math|3\<cdot\>10<rsup|2>+4\<cdot\>10+5>. Modulo 3
  e modulo 9 vale <math|10\<equiv\>1>, quindi ogni potenza di 10 può essere
  sostituita con 1: il numero ha lo stesso resto della somma delle sue cifre.
  Perciò 345 è divisibile per 3, dato che <math|3+4+5=12> lo è, ma non per 9.

  Modulo 11, invece, <math|10\<equiv\>-1>. Le potenze di 10 alternano 1 e
  <math|-1>: il criterio usa la somma delle cifre a segni alterni. Per 345
  otteniamo <math|3-4+5=4>, dunque non è divisibile per 11. Gli stessi
  ragionamenti funzionano con qualsiasi numero di cifre.

  <section|Per proseguire: anche i razionali sono classi>

  Le scritture <math|1/2>, <math|2/4> e <math|3/6> rappresentano lo stesso
  razionale. Possiamo interpretarle come coppie diverse
  <math|(1,2),(2,4),(3,6)> e identificarle con la relazione

  <\equation*>
    (a,b)\<sim\>(c,d)<space|1em>\<Leftrightarrow\><space|1em>a*d=b*c,<space|2em>b,d\<neq\>0.
  </equation*>

  È un'equivalenza. Riflessività e simmetria seguono dall'uguaglianza. Per la
  transitività, da <math|a*d=b*c> e <math|c*f=d*e> otteniamo
  <math|a*d*f=b*c*f=b*d*e>; cancellando il denominatore non nullo <math|d>,
  resta <math|a*f=b*e>.

  <figura|<image|assets/frazioni.pdf|105.8mm|63.0mm||>|Il punto di coordinate
  <math|(b,a)> rappresenta la frazione <math|a/b>. Le coppie equivalenti
  stanno sulla stessa retta per l'origine; consideriamo soltanto i punti con
  <math|b\<neq\>0>.>

  Un razionale è una classe di queste coppie. Le operazioni usuali diventano

  <\equation*>
    [(a,b)]+[(c,d)]=[(a*d+b*c,b*d)],
  </equation*>

  <\equation*>
    [(a,b)][(c,d)]=[(a*c,b*d)].
  </equation*>

  Anche qui occorre la buona definizione. Se <math|a*b'=a'b> e
  <math|c*d'=c'd>, allora <math|a*c*b'd'=a'c'b*d>: i prodotti rappresentano
  la stessa frazione. Per la somma, sviluppando e usando le stesse due
  uguaglianze otteniamo <math|(a*d+b*c)b'd'=(a'd'+b'c')b*d>. Anche la somma è
  indipendente dai rappresentanti.

  Una regola come \Sprendi il numeratore\T, invece, non è una funzione sui
  razionali: darebbe 1 usando <math|1/2> e 2 usando <math|2/4>. Lo stesso
  oggetto avrebbe due immagini diverse.

  <subsection|In sintesi>

  Una <strong|congruenza> confronta i resti. Una <strong|classe> raccoglie
  gli interi con lo stesso resto; un <strong|quoziente> raccoglie le classi.
  La <strong|buona definizione> permette di calcolare con questi nuovi
  oggetti senza dipendere dal rappresentante scelto. Nel prossimo capitolo
  useremo questi calcoli per risolvere equazioni modulari.

  <\verifica|7>
    <strong|1.> Scrivi tre rappresentanti diversi di <math|[-2]<rsub|7>>,
    scegliendo anche il resto fra 0 e 6. Calcola poi
    <math|[12]<rsub|7>+[17]<rsub|7>> e <math|[12]<rsub|7>[17]<rsub|7>>.

    <strong|2.> Modulo 5, la regola \Salla classe di <math|a> associa la
    classe di <math|a+1>\T è ben definita? E la regola \Salla classe di
    <math|a> associa l'intero <math|a+1>\T? Spiega la differenza.
  </verifica>

  <chapter|Congruenze lineari e teorema cinese>

  <\inbreve>
    Sappiamo sommare e moltiplicare le classi. Ma possiamo anche dividere? La
    risposta ci porterà agli inversi modulari e alle congruenze lineari. Poi
    combineremo informazioni su resti diversi attraverso il teorema cinese.
  </inbreve>

  <section|Inversi modulari: che cosa significa dividere?>

  L'equazione <math|3x=1> non ha una soluzione intera. La congruenza
  <math|3x\<equiv\>1<pmod|7>> invece sì: <math|x=5>, perché
  <math|3\<cdot\>5=15=2\<cdot\>7+1>.

  Modulo 7, moltiplicare per 5 annulla l'effetto di moltiplicare per 3: il
  prodotto dei due fattori è congruo a 1. Diciamo che <math|[5]<rsub|7>> è
  l'<strong|inverso moltiplicativo> di <math|[3]<rsub|7>>.

  Per <math|n\<geq\>2>, la classe <math|[a]<rsub|n>> è <strong|invertibile>
  se esiste una classe <math|[u]<rsub|n>> tale che
  <math|[a]<rsub|n>[u]<rsub|n>=[1]<rsub|n>>. In termini di congruenze,
  cerchiamo <math|a*u\<equiv\>1<pmod|n>>.

  Questa richiesta equivale a scrivere <math|a*u+n*v=1> per qualche intero
  <math|v>. Ritroviamo Bézout: una classe è invertibile esattamente quando

  <\equation*>
    gcd(a,n)=1.
  </equation*>

  Se esiste l'inverso, ogni divisore comune di <math|a,n> divide
  <math|a*u+n*v=1>, quindi il MCD è 1. Viceversa, se il MCD è 1, Bézout
  costruisce proprio un'uguaglianza <math|a*u+n*v=1>, e riducendola modulo
  <math|n> troviamo l'inverso <math|[u]<rsub|n>>.

  L'inverso è unico come classe. Se <math|a*u\<equiv\>1> e
  <math|a*v\<equiv\>1> nello stesso modulo, allora
  <math|u\<equiv\>u(a*v)\<equiv\>(u*a)v\<equiv\>v>. Due rappresentanti
  diversi possono quindi indicare lo stesso inverso, ma non esistono due
  classi inverse diverse.

  Per trovarlo possiamo usare la risalita di Euclide. L'identità già ottenuta
  <math|8\<cdot\>17-3\<cdot\>45=1> dice che l'inverso di 17 modulo 45 è 8.
  Per numeri piccoli basta anche cercare un multiplo con resto 1, come
  <math|3\<cdot\>5=15> modulo 7.

  <figura|<image|assets/tabelle.pdf|140.0mm|53.8mm||>|Nelle tabelline modulo
  5 e modulo 6, gli 1 cerchiati segnalano le coppie di inversi. Modulo 6
  alcune classi non nulle non hanno inverso: nelle loro righe non compare 1.>

  <section|Cancellazione: quando il modulo deve cambiare>

  Negli interi, da <math|2x=2y> possiamo concludere <math|x=y>. Nelle
  congruenze serve attenzione. Modulo 6 abbiamo
  <math|2\<cdot\>1\<equiv\>2\<cdot\>4>, perché 2 e 8 hanno lo stesso resto.
  Ma <math|1\<nequiv\>4<pmod|6>>.

  Se il fattore è invertibile, possiamo moltiplicare entrambi i membri per il
  suo inverso e cancellarlo mantenendo il modulo. Se non lo è, la
  cancellazione conserva meno informazione.

  Poniamo <math|d=gcd(c,n)>. Dalla definizione di congruenza:

  <\equation*>
    c*x\<equiv\>c*y<pmod|n><space|1em>\<Leftrightarrow\><space|1em>n\<mid\>c(x-y).
  </equation*>

  Dividendo il divisore e il numero da dividere per <math|d>, la condizione
  diventa <math|(n/d)\<mid\>(c/d)(x-y)>. I numeri <math|n/d,c/d> sono
  coprimi; per il lemma di Euclide equivale a <math|(n/d)\<mid\>(x-y)>.
  Abbiamo dimostrato la regola:

  <\equation*>
    c*x\<equiv\>c*y<pmod|n><space|1em>\<Leftrightarrow\><space|1em>x\<equiv\>y<pmod|n/d>.
  </equation*>

  Nell'esempio, cancellare 2 riduce il modulo da 6 a 3: infatti
  <math|1\<equiv\>4<pmod|3>>. Il modulo rimane lo stesso soltanto se
  <math|d=1>.

  <section|Congruenze lineari: una diofantea sui resti>

  Consideriamo <math|a*x\<equiv\>b<pmod|n>>. Per definizione <math|a*x-b> è
  multiplo di <math|n>, quindi possiamo riscrivere il problema come

  <\equation*>
    a*x+n*y=b,<space|2em>x,y\<in\>\<bbb-Z\>.
  </equation*>

  È una diofantea lineare. Il criterio del MCD ci dà subito la risposta
  sull'esistenza:

  <\concetto|Congruenza lineare>
    Posto <math|d=gcd(a,n)>, la congruenza <math|a*x\<equiv\>b<pmod|n>> ha
    soluzioni se e solo se <math|d\<mid\>b>. Quando esistono, formano una
    sola classe modulo <math|n/d>, cioè <math|d> classi distinte modulo
    <math|n>.
  </concetto>

  Vediamo concretamente perché il modulo ridotto compare. Vogliamo risolvere

  <\equation*>
    6x\<equiv\>9<pmod|15>.
  </equation*>

  Il MCD è 3 e divide 9: possiamo procedere. La condizione
  <math|15\<mid\>(6x-9)> equivale, dividendo tutto per 3, a
  <math|5\<mid\>(2x-3)>. Otteniamo quindi

  <\equation*>
    2x\<equiv\>3<pmod|5>.
  </equation*>

  Ora 2 è invertibile modulo 5: il suo inverso è 3 perché
  <math|2\<cdot\>3\<equiv\>1>. Moltiplichiamo entrambi i membri per 3 e
  troviamo <math|x\<equiv\>9\<equiv\>4<pmod|5>>. Gli interi cercati sono
  dunque <math|x=4+5t>, <math|t\<in\>\<bbb-Z\>>.

  Se vogliamo elencare le soluzioni modulo il modulo iniziale 15, troviamo
  tre resti: <math|4,9,14>. Verifichiamo: <math|6\<cdot\>4=24>,
  <math|6\<cdot\>9=54> e <math|6\<cdot\>14=84> danno tutti resto 9 modulo 15.
  La congruenza <math|6x\<equiv\>8<pmod|15>>, invece, è impossibile, perché 3
  non divide 8.

  In generale dividiamo <math|a,b,n> per <math|d>. Quando <math|n/d\<geq\>2>,
  il coefficiente <math|a/d> è invertibile nel nuovo modulo: otteniamo
  un'unica classe <math|x\<equiv\>x<rsub|0><pmod|n/d>>. Se <math|n/d=1>, la
  condizione ridotta è automatica e ogni intero è soluzione.

  Perché nel modulo iniziale le classi sono esattamente <math|d>? I
  rappresentanti

  <\equation*>
    x<rsub|0>,<space|0.5em>x<rsub|0>+<frac|n|d>,<space|0.5em>\<ldots\>,<space|0.5em>x<rsub|0>+(d-1)<frac|n|d>
  </equation*>

  sono distinti modulo <math|n>: due di essi differiscono di meno di <math|d>
  passi, quindi non di un multiplo non nullo di <math|n>. Dopo <math|d> passi
  abbiamo aggiunto <math|n> e torniamo alla stessa classe. Ogni altro valore
  del parametro ripete una di queste possibilità.

  <section|Teorema cinese: combinare due informazioni>

  Cerchiamo ora un intero con resto 2 modulo 3 e resto 3 modulo 5:

  <\equation*>
    x\<equiv\>2<pmod|3>,<space|2em>x\<equiv\>3<pmod|5>.
  </equation*>

  La prima condizione descrive tutti i candidati: <math|x=2+3k>. Sostituiamo
  nella seconda: <math|2+3k\<equiv\>3<pmod|5>>, quindi
  <math|3k\<equiv\>1<pmod|5>>. Poiché l'inverso di 3 modulo 5 è 2, segue
  <math|k\<equiv\>2<pmod|5>>.

  Scriviamo <math|k=2+5t> e torniamo a <math|x>: <math|x=2+3(2+5t)=8+15t>. Le
  due informazioni insieme descrivono dunque un'unica classe modulo 15:

  <\equation*>
    x\<equiv\>8<pmod|15>.
  </equation*>

  La sostituzione ha trasformato il sistema in una sola congruenza lineare. È
  un metodo da cui possiamo anche ricavare il teorema generale.

  <strong|Teorema cinese del resto.> Se <math|m,n\<gtr\>0> sono coprimi, per
  ogni scelta di <math|a,b> il sistema <math|x\<equiv\>a<pmod|m>>,
  <math|x\<equiv\>b<pmod|n>> ha soluzione. Tutte le soluzioni costituiscono
  un'unica classe modulo <math|m*n>.

  <subsection|Perché esiste una soluzione>

  Dalla prima congruenza scriviamo <math|x=a+m*k>. La seconda chiede
  <math|m*k\<equiv\>b-a<pmod|n>>. Siccome <math|m,n> sono coprimi, <math|m> è
  invertibile modulo <math|n> se <math|n\<geq\>2>: la congruenza per <math|k>
  ha sempre una soluzione. Se <math|n=1>, la seconda condizione non impone
  alcun vincolo e basta scegliere <math|x=a>.

  Bézout permette anche di costruire direttamente un numero adatto. Scriviamo
  <math|u*m+v*n=1>. Il termine <math|v*n> è congruo a 1 modulo <math|m> e a 0
  modulo <math|n>; il termine <math|u*m> fa il contrario. Perciò

  <\equation*>
    x=a*v*n+b*u*m
  </equation*>

  è congruo ad <math|a> modulo <math|m> e a <math|b> modulo <math|n>. La
  formula nasce dal desiderio di controllare i due resti separatamente.

  <subsection|Perché è unica la classe, non il numero>

  Se <math|x,y> risolvono lo stesso sistema, <math|x-y> è divisibile sia per
  <math|m> sia per <math|n>. Scriviamo <math|x-y=m*h>. Allora
  <math|n\<mid\>m*h>; essendo <math|m,n> coprimi, il lemma di Euclide dà
  <math|n\<mid\>h>. Quindi <math|m*n\<mid\>(x-y)>.

  Le soluzioni hanno tutte lo stesso resto modulo <math|m*n>. Viceversa,
  aggiungere un multiplo di <math|m*n> a una soluzione conserva entrambe le
  congruenze. È questo il significato preciso di \Sunica modulo <math|m*n>\T.

  <figura|<image|assets/cinese.pdf|155.0mm|60.0mm||>|A sinistra ogni coppia
  di resti modulo 3 e modulo 5 compare una volta fra 0 e 14. A destra i
  moduli 2 e 4 impongono vincoli di parità: alcune coppie di resti sono
  impossibili.>

  <section|Moduli non coprimi: compatibilità e mcm>

  Consideriamo <math|x\<equiv\>1<pmod|4>>, <math|x\<equiv\>3<pmod|6>>.
  Entrambe le condizioni chiedono un numero dispari, quindi non si
  contraddicono sulla parità. Scrivendo <math|x=1+4k> otteniamo
  <math|4k\<equiv\>2<pmod|6>>, che si riduce a <math|2k\<equiv\>1<pmod|3>>.
  Segue <math|k\<equiv\>2<pmod|3>>, e quindi <math|x=9+12t>.

  Se il secondo resto fosse 2, avremmo invece un numero dispari dalla prima
  condizione e pari dalla seconda: il sistema sarebbe impossibile.

  In generale la sostituzione dà ancora <math|m*k\<equiv\>b-a<pmod|n>>. Posto
  <math|d=gcd(m,n)>, questa congruenza è risolvibile se e solo se
  <math|d\<mid\>(b-a)>. Ecco la condizione di <strong|compatibilità>: i due
  resti devono essere congrui modulo il MCD.

  Quando sono compatibili, <math|k> varia di passi <math|n/d>, quindi
  <math|x=a+m*k> varia di passi <math|m*n/d>. Quest'ultimo numero è
  <math|<math-up|mcm>(m,n)>. Le soluzioni formano dunque un'unica classe
  modulo il <strong|mcm>, non necessariamente modulo il prodotto.

  <subsection|Più di due moduli>

  Per moduli a due a due coprimi ricombiniamo le prime due condizioni, poi il
  risultato con la terza e così via. A ogni passo il prodotto dei moduli già
  usati è coprimo con il successivo: un primo che dividesse entrambi dovrebbe
  dividere uno dei moduli precedenti, contraddicendo la coprimalità a due a
  due. Ripetendo il teorema per due moduli otteniamo, per induzione,
  esistenza e unicità modulo il prodotto di tutti i moduli.

  Per moduli non coprimi possiamo ugualmente combinarli due alla volta,
  controllando la compatibilità e usando ogni volta il mcm come nuovo modulo.
  Una potenza prima va conservata: sapere il resto modulo 9 contiene più
  informazione che sapere soltanto quello modulo 3.

  <subsection|In sintesi>

  Un <strong|inverso modulare> permette di dividere mantenendo il modulo. Le
  <strong|congruenze lineari> si risolvono con il MCD e poi con un inverso.
  Il <strong|teorema cinese> combina informazioni su moduli diversi: con
  moduli coprimi tutte le coppie di resti sono possibili; nel caso generale
  serve compatibilità e il periodo è il mcm.

  <\verifica|8>
    <strong|1.> Trova l'inverso di 5 modulo 12 e risolvi
    <math|8x\<equiv\>4<pmod|12>>. Distingui la classe nel modulo ridotto
    dalle classi nel modulo iniziale.

    <strong|2.> Risolvi <math|x\<equiv\>2<pmod|6>>,
    <math|x\<equiv\>5<pmod|9>>. Che cosa accade se il secondo resto diventa
    4? Comincia controllando la compatibilità.
  </verifica>

  <chapter|Gruppi, anelli e campi>

  <\inbreve>
    Abbiamo fatto conti con interi e classi di resto. Quali regole rimangono
    valide quando cambiano gli oggetti? Gruppi, anelli e campi danno un nome
    preciso a queste regole. Partiremo dalle operazioni che conosciamo e
    capiremo che cosa possiamo chiedere loro.
  </inbreve>

  <section|Prima domanda: su quali oggetti facciamo i conti?>

  Sommiamo due interi: otteniamo ancora un intero. Sommiamo due classi modulo
  5: otteniamo ancora una classe modulo 5. Gli oggetti sono diversi, ma in
  entrambi i casi possiamo sommare, usare uno zero e trovare un opposto.

  Ora moltiplichiamo due interi. Il prodotto rimane intero, ma una regola
  cambia: l'equazione <math|2x=1> non ha soluzione intera. Non possiamo
  sempre annullare una moltiplicazione restando nello stesso insieme.

  Per questo una struttura comprende <strong|sia l'insieme sia le
  operazioni>. Dire soltanto \Sgli interi\T non ci dice se stiamo studiando
  la somma o il prodotto.

  Un'<strong|operazione binaria interna> su <math|G> è una funzione
  <math|G\<times\>G\<rightarrow\>G>. Prende due elementi e restituisce un
  elemento dello stesso insieme. La sottrazione è interna su
  <math|\<bbb-Z\>>, ma non su <math|\<bbb-N\>>: <math|2-5=-3> esce dai
  naturali.

  <section|Gruppo: un'operazione che possiamo invertire>

  Guardiamo <math|(\<bbb-Z\>,+)>. Possiamo raggruppare le somme senza
  cambiarne il risultato; sommare zero lascia fermo ogni numero; a ogni
  intero possiamo sommare il suo opposto per ottenere zero. Queste tre
  proprietà sono il modello della definizione.

  <\concetto|Gruppo>
    Un <strong|gruppo> è un insieme <math|G> con un'operazione interna,
    scritta <math|x*y>, tale che:

    <\itemize>
      <item>è <strong|associativa>: <math|(x*y)z=x(y*z)> per ogni
      <math|x,y,z\<in\>G>;

      <item>ha un <strong|elemento neutro> <math|e>: <math|x*e=e*x=x> per
      ogni <math|x\<in\>G>;

      <item>ogni <math|x> ha un <strong|inverso> <math|x<rsup|-1>> con
      <math|x*x<rsup|-1>=x<rsup|-1>x=e>.
    </itemize>

    Se inoltre <math|x*y=y*x> per ogni coppia, il gruppo si chiama
    <strong|abeliano>.
  </concetto>

  Associatività e commutatività chiedono cose diverse. La prima permette di
  spostare le parentesi; la seconda di scambiare gli elementi. Un gruppo deve
  avere la prima proprietà; può non avere la seconda. Vedremo un esempio con
  le permutazioni.

  Con la somma scriviamo <math|0> al posto di <math|e> e <math|-x> al posto
  di <math|x<rsup|-1>>. L'inverso additivo di 3 è <math|-3>; l'inverso
  moltiplicativo sarebbe <math|1/3>. È sempre l'operazione a decidere che
  cosa significa \Sinverso\T.

  Perciò <math|(\<bbb-Z\>,+)> e <math|(\<bbb-Z\>/n\<bbb-Z\>,+)> sono gruppi
  abeliani. Invece <math|(\<bbb-N\>,+)> non è un gruppo, perché manca
  l'opposto di 1. Anche <math|(\<bbb-Z\>,\<cdot\>)> fallisce: manca l'inverso
  moltiplicativo di 2.

  <subsection|Perché in un gruppo possiamo cancellare>

  Supponiamo <math|a*x=a*y>. L'ostacolo è il fattore <math|a> davanti alle
  incognite. La definizione di gruppo ci offre un elemento che lo annulla:
  <math|a<rsup|-1>>. Moltiplichiamo <em|a sinistra> entrambi i membri:

  <\equation*>
    a<rsup|-1>(a*x)=a<rsup|-1>(a*y).
  </equation*>

  Per associatività possiamo raggruppare <math|a<rsup|-1>a>. Otteniamo
  <math|e*x=e*y>, dunque <math|x=y>. Da <math|x*a=y*a> useremmo invece
  l'inverso a destra. Non abbiamo scambiato nessun fattore.

  Anche il neutro e gli inversi sono unici. Se <math|e,f> fossero due neutri,
  <math|e*f=e> perché <math|f> è neutro, ma <math|e*f=f> perché lo è
  <math|e>: quindi <math|e=f>. Se <math|u,v> fossero due inversi di <math|x>,
  allora <math|u=u(x*v)=(u*x)v=v>. L\<#2019\>inverso di <math|x<rsup|-1>> è
  quindi <math|x>. Possiamo così parlare di <em|quel> neutro e di
  <em|quell'>inverso.

  <section|Anello: somma e prodotto insieme>

  Un gruppo descrive una sola operazione. Per studiare anche espressioni come
  <math|a(b+c)> dobbiamo collegare somma e prodotto.

  <\concetto|Anello>
    Un <strong|anello> ha due operazioni interne. La somma forma un gruppo
    abeliano; il prodotto è associativo; valgono le due leggi distributive
    <math|a(b+c)=a*b+a*c> e <math|(a+b)c=a*c+b*c>.

    Nel seguito lavoriamo con <strong|anelli commutativi con identità>:
    richiediamo anche <math|a*b=b*a> e un elemento <math|1> neutro per il
    prodotto. Esistono anelli più generali, ma queste sono le proprietà usate
    nei nostri esempi.
  </concetto>

  Gli interi e le classi modulo <math|n> sono anelli di questo tipo. In
  <math|\<bbb-Z\>/n\<bbb-Z\>> lo zero è <math|[0]> e l'uno è <math|[1]>. Le
  regole discendono da quelle degli interi, dopo la verifica della buona
  definizione fatta nel capitolo 7.

  Essere un anello non garantisce gli inversi moltiplicativi. Chiamiamo
  <strong|unità> gli elementi che li hanno. Le unità formano un gruppo con il
  prodotto: contengono 1; il prodotto di due unità ha inverso dato dal
  prodotto dei loro inversi; l'inverso di un'unità è a sua volta un'unità.

  Per le classi di resto conosciamo già il criterio:

  <\equation*>
    (\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>=<around|{|[a]<rsub|n>:gcd(a,n)=1|}>.
  </equation*>

  Modulo 12 le unità sono <math|[1],[5],[7],[11]>. La classe <math|[3]> ha un
  opposto additivo, <math|[9]>, ma non un inverso moltiplicativo. Sono due
  domande diverse sullo stesso oggetto.

  <section|Campo: dividere per ogni elemento non nullo>

  <\concetto|Campo>
    Un <strong|campo> è un anello commutativo con identità, con
    <math|1\<neq\>0>, in cui ogni elemento diverso da zero ha inverso
    moltiplicativo.
  </concetto>

  Sono campi i razionali <math|\<bbb-Q\>> e i reali <math|\<bbb-R\>>, che
  comprendono anche numeri come <math|<sqrt|2>>. Gli interi non lo sono.

  Per <math|n\<geq\>2>, l'anello <math|\<bbb-Z\>/n\<bbb-Z\>> è un campo
  <strong|esattamente quando <math|n> è primo>. Se <math|n=p> è primo, ogni
  rappresentante <math|1,\<ldots\>,p-1> è coprimo con <math|p>, quindi ogni
  classe non nulla è invertibile.

  Se invece <math|n=u*v> è composto, con <math|1\<less\>u,v\<less\>n>, le
  classi <math|[u],[v]> sono non nulle ma il loro prodotto è zero. In un
  campo questo è impossibile: da <math|[u][v]=[0]> potremmo moltiplicare per
  l'inverso di <math|[u]> e ottenere <math|[v]=[0]>. Elementi non nulli che
  danno prodotto zero si chiamano <strong|divisori dello zero>.

  <figura|<image|assets/strutture.pdf|139.5mm|39.4mm||>|Un gruppo descrive
  una sola operazione. Un anello è un gruppo abeliano per la somma, con un
  prodotto collegato dalla distributività. In un campo ogni elemento non
  nullo ha anche un inverso moltiplicativo.>

  <section|Omomorfismi: cambiare oggetti conservando i conti>

  Consideriamo la funzione che manda un intero nella sua classe modulo 5:
  <math|f(a)=[a]<rsub|5>>. Sommare prima e passare alla classe dopo dà lo
  stesso risultato che passare prima alle classi e poi sommarle:

  <\equation*>
    f(a+b)=f(a)+f(b).
  </equation*>

  Anche <math|f(a*b)=f(a)f(b)> e <math|f(1)=[1]>. Chiamiamo
  <strong|omomorfismo di anelli unitari> una funzione che conserva somma,
  prodotto e identità. Per un omomorfismo di gruppi chiediamo la
  conservazione della sola operazione del gruppo.

  Un omomorfismo <strong|biiettivo> è un <strong|isomorfismo>. I due oggetti
  hanno gli stessi conti, espressi con nomi diversi. Una funzione che
  conserva i conti può invece perdere informazioni: la riduzione
  <math|\<bbb-Z\>\<rightarrow\>\<bbb-Z\>/5\<bbb-Z\>> manda 2 e 7 nella stessa
  classe e non è biiettiva.

  <subsection|Per proseguire: il teorema cinese come isomorfismo>

  Sul prodotto <math|A\<times\>B> di due anelli si somma e si moltiplica
  componente per componente: <math|(a,b)+(c,d)=(a+c,b+d)> e
  <math|(a,b)(c,d)=(a*c,b*d)>.

  La mappa

  <\equation*>
    F:\<bbb-Z\>/(m*n)\<bbb-Z\>\<rightarrow\>\<bbb-Z\>/m\<bbb-Z\>\<times\>\<bbb-Z\>/n\<bbb-Z\>,<space|2em>[x]<rsub|m*n>\<mapsto\>([x]<rsub|m>,[x]<rsub|n>).
  </equation*>

  è ben definita: cambiare <math|x> di un multiplo di <math|m*n> non cambia
  nessuno dei due resti. Conserva i conti perché ridurre una somma o un
  prodotto equivale a operare sui resti.

  Se <math|m,n> sono coprimi, il teorema cinese del capitolo 8 dice
  esattamente che ogni coppia di classi corrisponde a una e una sola classe
  modulo <math|m*n>. Dunque <math|F> è un isomorfismo. Viceversa, se fosse
  suriettiva, la coppia <math|([0]<rsub|m>,[1]<rsub|n>)> avrebbe una
  preimmagine <math|x>. Ogni divisore comune dei moduli dividerebbe sia
  <math|x> sia <math|x-1>, quindi dividerebbe 1: i moduli devono essere
  coprimi.

  <strong|Per proseguire.> L'isomorfismo si restringe alle unità: una classe
  modulo <math|m*n> è invertibile esattamente quando lo sono entrambe le sue
  immagini. Infatti <math|gcd(x,m*n)=1> equivale a
  <math|gcd(x,m)=gcd(x,n)=1>, perché un primo divide un prodotto solo se
  divide un fattore. Questo dà anche l'isomorfismo fra i rispettivi gruppi
  moltiplicativi.

  <subsection|In sintesi>

  Gruppo, anello e campo distinguono quali operazioni e inversi abbiamo. Gli
  omomorfismi permettono di confrontare strutture conservando i conti.

  <\verifica|9>
    <strong|1.> Le classi <math|[1],[2],[3],[4]> modulo 5 formano un gruppo
    con il prodotto? Individua neutro e inversi. Perché aggiungere <math|[0]>
    farebbe fallire una proprietà?

    <strong|2.> La funzione <math|f:\<bbb-Z\>/6\<bbb-Z\>\<rightarrow\>\<bbb-Z\>/3\<bbb-Z\>>,
    <math|[a]<rsub|6>\<mapsto\>[a]<rsub|3>>, è ben definita? Conserva somma,
    prodotto e identità? È un isomorfismo?
  </verifica>

  <chapter|Sottogruppi, gruppi ciclici e permutazioni>

  <\inbreve>
    Dentro un gruppo possiamo trovare insiemi più piccoli che seguono le
    stesse regole. Alcuni si ottengono ripetendo una sola operazione.
    Studieremo sottogruppi, generatori e ordine, poi useremo le permutazioni
    per vedere un gruppo in cui scambiare i fattori cambia il risultato.
  </inbreve>

  <section|Sottogruppo: quali elementi possiamo tenere?>

  Gli interi pari sono un sottoinsieme degli interi. Sommandone due otteniamo
  un pari; lo zero è pari; l'opposto di un pari è pari. Gli interi pari
  formano quindi un gruppo con la stessa somma degli interi.

  Gli interi dispari non funzionano: <math|1+3=4> esce dall'insieme. Un
  sottoinsieme, da solo, non è necessariamente un gruppo.

  Un <strong|sottogruppo> <math|H> di un gruppo <math|G> è un sottoinsieme
  che forma un gruppo con l'operazione di <math|G>. Scriviamo
  <math|H\<leq\>G>. Il neutro deve coincidere con quello di <math|G>: preso
  <math|h\<in\>H>, da <math|e<rsub|H>h=h>, moltiplicando a destra per
  <math|h<rsup|-1>> nel gruppo ambiente otteniamo <math|e<rsub|H>=e>. Gli
  inversi coincidono per unicità.

  Per verificarlo basta controllare che contenga il neutro, i prodotti e gli
  inversi dei suoi elementi. L'associatività è già valida nel gruppo ambiente
  e continua a valere quando scegliamo elementi di <math|H>.

  <\anatomia|Riconoscere un sottogruppo>
    L'obiettivo è riunire le tre verifiche in una sola condizione:
    <math|H\<neq\>\<varnothing\>> e <math|x*y<rsup|-1>\<in\>H> per ogni
    <math|x,y\<in\>H>.

    Perché dovrebbe bastare? La stessa espressione può produrre prima il
    neutro, poi gli inversi, poi i prodotti: scegliamo opportunamente i suoi
    due argomenti.

    Preso <math|a\<in\>H>, scegliamo <math|x=y=a>: otteniamo
    <math|a*a<rsup|-1>=e\<in\>H>. Ora, per <math|y\<in\>H>, scegliamo
    <math|x=e>: otteniamo <math|y<rsup|-1>\<in\>H>. Infine, per
    <math|x,y\<in\>H>, sappiamo già che <math|y<rsup|-1>\<in\>H>. Applichiamo
    la condizione a <math|x> e <math|y<rsup|-1>>: otteniamo
    <math|x(y<rsup|-1>)<rsup|-1>=x*y\<in\>H>.

    Abbiamo recuperato tutte le proprietà richieste. Viceversa, ogni
    sottogruppo soddisfa questa condizione, perché contiene gli inversi e i
    prodotti.
  </anatomia>

  Con la somma il criterio diventa: <math|H\<neq\>\<varnothing\>> e
  <math|x-y\<in\>H> per ogni <math|x,y\<in\>H>. Per esempio, per un intero
  <math|d>, l'insieme <math|d\<bbb-Z\>> dei multipli di <math|d> contiene
  zero e la differenza <math|d*k-d*h=d(k-h)>. Dunque è un sottogruppo di
  <math|\<bbb-Z\>>.

  L'intersezione di due sottogruppi è un sottogruppo: contiene il neutro e il
  controllo <math|x*y<rsup|-1>> riesce in entrambi. L'unione può fallire:
  <math|2\<bbb-Z\>\<cup\>3\<bbb-Z\>> contiene 2 e 3, ma non la loro somma 5.

  <section|Gruppo ciclico: partire da un solo elemento>

  In <math|\<bbb-Z\>/12\<bbb-Z\>>, partiamo da <math|[3]> e continuiamo a
  sommarlo:

  <\equation*>
    [0],<space|0.5em>[3],<space|0.5em>[6],<space|0.5em>[9],<space|0.5em>[0],\<ldots\>
  </equation*>

  Raggiungiamo quattro classi, poi il percorso si ripete. Queste classi
  formano un sottogruppo. Se partiamo invece da <math|[1]>, raggiungiamo
  tutte le dodici classi.

  <figura|<image|assets/orologio12.pdf|82.5mm|75.0mm||>|I passi di 3
  raggiungono <math|[0],[3],[6],[9]>; i passi di 4 raggiungono
  <math|[0],[4],[8]>. I due sottogruppi hanno in comune soltanto <math|[0]>.>

  In un gruppo scritto con il prodotto, ripetere l'operazione significa
  prendere potenze. Poniamo <math|g<rsup|0>=e>, e per esponenti negativi
  usiamo l'inverso: <math|g<rsup|-k>=(g<rsup|-1>)<rsup|k>>. Vale
  <math|g<rsup|r>g<rsup|s>=g<rsup|r+s>> per interi <math|r,s>.

  <\concetto|Generato e gruppo ciclico>
    Il <strong|sottogruppo generato> da <math|g> è

    <\equation*>
      \<langle\>g\<rangle\>=<around|{|g<rsup|k>:k\<in\>\<bbb-Z\>|}>.
    </equation*>

    Se <math|G=\<langle\>g\<rangle\>>, il gruppo si chiama <strong|ciclico> e
    <math|g> è un suo <strong|generatore>. Con la somma usiamo i multipli
    <math|k*g> al posto delle potenze.
  </concetto>

  È davvero un sottogruppo: contiene <math|e=g<rsup|0>> e
  <math|g<rsup|r>(g<rsup|s>)<rsup|-1>=g<rsup|r-s>> è ancora una potenza. È
  anche abeliano, perché <math|r+s=s+r>. Il gruppo ambiente può invece essere
  non abeliano.

  <section|Ordine: dopo quanti passi torniamo al neutro?>

  Per <math|[3]> nella somma modulo 12, il primo ritorno a zero avviene dopo
  quattro passi. Diciamo che <math|[3]> ha <strong|ordine 4>. Non
  confondiamolo con il numero di elementi del gruppo ambiente, che è 12.

  <\concetto|Ordine di un elemento>
    In generale, l'<strong|ordine di un elemento> <math|g> è il minimo intero
    positivo <math|r> con <math|g<rsup|r>=e>, se esiste. Se nessuna potenza
    positiva torna al neutro, l'ordine è infinito.
  </concetto>

  Negli interi con la somma, per esempio, 3 ha ordine infinito: nessun
  multiplo positivo di 3 è zero.

  In un gruppo finito un ritorno deve esistere. La lista
  <math|e,g,g<rsup|2>,\<ldots\>> non può contenere per sempre elementi
  distinti. Due potenze coincidono: <math|g<rsup|i>=g<rsup|j>> con
  <math|i\<gtr\>j>. Moltiplicando per <math|g<rsup|-j>> otteniamo
  <math|g<rsup|i-j>=e>, con esponente positivo.

  <new-page>

  <subsection|Perché tutti i ritorni sono multipli del primo>

  Sia <math|r> l'ordine di <math|g>. I multipli di <math|r> danno il neutro,
  perché <math|g<rsup|q*r>=(g<rsup|r>)<rsup|q>=e>.

  Per escludere altri ritorni, prendiamo un intero <math|k> con
  <math|g<rsup|k>=e> e dividiamolo per <math|r>: <math|k=q*r+s>, con
  <math|0\<leq\>s\<less\>r>. Allora

  <\equation*>
    e=g<rsup|k>=(g<rsup|r>)<rsup|q>g<rsup|s>=g<rsup|s>.
  </equation*>

  Se <math|s\<gtr\>0>, avremmo un ritorno positivo più piccolo di <math|r>,
  contro la sua definizione. Quindi <math|s=0> e <math|r\<mid\>k>. Abbiamo
  dimostrato <math|g<rsup|k>=e\<Leftrightarrow\>r\<mid\>k>.

  La stessa idea mostra che <math|g<rsup|u>=g<rsup|v>\<Leftrightarrow\>u\<equiv\>v<pmod|r>>:
  basta portare una potenza dall'altra parte usando l'inverso. Il generato
  contiene quindi esattamente <math|r> elementi distinti,
  <math|e,g,\<ldots\>,g<rsup|r-1>>. Se l'ordine è infinito, tutte le potenze
  sono invece distinte.

  <\attenzione|Precisare l'operazione>
    La classe <math|[3]> ha ordine 4 nel gruppo
    <math|(\<bbb-Z\>/12\<bbb-Z\>,+)>. Con il prodotto non appartiene nemmeno
    al gruppo delle unità, perché <math|gcd(3,12)=3>. La frase \Sordine di
    <math|[3]>\T richiede di sapere in quale gruppo stiamo lavorando.
  </attenzione>

  <section|Permutazioni: comporre cambiamenti di posizione>

  Una <strong|permutazione> di un insieme è una biezione dell'insieme in sé.
  Su <math|<around|{|1,2,3|}>> possiamo, per esempio, mandare 1 in 2, 2 in 3
  e 3 in 1. Scriviamo questa permutazione come <math|\<sigma\>=(1 2 3)>: è un
  <strong|ciclo>.

  Un ciclo manda ogni elemento nel successivo e l'ultimo nel primo. Gli
  elementi non scritti restano fermi. La permutazione <math|\<tau\>=(1 2)>
  scambia 1 e 2 e lascia fermo 3.

  L'operazione fra permutazioni è la <strong|composizione>. Per convenzione
  <math|\<sigma\>\<tau\>=\<sigma\>\<circ\>\<tau\>> significa applicare prima
  <math|\<tau\>> e poi <math|\<sigma\>>. Leggiamo il fattore di destra per
  primo.

  <\guidato|Due ordini, due risultati>
    Calcoliamo <math|\<sigma\>\<tau\>>. Il numero 1 passa prima a 2 e poi a
    3; il 2 passa a 1 e poi a 2; il 3 rimane 3 e poi passa a 1. Quindi
    <math|\<sigma\>\<tau\>=(1 3)>.

    Per <math|\<tau\>\<sigma\>>, il numero 1 passa a 2 e poi torna a 1; il 2
    passa a 3 e resta 3; il 3 passa a 1 e poi a 2. Quindi
    <math|\<tau\>\<sigma\>=(2 3)>.

    Le due permutazioni differiscono: il gruppo delle permutazioni di tre
    elementi non è abeliano.
  </guidato>

  <figura|<image|assets/permutazioni.pdf|150.0mm|62.5mm||>|Seguiamo ciascun
  filo dall'alto in basso. Nei due disegni cambia l'ordine delle permutazioni
  e cambiano le destinazioni.>

  Le permutazioni di <math|<around|{|1,\<ldots\>,n|}>> formano il
  <strong|gruppo simmetrico> <math|S<rsub|n>>. La composizione di biezioni è
  una biezione; è associativa; il neutro è la funzione identità; ogni
  biezione ha funzione inversa. Queste sono tutte le verifiche richieste
  dalla definizione di gruppo. Ci sono <math|n!> permutazioni, per il
  conteggio delle biezioni del capitolo 2.

  Per scrivere una permutazione come prodotto di <strong|cicli disgiunti>,
  partiamo da un elemento e seguiamo le sue immagini fino al ritorno.
  Ripetiamo con un elemento non ancora visitato. I cicli così ottenuti
  agiscono su insiemi separati e commutano.

  Per esempio, <math|(1 2 3)(4 5)> torna all'identità quando il numero di
  ripetizioni è sia multiplo di 3 sia multiplo di 2. Il primo è 6. In
  generale l'ordine di una permutazione è il <strong|minimo comune multiplo
  delle lunghezze dei suoi cicli disgiunti>.

  <section|Per proseguire: altre immagini dei sottogruppi>

  Per un intero <math|n\<geq\>1>, le <strong|radici <math|n>-esime
  dell'unità> sono i numeri complessi <math|z> con <math|z<rsup|n>=1>. Per
  <math|n=4> sono <math|1,i,-1,-i>, con <math|i<rsup|2>=-1>. Moltiplicare per
  <math|i> percorre in ordine questi quattro punti sul cerchio. È un gruppo
  ciclico. In generale, con la notazione trigonometrica
  <math|e<rsup|i\<theta\>>=cos \<theta\>+i sin \<theta\>>, le radici sono
  <math|e<rsup|2\<pi\>i*k/n>>, per <math|k=0,\<ldots\>,n-1>: il prodotto
  somma gli angoli.

  Il <strong|centro> <math|Z(G)> raccoglie gli elementi che commutano con
  tutti gli altri. È un sottogruppo: contiene <math|e>; se <math|x,y>
  commutano con ogni <math|h>, allora <math|(x*y)h=x(h*y)=h(x*y)>; da
  <math|x*h=h*x>, moltiplicando a sinistra e a destra per <math|x<rsup|-1>>,
  otteniamo <math|h*x<rsup|-1>=x<rsup|-1>h>. Quindi contiene prodotti e
  inversi. Un gruppo è abeliano esattamente quando <math|Z(G)=G>.

  Per i multipli interi, <math|d\<bbb-Z\>\<subseteq\>m\<bbb-Z\>> equivale a
  <math|m\<mid\>d>: basta controllare che <math|d> sia un multiplo di
  <math|m>. Inoltre, per <math|d,m\<gtr\>0>,
  <math|d\<bbb-Z\>\<cap\>m\<bbb-Z\>=<math-up|mcm>(d,m)\<bbb-Z\>>, perché gli
  elementi comuni sono proprio i multipli comuni.

  <subsection|In sintesi>

  Un <strong|sottogruppo> conserva l'operazione e le sue regole. Un
  <strong|generatore> produce tutti gli elementi di un gruppo ciclico.
  L'<strong|ordine> conta i passi fino al primo ritorno al neutro. Le
  <strong|permutazioni> mostrano concretamente perché in un gruppo l'ordine
  dei fattori può contare.

  <\verifica|10>
    <strong|1.> In <math|(\<bbb-Z\>/12\<bbb-Z\>,+)> elenca il sottogruppo
    generato da <math|[8]>, trova l'ordine di <math|[8]> e spiega perché il
    generato è chiuso rispetto alla sottrazione.

    <strong|2.> Sia <math|\<rho\>=(1 2 3)(4 5)> in <math|S<rsub|5>>. Trova
    <math|\<rho\><rsup|2>>, l'inverso e l'ordine. Giustifica l'ordine
    osservando separatamente i due cicli.
  </verifica>

  <chapter|Potenze modulari e sviluppi decimali>

  <\inbreve>
    L'ordine di un elemento descrive quando le sue potenze ricominciano.
    Useremo questa idea per trovare un esponente incognito. Poi ritroveremo
    la periodicità in un oggetto familiare: le cifre decimali di una
    frazione.
  </inbreve>

  <section|Potenze modulari: cercare dentro un ciclo>

  Calcoliamo le potenze di 4 modulo 17, riducendo il risultato dopo ogni
  moltiplicazione:

  <\equation*>
    4<rsup|0>\<equiv\>1,<space|1em>4<rsup|1>\<equiv\>4,<space|1em>4<rsup|2>\<equiv\>16\<equiv\>-1,
  </equation*>

  <\equation*>
    4<rsup|3>\<equiv\>-4\<equiv\>13,<space|1em>4<rsup|4>\<equiv\>1<pmod|17>.
  </equation*>

  Il primo ritorno a 1 avviene dopo quattro passi:
  <math|<math-up|ord><rsub|17>(4)=4>. Dunque l'esponente conta modulo 4. Le
  potenze assumono soltanto i valori <math|1,4,16,13>.

  La congruenza <math|4<rsup|x>\<equiv\>16<pmod|17>> ha perciò soluzioni
  <math|x\<equiv\>2<pmod|4>>. Invece <math|4<rsup|x>\<equiv\>2<pmod|17>> non
  ha soluzione: 2 non compare nel ciclo. Il fatto che 2 sia invertibile
  modulo 17 non basta.

  <\concetto|Equazione esponenziale modulare>
    Supponiamo <math|m\<geq\>2> e <math|gcd(a,m)=1>. Sia
    <math|r=<math-up|ord><rsub|m>(a)>. La congruenza
    <math|a<rsup|x>\<equiv\>b<pmod|m>> ha soluzione se e solo se la classe di
    <math|b> compare tra le potenze di <math|a>. Se <math|x<rsub|0>> è una
    soluzione, tutte le soluzioni sono

    <\equation*>
      x\<equiv\>x<rsub|0><pmod|r>.
    </equation*>
  </concetto>

  Perché il modulo della risposta è <math|r>, mentre quello della domanda è
  <math|m>? Stiamo descrivendo gli <em|esponenti> che portano allo stesso
  punto del ciclo, e il ciclo si ripete ogni <math|r> passi.

  La prova usa il capitolo 10. Se due potenze <math|a<rsup|x>> e
  <math|a<rsup|x<rsub|0>>> coincidono modulo <math|m>, moltiplicando per
  l'inversa della seconda otteniamo <math|a<rsup|x-x<rsub|0>>\<equiv\>1>.
  Questo avviene esattamente quando <math|r\<mid\>(x-x<rsub|0>)>. Viceversa
  aggiungere un multiplo di <math|r> all'esponente non cambia la potenza.

  Possiamo cercare <math|x> nei naturali. Se permettiamo esponenti interi
  negativi, una potenza negativa indica la potenza dell'inversa modulare: il
  ragionamento rimane lo stesso. Per basi non coprime con il modulo non
  applichiamo questo criterio dell'ordine.

  <section|Spezzare il modulo, poi ricomporre gli esponenti>

  Risolviamo <math|3<rsup|x>\<equiv\>61<pmod|91>>. Poiché
  <math|91=7\<cdot\>13>, il teorema cinese ci permette di studiare
  separatamente i resti modulo 7 e modulo 13.

  Modulo 7, il termine noto è <math|61\<equiv\>5>. Le potenze, a partire
  dall'esponente zero, sono

  <\equation*>
    1,3,2,6,4,5,1,\<ldots\>
  </equation*>

  Il primo ritorno a 1 è all'esponente 6; il 5 compare all'esponente 5.
  Otteniamo <math|x\<equiv\>5<pmod|6>>.

  Modulo 13, il termine noto è <math|61\<equiv\>9>. Le potenze sono
  <math|1,3,9,1,\<ldots\>>: ordine 3, quindi <math|x\<equiv\>2<pmod|3>>.

  Ora abbiamo due condizioni sull'esponente. I moduli 6 e 3 non sono coprimi,
  ma non serve forzare il teorema cinese nella forma coprima: ogni numero
  <math|x=5+6k> dà resto 2 nella divisione per 3. La seconda condizione è già
  contenuta nella prima.

  Le soluzioni sono dunque <math|x\<equiv\>5<pmod|6>>. Controlliamo un
  rappresentante: <math|3<rsup|5>=243=2\<cdot\>91+61>.

  <section|Decimali periodici: che cosa si ripete nella divisione?>

  Per trovare le cifre di <math|1/7>, moltiplichiamo il resto corrente per
  10, dividiamo per 7, scriviamo la cifra ottenuta e conserviamo il nuovo
  resto. Il primo passo è <math|10=1\<cdot\>7+3>: la cifra è 1 e il nuovo
  resto è 3. Poi <math|30=4\<cdot\>7+2>: la cifra è 4 e il resto è 2.

  I resti successivi sono <math|1,3,2,6,4,5,1>. Quando torna il resto
  iniziale, torna esattamente la situazione da cui eravamo partiti. Le cifre
  ricominciano: <math|1/7=0,<wide|142857|\<bar\>>>.

  <figura|<image|assets/resti7.pdf|95.0mm|72.5mm||>|Ogni freccia indica una
  divisione: moltiplichiamo il resto per 10, otteniamo la cifra sulla freccia
  e passiamo al nuovo resto. Il ritorno al resto 1 fa ripartire le stesse
  cifre.>

  Per un denominatore positivo <math|b>, i resti possibili sono soltanto
  <math|0,1,\<ldots\>,b-1>. Se compare zero, la divisione termina.
  Altrimenti, continuando, un resto deve ripetersi. Dallo stesso resto il
  procedimento produce sempre la stessa cifra e lo stesso resto successivo:
  da quel punto le cifre sono periodiche.

  Abbiamo dimostrato che <strong|ogni razionale ha uno sviluppo decimale
  finito o eventualmente periodico>. \SEventualmente\T significa che può
  esserci una parte iniziale prima del periodo.

  <section|Dal periodo alla frazione>

  Possiamo percorrere anche la strada inversa. Poniamo
  <math|x=0,<wide|34|\<bar\>>>. Il periodo ha due cifre, quindi moltiplicare
  per 100 sposta una copia del periodo prima della virgola:

  <\equation*>
    100x=34,343434\<ldots\>,<space|2em>x=0,343434\<ldots\>
  </equation*>

  Sottraendo, le due parti infinite coincidono e si cancellano:
  <math|99x=34>. Dunque <math|x=34/99>.

  Se il periodo comincia più avanti, spostiamo prima la parte iniziale. Per
  <math|x=0,1<wide|6|\<bar\>>> abbiamo <math|10x=1,666\<ldots\>> e
  <math|100x=16,666\<ldots\>>. Sottraendo otteniamo <math|90x=15>, quindi
  <math|x=1/6>.

  In generale, se il blocco periodico rappresenta l'intero <math|B> ed è
  lungo <math|r> cifre, la sua ripetizione pura vale <math|B/(10<rsup|r>-1)>.
  Una parte iniziale di <math|s> cifre aggiunge un decimale finito e sposta
  la parte periodica dividendo per <math|10<rsup|s>>. Il risultato è ancora
  razionale. Perciò vale anche il viceversa: <strong|un decimale
  eventualmente periodico rappresenta un razionale>.

  <section|Il denominatore anticipa la forma del decimale>

  Riduciamo la frazione <math|a/b> ai minimi termini, con <math|b\<gtr\>0>, e
  scriviamo

  <\equation*>
    b=2<rsup|\<alpha\>>5<rsup|\<beta\>>c,<space|2em>gcd(c,10)=1.
  </equation*>

  Separiamo 2 e 5 perché sono i primi contenuti in 10. Una potenza di 10 può
  assorbirli; non può assorbire i fattori di <math|c>.

  Se <math|c=1>, il denominatore divide <math|10<rsup|s>>, con
  <math|s=max(\<alpha\>,\<beta\>)>. Possiamo quindi riscrivere la frazione
  con denominatore <math|10<rsup|s>>: il decimale termina. Per esempio
  <math|3/40=75/1000=0,075>.

  Se <math|c\<gtr\>1>, il periodo non può scomparire. La parte iniziale ha
  lunghezza <math|s=max(\<alpha\>,\<beta\>)> e la lunghezza minima del
  periodo è <math|<math-up|ord><rsub|c>(10)>.

  Per capirne il motivo, dopo <math|s> spostamenti della virgola il
  denominatore rimasto, ridotto, è <math|c>. Un periodo di lunghezza <math|r>
  significa che spostare altre <math|r> cifre lascia la stessa parte
  frazionaria: <math|10<rsup|r>a'/c-a'/c> è intero, con <math|gcd(a',c)=1>.
  Questo equivale a <math|c\<mid\>(10<rsup|r>-1)>. Il primo <math|r>
  possibile è proprio l'ordine di 10 modulo <math|c>.

  La lunghezza iniziale è esattamente <math|s>: prima di allora il
  denominatore ridotto contiene ancora un fattore 2 o 5, mentre un periodo
  puro ha denominatore che divide un numero <math|10<rsup|r>-1>, coprimo con
  10. Per <math|1/6>, <math|6=2\<cdot\>3>: una cifra iniziale e periodo di
  lunghezza <math|<math-up|ord><rsub|3>(10)=1>.

  <subsection|In sintesi>

  Nelle <strong|potenze modulari> si ripete la posizione nel gruppo; nella
  <strong|divisione decimale> si ripete il resto. In entrambi i casi,
  conoscere il ritorno permette di descrivere un processo infinito con un
  numero finito di passi.

  <\verifica|11>
    <strong|1.> Risolvi <math|2<rsup|x>\<equiv\>4<pmod|7>> per
    <math|x\<in\>\<bbb-N\>>. Prima calcola un intero ciclo delle potenze e
    trova l'ordine.

    <strong|2.> Senza eseguire la divisione completa, stabilisci se
    <math|7/80> termina e quante cifre decimali servono. Trasforma poi
    <math|0,2<wide|7|\<bar\>>> in frazione.
  </verifica>

  <chapter|Congruenze quadratiche e potenze prime>

  <\inbreve>
    Le congruenze lineari ci hanno insegnato a cercare un'incognita
    moltiplicata per un coefficiente. Ora compare un quadrato. Useremo i
    campi per risolvere modulo un primo, poi vedremo come correggere le
    soluzioni quando il modulo è una potenza. Il teorema cinese unirà i
    risultati.
  </inbreve>

  <section|Un quadrato modulo un primo>

  Cerchiamo le soluzioni di <math|x<rsup|2>\<equiv\>1<pmod|5>>. Possiamo
  provare tutti i resti:

  <\equation*>
    0<rsup|2>\<equiv\>0,<space|1em>1<rsup|2>\<equiv\>1,<space|1em>2<rsup|2>\<equiv\>4,<space|1em>3<rsup|2>\<equiv\>4,<space|1em>4<rsup|2>\<equiv\>1<pmod|5>.
  </equation*>

  Le soluzioni sono <math|[1]> e <math|[4]>, cioè
  <math|x\<equiv\>\<pm\>1<pmod|5>>. Il controllo è completo perché ogni
  intero appartiene a una di queste cinque classi.

  Possiamo anche capire la struttura dell'equazione. Scriviamo
  <math|x<rsup|2>-1=(x-1)(x+1)>. Modulo un primo <math|p>, un prodotto è zero
  soltanto se almeno un fattore è zero. Infatti, se il primo fattore fosse
  non nullo, avrebbe un inverso e potremmo cancellarlo. Quindi le soluzioni
  di <math|x<rsup|2>\<equiv\>1<pmod|p>> sono <math|x\<equiv\>1> oppure
  <math|x\<equiv\>-1>; per <math|p=2> queste due classi coincidono.

  Un numero <math|b> si chiama <strong|quadrato modulo <math|p>> se esiste
  <math|x> con <math|x<rsup|2>\<equiv\>b<pmod|p>>. Per esempio 4 è un
  quadrato modulo 5, mentre 2 non lo è. Essere un numero positivo non
  garantisce di essere un quadrato in un dato modulo.

  <\attenzione|Il modulo cambia le regole>
    Modulo 4, <math|2\<cdot\>2\<equiv\>0>, pur avendo due fattori non nulli.
    Perciò non usiamo l'annullamento del prodotto modulo un numero composto
    senza un'ulteriore giustificazione. Lo stesso quadrato può avere più di
    due radici: modulo 15, <math|x<rsup|2>\<equiv\>1> ha le quattro soluzioni
    <math|1,4,11,14>.
  </attenzione>

  <section|Per proseguire: il discriminante modulo un primo>

  Per <math|A*x<rsup|2>+B*x+C\<equiv\>0<pmod|p>>, con <math|p> primo dispari
  e <math|p\<nmid\>A>, possiamo riprendere il completamento del quadrato.
  L'identità

  <\equation*>
    4A(A*x<rsup|2>+B*x+C)=(2A*x+B)<rsup|2>-(B<rsup|2>-4A*C)
  </equation*>

  trasforma la congruenza in <math|(2A*x+B)<rsup|2>\<equiv\>\<Delta\><pmod|p>>,
  dove <math|\<Delta\>=B<rsup|2>-4A*C>. La trasformazione è equivalente
  perché <math|4A> è invertibile modulo <math|p>.

  Prima cerchiamo le radici <math|y> di <math|y<rsup|2>\<equiv\>\<Delta\>>.
  Poi risolviamo la congruenza lineare <math|2A*x+B\<equiv\>y>: otteniamo
  <math|x\<equiv\>(2A)<rsup|-1>(y-B)>. Se il discriminante non è un quadrato,
  non ci sono soluzioni. Se è zero c'è una radice; se è un quadrato non nullo
  ci sono due radici opposte, perché <math|y<rsup|2>-z<rsup|2>=(y-z)(y+z)> e
  vale l'annullamento del prodotto.

  Per <math|x<rsup|2>+5x+3\<equiv\>0<pmod|11>>,
  <math|\<Delta\>=25-12=13\<equiv\>2>. I quadrati dei rappresentanti
  <math|0,1,2,3,4,5> sono <math|0,1,4,9,5,3>. Gli altri ripetono questi
  risultati, perché il quadrato di <math|-x> è quello di <math|x>. Il 2 non
  compare: nessuna soluzione.

  Se <math|p=2>, proviamo direttamente 0 e 1. Se <math|p\<mid\>A>, il termine
  quadratico scompare modulo <math|p> e studiamo la congruenza lineare o
  costante rimasta.

  <section|Sollevamento: una soluzione piccola va corretta>

  Vogliamo ora risolvere <math|x<rsup|2>\<equiv\>6<pmod|25>>. Chi risolve
  modulo 25 risolve anche modulo 5. Poiché <math|6\<equiv\>1<pmod|5>>, le
  sole classi iniziali possibili sono 1 e 4.

  Ma 1 non è una soluzione modulo 25: <math|1<rsup|2>-6=-5> è divisibile per
  5, non per 25. Dobbiamo cercare una correzione che conservi il resto 1
  modulo 5.

  Tutti i candidati sono <math|x=1+5h>. Per avere classi distinte modulo 25
  bastano <math|h=0,1,2,3,4>. Sostituiamo:

  <\equation*>
    (1+5h)<rsup|2>-6=-5+10h+25h<rsup|2>.
  </equation*>

  L'ultimo termine è già multiplo di 25. Gli altri lo sono insieme se
  <math|5(-1+2h)> è multiplo di 25, cioè se <math|-1+2h\<equiv\>0<pmod|5>>.
  Otteniamo <math|h\<equiv\>3>, quindi <math|x\<equiv\>16<pmod|25>>.

  Ripetiamo per il resto 4. Scriviamo <math|x=4+5h> e otteniamo

  <\equation*>
    (4+5h)<rsup|2>-6=10+40h+25h<rsup|2>.
  </equation*>

  Dobbiamo avere <math|2+8h\<equiv\>0<pmod|5>>, ossia <math|2+3h\<equiv\>0>.
  Questa volta <math|h\<equiv\>1> e <math|x\<equiv\>9<pmod|25>>.

  Abbiamo considerato entrambe le radici modulo 5 e tutti i candidati sopra
  ciascuna: le soluzioni sono esattamente <math|9,16> modulo 25. Il controllo
  dà <math|9<rsup|2>=81=3\<cdot\>25+6> e <math|16<rsup|2>=256=10\<cdot\>25+6>.

  <\concetto|Sollevare una soluzione>
    Sollevare una soluzione da modulo <math|p> a modulo <math|p<rsup|2>>
    significa cercare, tra i numeri con quel resto modulo <math|p>, quelli
    che soddisfano la condizione più forte. Si scrive <math|x=x<rsub|0>+p*h>
    e si determina la correzione <math|h> modulo <math|p>.
  </concetto>

  <section|Tre possibilità: una, nessuna o più correzioni>

  Per una quadratica <math|f(x)=A*x<rsup|2>+B*x+C>, supponiamo
  <math|f(x<rsub|0>)=p\<gamma\>>. Sviluppando il quadrato, come nell'esempio,
  troviamo

  <\equation*>
    f(x<rsub|0>+p*h)=p\<gamma\>+p*h(2A*x<rsub|0>+B)+A*p<rsup|2>h<rsup|2>.
  </equation*>

  La condizione modulo <math|p<rsup|2>> equivale quindi alla congruenza
  lineare

  <\equation*>
    \<gamma\>+h(2A*x<rsub|0>+B)\<equiv\>0<pmod|p>.
  </equation*>

  Se il coefficiente di <math|h> è non nullo modulo <math|p>, ha inverso e
  determina <strong|una sola correzione>. Se invece è zero, la correzione non
  può influire sul resto: quando <math|\<gamma\>\<nequiv\>0> non funziona
  nessun <math|h>; quando <math|\<gamma\>\<equiv\>0> funzionano tutti i
  <math|p> valori di <math|h>.

  Per vedere la differenza, confrontiamo due esempi. Per
  <math|x<rsup|2>\<equiv\>0<pmod|9>>, l'unica radice modulo 3 è 0; tutti i
  candidati <math|0,3,6> hanno quadrato divisibile per 9. Per
  <math|x<rsup|2>\<equiv\>3<pmod|9>>, partiamo ancora da 0 modulo 3, ma gli
  stessi tre quadrati danno sempre resto zero, mai 3. Qui non c'è nessun
  sollevamento.

  <figura|<image|assets/sollevamento.pdf|155.0mm|52.5mm||>|Una soluzione a un
  livello può avere una sola continuazione, <math|p> continuazioni oppure
  nessuna. I rami rappresentano possibilità controllate dall'equazione della
  correzione.>

  Per passare da <math|p<rsup|k>> a <math|p<rsup|k+1>>, usiamo
  <math|x=x<rsub|k>+p<rsup|k>h>. Sostituendo, il termine con il quadrato
  della correzione contiene <math|p<rsup|2k>>, dunque è multiplo di
  <math|p<rsup|k+1>> per <math|k\<geq\>1>. Dopo aver diviso per
  <math|p<rsup|k>> rimane ancora una congruenza lineare modulo <math|p>. Un
  ramo senza continuazioni non può produrre soluzioni più in alto.

  <section|Il teorema cinese ricompone le radici>

  Per risolvere una congruenza modulo <math|N>, scomponiamo <math|N> in
  potenze di primi distinti. Queste potenze sono a due a due coprime.
  Troviamo le radici su ogni pezzo; poi ogni scelta di una radice per pezzo
  dà un'unica classe modulo <math|N>.

  Per esempio, cerchiamo <math|x<rsup|2>\<equiv\>6<pmod|75>>. Modulo 25
  conosciamo le radici 9 e 16; modulo 3 serve <math|x\<equiv\>0>. Per il
  primo resto, <math|x=9+25k>: la condizione modulo 3 impone
  <math|k\<equiv\>0>, quindi <math|x\<equiv\>9<pmod|75>>. Per il secondo,
  <math|x=16+25k>, serve <math|1+k\<equiv\>0<pmod|3>>: <math|k\<equiv\>2>,
  quindi <math|x\<equiv\>66<pmod|75>>. Abbiamo esattamente due classi.

  <strong|Per proseguire: contare senza trovare ogni radice.> Consideriamo
  <math|x(x-1)\<equiv\>0<pmod|N>>, con <math|N\<gtr\>1> e <math|r> primi
  distinti nella sua fattorizzazione. Modulo ogni potenza <math|p<rsup|e>>, i
  due fattori consecutivi sono coprimi: tutti i fattori <math|p> devono stare
  nello stesso fattore. Quindi <math|x\<equiv\>0> oppure
  <math|x\<equiv\>1<pmod|p<rsup|e>>>. Le due scelte per ciascuno dei <math|r>
  pezzi producono, attraverso il cinese, esattamente <math|2<rsup|r>>
  soluzioni distinte modulo <math|N>.

  <subsection|In sintesi>

  I pilastri lavorano insieme: il <strong|campo> giustifica la cancellazione
  modulo un primo; le <strong|congruenze lineari> determinano le correzioni;
  il <strong|teorema cinese> ricompone i risultati. Il metodo conserva tutte
  le possibilità e controlla ogni volta le ipotesi che permettono il
  passaggio.

  <\verifica|12>
    <strong|1.> Trova tutte le soluzioni di
    <math|x<rsup|2>\<equiv\>4<pmod|25>>. Parti dalle radici modulo 5 e cerca
    una correzione per ciascuna.

    <strong|2.> Risolvi <math|x<rsup|2>\<equiv\>1<pmod|12>> separando i
    moduli 3 e 4. Perché possono comparire quattro radici?
  </verifica>

  <appendix|Soluzioni ragionate>

  Ogni sezione richiama un capitolo. Prova prima a impostare il problema; poi
  confronta il tuo ragionamento con la soluzione. Il numero 4.1, per esempio,
  indica il primo esercizio del capitolo 4.

  <subsection*|Capitolo 1 \<#2014\> Il linguaggio matematico e l'induzione>

  <strong|1.1.> Per <math|n=1> la formula è <math|1=1\<cdot\>2/2>. Supponiamo
  che valga all'indice <math|n>: <math|1+\<cdots\>+n=n(n+1)/2>. Aggiungendo
  l'ultimo termine della somma nuova otteniamo

  <\equation*>
    1+\<cdots\>+n+(n+1)=<frac|n(n+1)|2>+(n+1)=<frac|(n+1)(n+2)|2>.
  </equation*>

  Questa è la formula all'indice <math|n+1>. Base e passo dimostrano la tesi
  per ogni <math|n\<geq\>1>.

  <strong|1.2.> Partendo da 0 e aggiungendo 2 si raggiungono soltanto
  <math|0,2,4,6,\<ldots\>>. Il passo dimostra la proprietà all'indice
  <math|n+2>, mentre per l'induzione su tutti i naturali servirebbe passare
  da <math|n> a <math|n+1>. Si può applicare correttamente l'induzione a
  <math|Q(k)>: \S<math|2k> è pari\T. La conclusione riguarda tutti gli interi
  della forma <math|2k>, senza affermare che ogni naturale abbia quella
  forma.

  <subsection*|Capitolo 2 \<#2014\> Funzioni e conteggio>

  <strong|2.1.> Le funzioni totali sono <math|3<rsup|4>=81>. Per ciascuno dei
  tre valori di arrivo, le funzioni che lo evitano sono <math|2<rsup|4>=16>:
  sottraiamo <math|3\<cdot\>16>. Ma una funzione costante evita due valori ed
  è stata sottratta due volte; aggiungiamo le tre funzioni costanti, una per
  ogni coppia di valori evitati. Non ci sono funzioni che evitano tutti i
  valori, perché il dominio non è vuoto. Il totale è

  <\equation*>
    81-3\<cdot\>16+3\<cdot\>1=36.
  </equation*>

  <strong|2.2.> Assegniamo prima un'unità a ciascuna variabile: poniamo
  <math|u=x-1>, <math|v=y-1>, <math|w=z-1>. La nuova equazione è
  <math|u+v+w=4>, con variabili non negative. Stelle e sbarre dà
  <math|<binom|6|2>=15> soluzioni. Dividere sempre per 6 non funziona perché
  il numero degli ordinamenti non è uniforme: <math|(1,2,4)> ha sei
  ordinamenti distinti, mentre <math|(1,1,5)> ne ha soltanto tre. Le due
  terne non vengono contate lo stesso numero di volte.

  <subsection*|Capitolo 3 \<#2014\> Successioni e ricorrenze>

  <strong|3.1.> Le radici caratteristiche sono 1 e 2. Cerchiamo
  <math|a<rsub|n>=A+B2<rsup|n>>. I dati iniziali impongono <math|A+B=5> e
  <math|A+2B=7>. Sottraendo troviamo <math|B=2>, quindi <math|A=3>. La
  formula è <math|a<rsub|n>=3+2<rsup|n+1>>. Soddisfa la ricorrenza, essendo
  combinazione delle due soluzioni caratteristiche, e parte da 5, 7; per
  unicità è la successione richiesta. Il termine successivo è 11, sia dalla
  formula sia dal calcolo <math|3\<cdot\>7-2\<cdot\>5>.

  <strong|3.2.> Con <math|T<rsub|0>=T<rsub|1>=1>, la ricorrenza dà
  <math|T<rsub|2>=2>, <math|T<rsub|3>=3>, <math|T<rsub|4>=5>,
  <math|T<rsub|5>=8>, <math|T<rsub|6>=13>. Per il secondo conteggio, le
  coppie orizzontali possono essere 0, 1, 2 o 3. I contributi sono
  rispettivamente <math|<binom|6|0>=1>, <math|<binom|5|1>=5>,
  <math|<binom|4|2>=6>, <math|<binom|3|3>=1>. La somma è <math|1+5+6+1=13>.

  <subsection*|Capitolo 4 \<#2014\> Divisione, MCD e algoritmo di Euclide>

  <strong|4.1.> Il multiplo di 6 immediatamente precedente a <math|-29> è
  <math|-30>. Dunque <math|-29=(-5)\<cdot\>6+1>: quoziente <math|-5>, resto
  1. Il resto è non negativo e minore di 6, quindi la divisione rispetta
  entrambe le condizioni.

  <strong|4.2.> Le divisioni sono <math|84=2\<cdot\>30+24>,
  <math|30=1\<cdot\>24+6>, <math|24=4\<cdot\>6+0>. L'ultimo resto non nullo è
  6, perciò <math|gcd(84,30)=6>. Dopo la prima divisione sappiamo soltanto
  che il MCD cercato coincide con <math|gcd(30,24)>: il primo resto 24 non
  divide 30, quindi non è ancora il MCD.

  <subsection*|Capitolo 5 \<#2014\> Bézout e fattorizzazione in primi>

  <strong|5.1.> Euclide dà <math|30=18+12>, <math|18=12+6>,
  <math|12=2\<cdot\>6>. Risalendo, <math|6=18-12=18-(30-18)=2\<cdot\>18-30>.
  Ogni combinazione intera di 30 e 18 è multipla del MCD 6. Perciò 7 è
  impossibile; 12 è possibile, e moltiplicando l'identità per 2 troviamo
  <math|12=4\<cdot\>18-2\<cdot\>30>.

  <strong|5.2.> La fattorizzazione è <math|180=2<rsup|2>3<rsup|2>5>. I
  divisori positivi sono <math|(2+1)(2+1)(1+1)=18>. Scriviamo anche
  <math|48=2<rsup|4>3>. Per il MCD scegliamo gli esponenti minori, includendo
  esponente zero per 5: otteniamo <math|2<rsup|2>3=12>. Per il mcm scegliamo
  i maggiori: <math|2<rsup|4>3<rsup|2>5=720>. Il controllo
  <math|12\<cdot\>720=180\<cdot\>48> conferma il risultato.

  <subsection*|Capitolo 6 \<#2014\> Equazioni diofantee>

  <strong|6.1.> Il MCD di 4 e 6 è 2 e divide 14. Dividiamo per 2:
  <math|2x+3y=7>. Dalla soluzione <math|(2,1)> otteniamo tutte le altre con
  il passo <math|(3,-2)>:

  <\equation*>
    x=2+3t,<space|2em>y=1-2t,<space|2em>t\<in\>\<bbb-Z\>.
  </equation*>

  La non negatività chiede <math|t\<geq\>-2/3> e <math|t\<leq\>1/2>. L'unico
  intero nell'intervallo è 0, quindi l'unica soluzione non negativa è
  <math|(2,1)>.

  <strong|6.2.> Poniamo <math|u=x+y>, <math|v=x-y>. Serve <math|u*v=8>, con
  <math|u,v> della stessa parità. Le coppie <math|(1,8)> e <math|(8,1)> non
  vanno bene; quelle positive ammesse sono <math|(2,4),(4,2)>. Danno
  rispettivamente <math|(x,y)=(3,-1),(3,1)>. Le coppie negative
  <math|(-2,-4),(-4,-2)> danno <math|(-3,1),(-3,-1)>. Queste sono tutte le
  quattro soluzioni. Senza il controllo di parità avremmo incluso coordinate
  non intere.

  <subsection*|Capitolo 7 \<#2014\> Congruenze e classi>

  <strong|7.1.> Tre rappresentanti sono <math|-2,5,12>. Il rappresentante fra
  0 e 6 è 5, dato che <math|-2=(-1)\<cdot\>7+5>. Per le operazioni riduciamo
  prima: <math|[12]<rsub|7>=[5]<rsub|7>> e <math|[17]<rsub|7>=[3]<rsub|7>>.
  Quindi la somma è <math|[8]<rsub|7>=[1]<rsub|7>> e il prodotto è
  <math|[15]<rsub|7>=[1]<rsub|7>>. Somma e prodotto danno qui la stessa
  classe, pur essendo operazioni diverse.

  <strong|7.2.> La prima regola è ben definita: se
  <math|a\<equiv\>b<pmod|5>>, anche <math|a+1\<equiv\>b+1<pmod|5>>, perché la
  differenza resta <math|a-b>. La seconda non lo è: i rappresentanti 0 e 5
  indicano la stessa classe, ma produrrebbero gli interi distinti 1 e 6. Il
  codominio conta: nel primo caso il risultato è una classe, nel secondo è un
  intero.

  <subsection*|Capitolo 8 \<#2014\> Congruenze lineari e teorema cinese>

  <strong|8.1.> Il numero 5 è inverso di sé stesso modulo 12, perché
  <math|5\<cdot\>5=25\<equiv\>1<pmod|12>>. Per <math|8x\<equiv\>4<pmod|12>>
  il MCD è 4 e divide il termine noto. Dividendo coefficiente, termine noto e
  modulo per 4 otteniamo <math|2x\<equiv\>1<pmod|3>>. L'inverso di 2 modulo 3
  è 2, dunque <math|x\<equiv\>2<pmod|3>>. Nel modulo iniziale 12 le quattro
  classi sono quelle di <math|2,5,8,11>.

  <strong|8.2.> Il MCD dei moduli è 3 e divide <math|5-2=3>, quindi il
  sistema è compatibile. Scriviamo <math|x=2+6k> e sostituiamo:
  <math|6k\<equiv\>3<pmod|9>>. Dividendo per 3 otteniamo
  <math|2k\<equiv\>1<pmod|3>>, quindi <math|k\<equiv\>2<pmod|3>>. Ne segue
  <math|x=14+18t>, cioè <math|x\<equiv\>14<pmod|18>>. Il periodo è
  <math|<math-up|mcm>(6,9)=18>. Con secondo resto 4, il MCD 3 non divide
  <math|4-2=2>: nessuna soluzione.

  <subsection*|Capitolo 9 \<#2014\> Gruppi, anelli e campi>

  <strong|9.1.> L'insieme delle classi non nulle modulo 5 forma un gruppo con
  il prodotto. Sono tutte unità perché 5 è primo. Il neutro è <math|[1]>; gli
  inversi sono <math|[1]<rsup|-1>=[1]>, <math|[2]<rsup|-1>=[3]>,
  <math|[3]<rsup|-1>=[2]> e <math|[4]<rsup|-1>=[4]>. Controlliamo i prodotti:
  <math|2\<cdot\>3=6\<equiv\>1> e <math|4\<cdot\>4=16\<equiv\>1<pmod|5>>. La
  chiusura segue anche dall'annullamento del prodotto: due classi non nulle
  non possono dare zero in un campo. Aggiungendo <math|[0]> mancherebbe il
  suo inverso: nessun prodotto con zero può dare <math|[1]>.

  <strong|9.2.> Se <math|[a]<rsub|6>=[b]<rsub|6>>, la differenza <math|a-b> è
  un multiplo di 6 e quindi di 3: <math|[a]<rsub|3>=[b]<rsub|3>>. La funzione
  è ben definita. Inoltre <math|f([a]+[b])=[a+b]<rsub|3>=f([a])+f([b])>;
  analogamente <math|f([a][b])=[a*b]<rsub|3>=f([a])f([b])>, e
  <math|f([1]<rsub|6>)=[1]<rsub|3>>. È un omomorfismo unitario. Non è un
  isomorfismo: <math|[0]<rsub|6>> e <math|[3]<rsub|6>> sono distinte, ma
  hanno la stessa immagine <math|[0]<rsub|3>>. Dunque non è iniettiva.

  <subsection*|Capitolo 10 \<#2014\> Sottogruppi e cicli>

  <strong|10.1.> I multipli successivi di <math|[8]> sono
  <math|[0],[8],[4],[0],\<ldots\>>. Il generato è
  <math|<around|{|[0],[4],[8]|}>> e l'ordine di <math|[8]> è 3: né uno né due
  passi danno zero, mentre <math|3\<cdot\>8=24\<equiv\>0<pmod|12>>. La
  differenza di due multipli di <math|[8]> è ancora un multiplo di
  <math|[8]>: <math|r[8]-s[8]=(r-s)[8]>. Questo verifica il criterio additivo
  del sottogruppo per tutti gli elementi, senza dover provare separatamente
  ogni coppia.

  <strong|10.2.> I cicli sono disgiunti, quindi possiamo calcolare le potenze
  separatamente. Il quadrato di <math|(1 2 3)> è <math|(1 3 2)>, quello di
  <math|(4 5)> è l'identità. Dunque <math|\<rho\><rsup|2>=(1 3 2)>. Per
  invertire ciascun ciclo percorriamo le frecce al contrario:
  <math|\<rho\><rsup|-1>=(1 3 2)(4 5)>. Una potenza di <math|\<rho\>> è
  l'identità se e solo se entrambi i cicli sono tornati alla partenza:
  l'esponente deve essere multiplo di 3 e di 2. Il minimo positivo è
  <math|<math-up|mcm>(3,2)=6>, che è l'ordine cercato.

  <subsection*|Capitolo 11 \<#2014\> Potenze e decimali>

  <strong|11.1.> Le potenze di 2 modulo 7 sono <math|1,2,4,1,\<ldots\>>. Il
  primo ritorno a 1 ha esponente 3. Il resto 4 compare all'esponente 2,
  perciò <math|x\<equiv\>2<pmod|3>>. Per <math|x\<in\>\<bbb-N\>> possiamo
  scrivere <math|x=2+3k> con <math|k\<geq\>0>. Non ci sono altri esponenti
  perché ogni esponente ha uno dei tre resti 0,1,2 modulo l'ordine, e solo il
  resto 2 produce 4.

  <strong|11.2.> La frazione <math|7/80> è ridotta, e
  <math|80=2<rsup|4>\<cdot\>5>. Non rimangono fattori diversi da 2 e 5,
  quindi il decimale termina dopo quattro cifre:
  <math|7/80=875/10000=0,0875>. Per <math|x=0,2<wide|7|\<bar\>>> abbiamo
  <math|10x=2,777\<ldots\>> e <math|100x=27,777\<ldots\>>. Sottraendo,
  <math|90x=25>, dunque <math|x=25/90=5/18>. La moltiplicazione per 10
  elimina la cifra iniziale; quella per 100 sposta anche una copia del
  periodo.

  <subsection*|Capitolo 12 \<#2014\> Quadratiche e potenze prime>

  <strong|12.1.> Modulo 5, <math|x<rsup|2>\<equiv\>4> ha le radici 2 e 3.
  Sopra 2 scriviamo <math|x=2+5h>: <math|x<rsup|2>-4=20h+25h<rsup|2>>. La
  divisibilità per 25 richiede <math|4h\<equiv\>0<pmod|5>>, dunque
  <math|h\<equiv\>0> e <math|x\<equiv\>2<pmod|25>>. Sopra 3, <math|x=3+5h> dà
  <math|x<rsup|2>-4=5+30h+25h<rsup|2>>. La condizione è
  <math|1+h\<equiv\>0<pmod|5>>, dunque <math|h\<equiv\>4> e
  <math|x\<equiv\>23<pmod|25>>. Queste sono tutte le radici; il controllo dà
  <math|23<rsup|2>=529=21\<cdot\>25+4>.

  <strong|12.2.> Modulo 3 le radici sono 1 e 2; modulo 4 sono 1 e 3, come si
  controlla sui quattro resti. Le quattro combinazioni di condizioni
  corrispondono, per il teorema cinese, a quattro classi distinte modulo 12.
  Tra i resti <math|0,\<ldots\>,11>, le radici sono <math|1,5,7,11>. Infatti
  sono i quattro numeri dispari non divisibili per 3; ciascuno ha quadrato
  congruo a 1 sia modulo 4 sia modulo 3. Le quattro radici sono possibili
  perché il modulo è composto: non stiamo lavorando in un campo.
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
    <associate|auto-10|<tuple|2.3|10>>
    <associate|auto-11|<tuple|2.4|11>>
    <associate|auto-12|<tuple|2.5|12>>
    <associate|auto-13|<tuple|2.6|12>>
    <associate|auto-14|<tuple|3|14>>
    <associate|auto-15|<tuple|3.1|14>>
    <associate|auto-16|<tuple|3.2|15>>
    <associate|auto-17|<tuple|3.3|15>>
    <associate|auto-18|<tuple|3.4|16>>
    <associate|auto-19|<tuple|4|18>>
    <associate|auto-2|<tuple|1|5>>
    <associate|auto-20|<tuple|4.1|18>>
    <associate|auto-21|<tuple|4.2|18>>
    <associate|auto-22|<tuple|4.3|19>>
    <associate|auto-23|<tuple|4.4|19>>
    <associate|auto-24|<tuple|5|21>>
    <associate|auto-25|<tuple|5.1|21>>
    <associate|auto-26|<tuple|5.2|21>>
    <associate|auto-27|<tuple|5.3|22>>
    <associate|auto-28|<tuple|5.4|22>>
    <associate|auto-29|<tuple|5.5|23>>
    <associate|auto-3|<tuple|1.1|5>>
    <associate|auto-30|<tuple|6|25>>
    <associate|auto-31|<tuple|6.1|25>>
    <associate|auto-32|<tuple|6.2|25>>
    <associate|auto-33|<tuple|6.3|26>>
    <associate|auto-34|<tuple|6.4|27>>
    <associate|auto-35|<tuple|6.5|27>>
    <associate|auto-36|<tuple|7|29>>
    <associate|auto-37|<tuple|7.1|29>>
    <associate|auto-38|<tuple|7.2|29>>
    <associate|auto-39|<tuple|7.3|30>>
    <associate|auto-4|<tuple|1.2|5>>
    <associate|auto-40|<tuple|7.4|31>>
    <associate|auto-41|<tuple|7.5|31>>
    <associate|auto-42|<tuple|8|33>>
    <associate|auto-43|<tuple|8.1|33>>
    <associate|auto-44|<tuple|8.2|33>>
    <associate|auto-45|<tuple|8.3|34>>
    <associate|auto-46|<tuple|8.4|35>>
    <associate|auto-47|<tuple|8.5|36>>
    <associate|auto-48|<tuple|9|37>>
    <associate|auto-49|<tuple|9.1|37>>
    <associate|auto-5|<tuple|1.3|7>>
    <associate|auto-50|<tuple|9.2|37>>
    <associate|auto-51|<tuple|9.3|38>>
    <associate|auto-52|<tuple|9.4|38>>
    <associate|auto-53|<tuple|9.5|39>>
    <associate|auto-54|<tuple|10|40>>
    <associate|auto-55|<tuple|10.1|40>>
    <associate|auto-56|<tuple|10.2|40>>
    <associate|auto-57|<tuple|10.3|41>>
    <associate|auto-58|<tuple|10.4|42>>
    <associate|auto-59|<tuple|10.5|43>>
    <associate|auto-6|<tuple|1.4|7>>
    <associate|auto-60|<tuple|11|44>>
    <associate|auto-61|<tuple|11.1|44>>
    <associate|auto-62|<tuple|11.2|44>>
    <associate|auto-63|<tuple|11.3|45>>
    <associate|auto-64|<tuple|11.4|45>>
    <associate|auto-65|<tuple|11.5|46>>
    <associate|auto-66|<tuple|12|47>>
    <associate|auto-67|<tuple|12.1|47>>
    <associate|auto-68|<tuple|12.2|47>>
    <associate|auto-69|<tuple|12.3|48>>
    <associate|auto-7|<tuple|2|9>>
    <associate|auto-70|<tuple|12.4|48>>
    <associate|auto-71|<tuple|12.5|49>>
    <associate|auto-72|<tuple|A|50>>
    <associate|auto-8|<tuple|2.1|9>>
    <associate|auto-9|<tuple|2.2|10>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Un
      percorso, un tassello alla volta> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn><no-page-break>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Il
      linguaggio matematico e l'induzione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn><no-page-break>

      1.1<space|2spc>Insiemi ed enunciati: che cosa stiamo dicendo?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      1.2<space|2spc>Induzione: passare da un caso al successivo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>

      1.3<space|2spc>Il principio del minimo e il più piccolo controesempio
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>

      1.4<space|2spc>Induzione forte: usare tutti i casi precedenti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Funzioni
      e conteggio> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn><no-page-break>

      2.1<space|2spc>Funzioni: associare a ogni elemento una sola immagine
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      2.2<space|2spc>Sommare i casi e moltiplicare le scelte
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>

      2.3<space|2spc>Coefficienti binomiali: scegliere senza ordinare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>

      2.4<space|2spc>Binomio di Newton e doppio conteggio
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>

      2.5<space|2spc>Inclusione-esclusione: correggere le sovrapposizioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>

      2.6<space|2spc>Per proseguire: due applicazioni del conteggio
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Successioni
      e ricorrenze> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn><no-page-break>

      3.1<space|2spc>Una ricorrenza nasce dalle tassellazioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>

      3.2<space|2spc>La regola e i dati iniziali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>

      3.3<space|2spc>Equazione caratteristica: cercare una formula
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>

      3.4<space|2spc>Fibonacci e il ritorno alle tassellazioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Divisione,
      MCD e algoritmo di Euclide> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn><no-page-break>

      4.1<space|2spc>Divisibilità: riconoscere un multiplo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>

      4.2<space|2spc>Divisione euclidea: il resto va scelto bene
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>

      4.3<space|2spc>MCD: ciò che i divisori hanno in comune
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>

      4.4<space|2spc>Algoritmo di Euclide: conservare i divisori, ridurre i
      numeri <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Bézout
      e fattorizzazione in primi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24><vspace|0.5fn><no-page-break>

      5.1<space|2spc>Identità di Bézout: costruire il MCD
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>

      5.2<space|2spc>Quali numeri possiamo ottenere combinando due interi?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>

      5.3<space|2spc>Lemma di Euclide: quando possiamo togliere un fattore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>

      5.4<space|2spc>Numeri primi e fattorizzazione unica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>

      5.5<space|2spc>Divisori e mcm: leggere gli esponenti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Equazioni
      diofantee> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30><vspace|0.5fn><no-page-break>

      6.1<space|2spc>Che cosa cambia se le soluzioni devono essere intere?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>

      6.2<space|2spc>Esistenza delle soluzioni: il criterio del MCD
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>

      6.3<space|2spc>Da una soluzione a tutte le soluzioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>

      6.4<space|2spc>Aggiungere vincoli: il problema diventa un intervallo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>

      6.5<space|2spc>Per proseguire: differenze di quadrati
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Congruenze
      e classi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36><vspace|0.5fn><no-page-break>

      7.1<space|2spc>Congruenze: quando due interi hanno lo stesso resto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>

      7.2<space|2spc>Classi di congruenza: una famiglia diventa un oggetto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>

      7.3<space|2spc>Relazioni di equivalenza: l'idea generale dietro le
      classi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>

      7.4<space|2spc>Fare somme e prodotti con le classi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>

      7.5<space|2spc>Per proseguire: anche i razionali sono classi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Congruenze
      lineari e teorema cinese> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42><vspace|0.5fn><no-page-break>

      8.1<space|2spc>Inversi modulari: che cosa significa dividere?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>

      8.2<space|2spc>Cancellazione: quando il modulo deve cambiare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>

      8.3<space|2spc>Congruenze lineari: una diofantea sui resti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>

      8.4<space|2spc>Teorema cinese: combinare due informazioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>

      8.5<space|2spc>Moduli non coprimi: compatibilità e mcm
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Gruppi,
      anelli e campi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48><vspace|0.5fn><no-page-break>

      9.1<space|2spc>Prima domanda: su quali oggetti facciamo i conti?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>

      9.2<space|2spc>Gruppo: un'operazione che possiamo invertire
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>

      9.3<space|2spc>Anello: somma e prodotto insieme
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>

      9.4<space|2spc>Campo: dividere per ogni elemento non nullo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>

      9.5<space|2spc>Omomorfismi: cambiare oggetti conservando i conti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Sottogruppi,
      gruppi ciclici e permutazioni> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54><vspace|0.5fn><no-page-break>

      10.1<space|2spc>Sottogruppo: quali elementi possiamo tenere?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>

      10.2<space|2spc>Gruppo ciclico: partire da un solo elemento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>

      10.3<space|2spc>Ordine: dopo quanti passi torniamo al neutro?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>

      10.4<space|2spc>Permutazioni: comporre cambiamenti di posizione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>

      10.5<space|2spc>Per proseguire: altre immagini dei sottogruppi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Potenze
      modulari e sviluppi decimali> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60><vspace|0.5fn><no-page-break>

      11.1<space|2spc>Potenze modulari: cercare dentro un ciclo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>

      11.2<space|2spc>Spezzare il modulo, poi ricomporre gli esponenti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>

      11.3<space|2spc>Decimali periodici: che cosa si ripete nella divisione?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>

      11.4<space|2spc>Dal periodo alla frazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>

      11.5<space|2spc>Il denominatore anticipa la forma del decimale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Congruenze
      quadratiche e potenze prime> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66><vspace|0.5fn><no-page-break>

      12.1<space|2spc>Un quadrato modulo un primo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67>

      12.2<space|2spc>Per proseguire: il discriminante modulo un primo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>

      12.3<space|2spc>Sollevamento: una soluzione piccola va corretta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>

      12.4<space|2spc>Tre possibilità: una, nessuna o più correzioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70>

      12.5<space|2spc>Il teorema cinese ricompone le radici
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendice
      A<space|2spc>Soluzioni ragionate> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72><vspace|0.5fn><no-page-break>
    </associate>
  </collection>
</auxiliary>