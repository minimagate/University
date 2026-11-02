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
    <assign|section-toc|<macro|name|>> <assign|box-label|<macro|x|<with|font-shape|small-caps|font-series|bold|<arg|x>>>>
    <assign|box-head|<macro|label|title|<box-label|<arg|label>><if|<equal|<arg|title>|>||<space|0.4spc>\<cdot\><space|0.4spc><with|font-series|bold|math-font-series|bold|<arg|title>>>>>
    <assign|box2|<macro|lb|tb|bb|bg|hsep|head|body|<box3|<arg|lb>|<arg|tb>|<arg|bb>|0ln|<arg|bg>|<arg|hsep>|<arg|head>|<arg|body>>>>
    <assign|box3|<macro|lb|tb|bb|rb|bg|hsep|head|body|<surround|<no-indent>||<tabular|<tformat|<twith|table-width|1par>|<cwith|1|2|1|1|cell-width|1par>|<cwith|1|2|1|1|cell-hyphen|t>|<cwith|1|2|1|1|cell-lborder|<arg|lb>>|<cwith|1|2|1|1|cell-rborder|<arg|rb>>|<cwith|1|1|1|1|cell-tborder|<arg|tb>>|<cwith|2|2|1|1|cell-bborder|<arg|bb>>|<cwith|1|2|1|1|cell-lsep|<arg|hsep>>|<cwith|1|2|1|1|cell-rsep|<arg|hsep>>|<cwith|1|1|1|1|cell-tsep|0.75fn>|<cwith|1|1|1|1|cell-bsep|0.3fn>|<cwith|2|2|1|1|cell-tsep|0fn>|<cwith|2|2|1|1|cell-bsep|0.75fn>|<cwith|1|2|1|1|cell-background|<arg|bg>>|<table|<row|<cell|<arg|head>>>|<row|<cell|<arg|body>>>>>>>>>
    <assign|guidato|<macro|title|body|<padded|<box2|0ln|0ln|0ln|#efefeb|1.2spc|<box-head|Esercizio
    guidato|<arg|title>>|<arg|body>>>>> <assign|attenzione|<macro|title|body|<padded|<box2|1.8pt|0ln|0ln||1.3spc|<box-head|Attenzione|<arg|title>>|<arg|body>>>>>
    <assign|immagine|<macro|title|body|<padded|<box3|0.45pt|0.45pt|0.45pt|0.45pt||1.2spc|<box-head|Immagine
    mentale|<arg|title>>|<arg|body>>>>> <assign|officina|<macro|title|body|<padded|<box2|0ln|1.2pt|0.45pt||0spc|<box-head|Officina
    della dimostrazione|<arg|title>>|<arg|body>>>>>
    <assign|inbreve|<macro|body|<padded|<box2|0.45pt|0ln|0ln||1.2spc|<box-label|In
    breve>|<arg|body>>>>> <assign|verifica|<macro|num|body|<padded|<box2|0ln|0.45pt|0ln||0spc|<box-label|Verifica
    <arg|num>>|<arg|body>>>>> <assign|figura|<macro|img|cap|<padded|<surround|<no-indent>||<tabular|<tformat|<twith|table-width|1par>|<cwith|1|2|1|1|cell-width|1par>|<cwith|1|2|1|1|cell-halign|c>|<cwith|2|2|1|1|cell-hyphen|t>|<cwith|1|2|1|1|cell-lsep|0pt>|<cwith|1|2|1|1|cell-rsep|0pt>|<cwith|1|1|1|1|cell-bsep|0.5fn>|<cwith|2|2|1|1|cell-tsep|0pt>|<table|<row|<cell|<arg|img>>>|<row|<cell|<with|par-mode|center|font-size|0.86|<arg|cap>>>>>>>>>>>
  </hide-preamble> <\hide-preamble>
    <assign|codice|<macro|body|<padded|<surround|<no-indent>||<tabular|<tformat|<twith|table-width|1par>|<cwith|1|1|1|1|cell-width|1par>|<cwith|1|1|1|1|cell-hyphen|t>|<cwith|1|1|1|1|cell-lborder|0.45pt>|<cwith|1|1|1|1|cell-lsep|1.1spc>|<cwith|1|1|1|1|cell-tsep|0.25fn>|<cwith|1|1|1|1|cell-bsep|0.25fn>|<table|<row|<cell|<with|font-family|tt|font-size|0.93|par-par-sep|0fn|par-sep|0.08fn|<arg|body>>>>>>>>>>>
    <assign|hoare|<macro|p|c|r|{<arg|p>}<space|0.3em><arg|c><space|0.3em>{<arg|r>}>>
    <assign|vero|<macro|<text|<with|font-family|ss|t>>>>
    <assign|falso|<macro|<text|<with|font-family|ss|f>>>>
  </hide-preamble>

  <assign|page-this-header|><assign|page-this-footer|>

  <\with|par-mode|center>
    <vspace*|7.5cm>

    <with|font-size|2.8|Fondamenti di>

    <with|font-size|2.8|Programmazione>

    <vspace|1.4fn>

    <with|font-shape|small-caps|font-size|1.25|settembre e ottobre 2026>
  </with>

  <chapter*|Come usare questo libro>

  Questo libro raccoglie le lezioni di Fondamenti di Programmazione dal 19
  settembre al 29 ottobre 2026 e le rimette in un ordine che costruisce un
  mattone alla volta. Si parte da che cosa sono un algoritmo e uno stato, si
  impara la logica che serve per scrivere frasi precise (proposizioni, poi
  quantificatori) e la si usa infine per <em|dimostrare> che un programma fa
  quello che promette: triple di Hoare, invarianti, funzioni di terminazione,
  array.

  È un libro leggero: pochi concetti, molti esempi eseguiti a mano. Lungo il
  testo trovi cinque tipi di riquadro.

  <\itemize>
    <item><strong|In breve>: all'inizio di ogni capitolo, che cosa impareremo
    e perché.

    <item><strong|Esercizio guidato>: un problema risolto passo per passo.
    Prova a fare ogni passo da solo prima di leggerlo.

    <item><strong|Attenzione>: un errore tipico, e come evitarlo.

    <item><strong|Immagine mentale>: un modo di vedere un'idea che la rende
    facile da ricordare.

    <item><strong|Officina della dimostrazione>: in ogni capitolo un attrezzo
    del ragionamento (leggere una specifica, cercare un controesempio,
    calcolare all'indietro, trovare un invariante\<ldots\>); l'appendice A li
    riassume.
  </itemize>

  Ogni capitolo finisce con una breve <strong|verifica>. Le risposte sono
  nell'appendice B.

  <strong|Convenzioni.> I valori di verità sono <vero> (vero) e <falso>
  (falso); <math|T> e <math|F> sono invece le <em|formule> sempre vera e
  sempre falsa. Il codice è scritto nel linguaggio didattico del corso
  (<text|<with|font-family|tt|:=>>, <text|<with|font-family|tt|if \<ldots\>
  then \<ldots\> else \<ldots\> fi>>, <text|<with|font-family|tt|while
  \<ldots\> do \<ldots\> endw>>); le asserzioni tra graffe non si eseguono.
  Le figure, gli esempi aggiuntivi, le verifiche e gli svolgimenti degli
  esercizi lasciati aperti nelle slide sono integrazioni didattiche, non
  parole del docente; dove il libro corregge un refuso delle slide lo dice.

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Come usare
    questo libro> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Dal
    problema al programma> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Proposizioni:
    forma e significato> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>Dimostrare
    con le leggi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>Il
    linguaggio del primo ordine> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>Verità
    e leggi nel primo ordine> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>Stati,
    espressioni e comandi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Triple
    di Hoare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8<space|2spc>Cicli:
    invarianti e terminazione> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9<space|2spc>Array
    e progetto di cicli> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendice
    A<space|2spc>La cassetta degli attrezzi>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendice
    B<space|2spc>Risposte alle verifiche>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>
  </table-of-contents>

  <chapter|Dal problema al programma>

  <\inbreve>
    Al centro dell'informatica non c'è la macchina ma l'<strong|algoritmo>:
    una procedura così precisa che un esecutore può seguirla senza capirla.
    In questo capitolo vediamo come si passa da un problema detto a parole a
    un programma, e scopriamo l'idea che regge tutto il corso: un calcolo è
    una successione di <strong|stati>.
  </inbreve>

  <section|Che cosa studia l'informatica>

  L'informatica non è la tecnica dei calcolatori, né l'uso dei programmi, né
  soltanto imparare a scriverli. Secondo la definizione dell'ACM è lo studio
  sistematico degli <em|algoritmi> che descrivono e trasformano
  l'informazione: la loro teoria, analisi, progetto, efficienza,
  realizzazione e applicazione.

  Il corso vuole allenare il <strong|pensiero computazionale>: rendere un
  problema descrivibile, risolvibile e verificabile da un esecutore. Ha
  quattro ingredienti:

  <\enumerate>
    <item><strong|astrazione>: tenere ciò che conta, ignorare i dettagli;

    <item><strong|scomposizione>: dividere un problema grande in problemi
    piccoli;

    <item><strong|riconoscimento di schemi>: accorgersi delle regolarità;

    <item><strong|algoritmo e automazione>: scrivere una procedura eseguibile
    e controllarne l'effetto.
  </enumerate>

  Un <strong|algoritmo> è una sequenza di passi che, eseguita da un esecutore
  adatto, porta dai dati ai risultati attesi. Ne usiamo tutti i giorni:
  istruzioni di montaggio, la lavastoviglie, il bancomat. Il nome viene dal
  matematico persiano al-Khw\<#101\>rizm\<#12B\> (circa 780\<#2013\>850), le
  cui opere portarono in Europa la numerazione posizionale con lo zero.

  Due algoritmi antichissimi. Il papiro di Rhind (circa 1650 a.C.) moltiplica
  con soli raddoppi, dimezzamenti e somme:

  <\equation*>
    A=1\<Rightarrow\>A\<cdot\>B=B,<space|2em>A<text|
    pari>\<Rightarrow\>A\<cdot\>B=<frac|A|2>\<cdot\>(2B),<space|2em>A<text|
    dispari>\<Rightarrow\>A\<cdot\>B=(A-1)\<cdot\>B+B.
  </equation*>

  Euclide calcola il massimo comun divisore senza elencare i divisori, con
  sottrazioni:

  <\equation*>
    <math-up|MCD>(x,x)=x.
  </equation*>

  <\equation*>
    <math-up|MCD>(x,y)=<math-up|MCD>(x-y,y)<text| se >x\<gtr\>y\<gtr\>0.
  </equation*>

  <\equation*>
    <math-up|MCD>(x,y)=<math-up|MCD>(x,y-x)<text| se >y\<gtr\>x\<gtr\>0.
  </equation*>

  <\guidato|Due algoritmi a mano>
    Calcola <math|13\<cdot\>11> con il metodo egizio e
    <math|<math-up|MCD>(12,18)> con le sottrazioni.

    <em|Idea.> Ogni regola trasforma il problema in uno più piccolo dello
    stesso tipo, finché si arriva al caso che si sa risolvere subito.

    <em|Conto.> <math|13\<cdot\>11=12\<cdot\>11+11>;
    <math|12\<cdot\>11=6\<cdot\>22=3\<cdot\>44>;
    <math|3\<cdot\>44=2\<cdot\>44+44=1\<cdot\>88+44>. Raccogliendo:
    <math|13\<cdot\>11=88+44+11=143>.

    Per Euclide: <math|(12,18)\<rightarrow\>(12,6)\<rightarrow\>(6,6)>,
    quindi il MCD è <math|6>.

    <em|Controllo.> <math|13\<cdot\>11=143> e <math|12=2\<cdot\>6>,
    <math|18=3\<cdot\>6> con <math|2,3> senza fattori comuni.
  </guidato>

  <section|Le quattro fasi della programmazione>

  Programmare significa passare da un problema a un programma che lo risolve.
  A un primo livello ci sono quattro fasi.

  <figura|<image|fondamenti-di-programmazione-1-assets/fasi.pdf|160.0mm|62.5mm||>|Le
  quattro fasi. L'esecuzione può rivelare errori nati in qualunque fase
  precedente: la messa a punto (<em|debugging>) torna indietro fin dove
  serve.>

  <strong|Specifica.> Capire e definire il problema: lo <strong|stato
  iniziale> (i dati, <em|input>) e lo <strong|stato finale> atteso (i
  risultati, <em|output>). Esempi: \Sdati due numeri, trova il maggiore\T;
  \Sdati un elenco telefonico e un nome, trova il numero\T; \Sdato un
  programma e un input, decidi se il programma termina\T (il <strong|problema
  dell'arresto>). Gli esempi mostrano limiti diversi: una specifica non dice
  <em|come> risolvere il problema; può essere ambigua (due persone con lo
  stesso nome); per alcuni problemi non si conosce un metodo (trovare un pari
  maggiore di <math|2> che non sia somma di due primi, la congettura di
  Goldbach); per l'arresto è dimostrato che un metodo generale <em|non può
  esistere>. Nel corso ci occupiamo di problemi <strong|decidibili>, per cui
  un metodo esiste.

  <strong|Algoritmo.> Un procedimento risolutivo è un algoritmo se ha tre
  requisiti: <strong|finitezza> (un numero finito di passi elementari),
  <strong|non ambiguità> (ogni passo si interpreta in un solo modo: \Ssale
  quanto basta\T non va bene per un esecutore automatico) ed
  <strong|eseguibilità> (ogni passo si completa in tempo finito con le
  risorse disponibili).

  <strong|Codifica.> Si sceglie come rappresentare gli oggetti e si scrive
  l'algoritmo in un linguaggio che l'esecutore conosce. Per un calcolatore il
  linguaggio è un linguaggio di programmazione, e il risultato è un programma
  con dati in ingresso, dati ausiliari (usati durante il calcolo) e dati in
  uscita.

  <strong|Esecuzione.> Si esegue il programma. Se il risultato non è quello
  voluto, la colpa può stare in qualunque fase: una specifica sbagliata, un
  algoritmo che dimentica un caso, una traduzione scorretta. Gli strumenti
  che aiutano a trovare gli errori (<em|bug>) si chiamano <strong|debugger>.

  Algoritmi diversi possono risolvere lo stesso problema con efficienza molto
  diversa. Per cercare un nome in un elenco ordinato, la <strong|ricerca
  binaria> apre l'elenco a metà, confronta, e continua solo nella metà
  giusta: a ogni passo scarta metà dei candidati.

  <figura|<image|fondamenti-di-programmazione-1-assets/ricerca-binaria.pdf|160.0mm|60.0mm||>|Ricerca
  binaria di <math|47> fra sedici numeri ordinati. Il riquadro spesso è
  l'elemento confrontato; il grigio è la parte già scartata. Bastano quattro
  confronti invece di dodici.>

  <section|L'esecutore conta>

  Specifica: \Sdati due interi positivi <math|A> e <math|B>, ottenere
  <math|A\<cdot\>B>\T. Se l'esecutore è una persona con la calcolatrice,
  l'algoritmo è banale: digita <math|A>, il tasto
  <text|<with|font-family|tt|*>>, <math|B>, il tasto
  <text|<with|font-family|tt|=>>.

  Se invece l'esecutore sa solo sommare, sottrarre e confrontare, serve un
  altro algoritmo, basato su <math|A\<cdot\>B=A+A+\<cdots\>+A> (<math|B>
  volte):

  <\enumerate>
    <item>scrivi <math|A> e <math|B>; scrivi <math|0> in un riquadro
    ausiliario <math|C>;

    <item>finché <math|B\<gtr\>0>: somma <math|A> a <math|C> e togli <math|1>
    a <math|B>;

    <item>il risultato è in <math|C>.
  </enumerate>

  Qui <math|A> è il valore da sommare, <math|B> conta le somme che mancano e
  <math|C> accumula il risultato. Per un bambino che sa fare i conti su un
  quaderno, i \Sriquadri\T sono tre caselle disegnate sul foglio, in cui si
  cancella e si riscrive.

  <\attenzione|L'algoritmo dipende dall'esecutore>
    Lo stesso problema richiede algoritmi diversi per esecutori diversi. Un
    algoritmo è caratterizzato dal problema <em|e> dalle operazioni
    elementari che l'esecutore sa eseguire.
  </attenzione>

  <section|Stati>

  In ogni momento dell'esecuzione le informazioni rilevanti formano uno
  <strong|stato>: il contenuto dei riquadri del quaderno, il contenuto della
  memoria di un calcolatore (modello di von Neumann), il piano a cui si trova
  un ascensore. L'azione da fare dipende dallo stato: l'ascensore al piano
  <math|2> chiamato al <math|3> sale, al piano <math|4> scende.

  In astratto, uno stato è un insieme di <strong|associazioni> tra nomi
  simbolici e valori, scritte <math|X\<mapsto\><math-up|val>>:

  <\equation*>
    {<math-up|nome>\<mapsto\><text|Antonio>,<math-up|cognome>\<mapsto\><text|Rossi>,<math-up|età>\<mapsto\>25},<space|2em>{A\<mapsto\>25,B\<mapsto\>350}.
  </equation*>

  C'è un solo vincolo: <strong|ogni nome ha al più un valore>.
  <math|{<math-up|nome>\<mapsto\><text|Antonio>,<math-up|nome>\<mapsto\><text|Paolo>}>
  non è uno stato: quale nome useremmo? Un nome può invece mancare del tutto.

  Un <strong|algoritmo> è allora una sequenza di passi elementari che
  modificano lo stato fino a quello desiderato, e un'esecuzione è una
  successione di stati <math|S<rsub|0>\<rightarrow\>S<rsub|1>\<rightarrow\>\<cdots\>\<rightarrow\>S<rsub|f>>.
  Nel paradigma imperativo deve esserci almeno un'azione che cambia lo stato:
  in C sarà l'<strong|assegnamento>.

  <\guidato|Eseguire <math|5\<cdot\>3> per somme>
    Parti dallo stato <math|{A\<mapsto\>5,B\<mapsto\>3,C\<mapsto\>0}> ed
    esegui l'algoritmo.

    <em|Idea.> A ogni giro si controlla <math|B\<gtr\>0>; se è vero, <math|C>
    cresce di <math|A> e <math|B> cala di <math|1>.

    <em|Conto.> Gli stati sono quelli della figura.

    <figura|<image|fondamenti-di-programmazione-1-assets/quaderno.pdf|155.0mm|42.5mm||>|L'esecuzione
    come successione di stati: tre giri, poi <math|B=0> e ci si ferma. Il
    risultato è in <math|C>.>

    <em|Controllo.> <math|C=15=5\<cdot\>3>. In aula il primo conto a mano
    aveva dato <math|18>: era un errore di <em|esecuzione> (un passo
    sbagliato), non dell'<em|algoritmo>. Sono due correttezze diverse.
  </guidato>

  La specifica del prodotto, scritta con gli stati, è

  <\equation*>
    {<math-up|fattore1>\<mapsto\>a,<math-up|fattore2>\<mapsto\>b}<space|1em>\<longrightarrow\><space|1em>{<math-up|prodotto>\<mapsto\>a\<cdot\>b}.
  </equation*>

  Qui <math|a> e <math|b> non sono numeri precisi: sono <strong|variabili di
  specifica>, nomi per i valori iniziali. La specifica non dice nulla sui
  valori finali di <math|<math-up|fattore1>>, <math|<math-up|fattore2>> o di
  altri nomi: interessa solo <math|<math-up|prodotto>>.

  <\officina|1. Leggere una specifica>
    Prima di scrivere una riga di algoritmo, rispondi a quattro domande.

    <\itemize>
      <item><em|Che cosa so all'inizio?> Lo stato iniziale: quali nomi, quali
      valori, quali condizioni (\Sinteri positivi\T).

      <item><em|Che cosa devo ottenere?> Lo stato finale, scritto in funzione
      dei valori iniziali (<math|a\<cdot\>b>, non \Sil prodotto\T in
      generale).

      <item><em|Che cosa non mi è chiesto?> I nomi su cui la specifica tace
      possono finire con qualunque valore.

      <item><em|Chi esegue?> Le operazioni elementari disponibili decidono
      l'algoritmo.
    </itemize>

    Questo schema tornerà nel capitolo 6, dove la specifica diventa una
    coppia di formule, e nel capitolo 7, dove diventa una tripla di Hoare.
  </officina>

  <section|Che cosa si può calcolare>

  Solo dagli anni Trenta del Novecento si è cercato di dire con precisione
  che cos'è una \Sprocedura effettiva\T. Alan Turing propose una macchina
  astratta che manipola simboli secondo un numero finito di regole; mostrò
  anche una <strong|macchina universale> che riceve la descrizione di
  un'altra macchina e il suo input e ne simula il calcolo: il modello teorico
  del computer a programma memorizzato. Alonzo Church propose il
  <math|\<lambda\>>-calcolo, basato sulle funzioni: un formalismo
  diversissimo, che però calcola esattamente le stesse funzioni.

  La <strong|tesi di Church-Turing> afferma che le macchine di Turing
  risolvono tutti i problemi effettivamente risolubili. È una <em|tesi>,
  accettata da tutti, non un teorema: collega un modello formale a un'idea
  intuitiva, che non si può dimostrare. Gli altri modelli (sistemi di Post,
  funzioni ricorsive di Kleene, calcolo quantistico, DNA computing) sono
  considerati equivalenti quanto a ciò che si può calcolare. Il
  <strong|modello di von Neumann> (1945), base dei calcolatori attuali, ha la
  stessa potenza; la sua generalità viene dal programma memorizzato.

  I linguaggi di programmazione si dividono per <strong|paradigma>:
  imperativo (comandi che modificano lo stato: Assembly, FORTRAN, C, Pascal),
  funzionale (ML, Haskell, Scheme), a oggetti (Java, Smalltalk), logico
  (Prolog), concorrente (CCS, CSP). Il corso adotta il paradigma imperativo
  e, più avanti, il linguaggio C.

  <\verifica|1>
    <strong|a)> \SAggiungi zucchero finché è dolce\T: quale requisito di un
    algoritmo viola?

    <strong|b)> <math|{x\<mapsto\>3,y\<mapsto\>3}> e
    <math|{x\<mapsto\>3,x\<mapsto\>4}>: quale dei due è uno stato?

    <strong|c)> Con quanti confronti al massimo la ricerca binaria trova un
    nome fra <math|1000>?
  </verifica>

  <chapter|Proposizioni: forma e significato>

  <\inbreve>
    Per ragionare sui programmi servono frasi senza ambiguità. Il
    <strong|calcolo proposizionale> è il linguaggio logico più semplice:
    costruisce frasi composte con i connettivi e stabilisce quando sono vere.
    La domanda del capitolo: quando una conclusione <em|segue davvero> dalle
    premesse?
  </inbreve>

  <section|Ragionamenti validi>

  \STutti gli uomini sono mortali; Socrate è un uomo; quindi Socrate è
  mortale.\T Il ragionamento è <strong|valido>: <em|se> le premesse sono
  vere, la conclusione non può essere falsa. Si dice che la conclusione è
  <strong|conseguenza logica> delle premesse. Non serve sapere se le premesse
  siano vere nel mondo: conta la forma.

  \STutti gli uomini sono mortali; Socrate è mortale; quindi Socrate è un
  uomo.\T Questo <em|non> è valido: Socrate potrebbe essere un cane, mortale
  anche lui. Le premesse vere non bastano; la conclusione deve <em|seguire>.

  La logica nasce per formalizzare il ragionamento (Aristotele, poi la logica
  moderna di fine Ottocento). In informatica serve a scrivere requisiti,
  studiare e verificare programmi, rappresentare conoscenza; in Prolog si
  programma scrivendo premesse e regole. Nel corso la useremo per la
  <strong|logica di Hoare> (capitoli 7\<#2013\>9).

  Una <strong|proposizione> è una frase dichiarativa che è vera o falsa:
  \SRoma è la capitale d'Italia\T, \SLa Francia è in Asia\T (falsa, ma è una
  proposizione), <math|1+1=2>. Non sono proposizioni una domanda, un comando,
  o <math|x+1=2> finché <math|x> non è fissato. Lavoriamo nella
  <strong|logica classica>: ogni proposizione è vera o falsa (<em|terzo
  escluso>) e mai entrambe (<em|non contraddizione>).

  Una proposizione è <strong|atomica> se non la scomponiamo; le altre si
  costruiscono con i <strong|connettivi>, come le espressioni con le
  operazioni.

  <section|I connettivi>

  Indichiamo con <math|<math-up|Bool>={<vero>,<falso>}> i valori di verità.
  Il significato dei connettivi è dato dalla loro tabella.

  <\with|par-mode|center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-lsep|0.55em>|<cwith|1|-1|1|-1|cell-rsep|0.55em>|<cwith|1|-1|1|-1|cell-tsep|0.22fn>|<cwith|1|-1|1|-1|cell-bsep|0.22fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<table|<row|<cell|<math|P>>|<cell|<math|Q>>|<cell|<math|\<neg\>P>>|<cell|<math|P\<wedge\>Q>>|<cell|<math|P\<vee\>Q>>|<cell|<math|P\<Rightarrow\>Q>>|<cell|<math|P\<equiv\>Q>>>|<row|<cell|<vero>>|<cell|<vero>>|<cell|<falso>>|<cell|<vero>>|<cell|<vero>>|<cell|<vero>>|<cell|<vero>>>|<row|<cell|<vero>>|<cell|<falso>>|<cell|<falso>>|<cell|<falso>>|<cell|<vero>>|<cell|<falso>>|<cell|<falso>>>|<row|<cell|<falso>>|<cell|<vero>>|<cell|<vero>>|<cell|<falso>>|<cell|<vero>>|<cell|<vero>>|<cell|<falso>>>|<row|<cell|<falso>>|<cell|<falso>>|<cell|<vero>>|<cell|<falso>>|<cell|<falso>>|<cell|<vero>>|<cell|<vero>>>>>>
  </with>

  <math|\<neg\>P> (non <math|P>) inverte il valore. <math|P\<wedge\>Q>
  (<math|P> e <math|Q>) è vera solo se entrambe lo sono. <math|P\<vee\>Q>
  (<math|P> o <math|Q>) è vera se almeno una lo è: è la disgiunzione
  <em|inclusiva>; quella esclusiva (\Scarne o pesce, non entrambi\T) non la
  useremo come connettivo. <math|P\<equiv\>Q> (<math|P> se e solo se
  <math|Q>) è vera quando i due valori coincidono.

  <\immagine|L'implicazione è una promessa>
    \SSe piove, porto l'ombrello.\T L'unico modo di <em|rompere> la promessa
    è che piova e io non abbia l'ombrello. Se non piove, la promessa è
    mantenuta qualunque cosa io faccia. Per questo <math|P\<Rightarrow\>Q> è
    falsa solo nella riga <math|P=<vero>>, <math|Q=<falso>>, e
    <math|(P\<Rightarrow\>Q)\<equiv\>\<neg\>(P\<wedge\>\<neg\>Q)>.
  </immagine>

  <section|Sintassi: quali stringhe sono formule>

  Fissato un alfabeto <math|\<cal-P\>={p,q,r,\<ldots\>}> di simboli
  proposizionali, le <strong|formule> sono tutte e sole quelle costruite
  così: <math|T> e <math|F> sono formule (la formula sempre vera e quella
  sempre falsa: non sono simboli dell'alfabeto); ogni <math|p\<in\>\<cal-P\>>
  è una formula; se <math|P> e <math|Q> sono formule, lo sono
  <math|\<neg\>P>, <math|(P\<wedge\>Q)>, <math|(P\<vee\>Q)>,
  <math|(P\<Rightarrow\>Q)>, <math|(P\<equiv\>Q)>. In informatica si scrive
  spesso come <strong|grammatica libera dal contesto>:

  <\codice>
    Prop ::= (Prop \<equiv\> Prop) \| (Prop \<wedge\> Prop) \| (Prop \<vee\>
    Prop)

    <hspace|3.675em>\| (Prop \<Rightarrow\> Prop) \| \<neg\>Prop \| T \| F \|
    p \| q \| ...
  </codice>

  Stringhe come <math|p\<wedge\>\<vee\>> o <math|()> non sono formule. Le
  parentesi contano: <math|(P\<Rightarrow\>\<neg\>P)\<Rightarrow\>Q> e
  <math|P\<Rightarrow\>(\<neg\>P\<Rightarrow\>Q)> sono formule diverse, e con
  <math|P=Q=<falso>> la prima è falsa, la seconda vera.

  Per toglierne qualcuna si eliminano le parentesi esterne e si usano le
  <strong|precedenze>, dalla più debole alla più forte: <math|\<equiv\>> (0),
  <math|\<Rightarrow\>> (1), <math|\<wedge\>> e <math|\<vee\>> (2),
  <math|\<neg\>> (3). Così <math|P\<wedge\>Q\<Rightarrow\>R\<equiv\>R\<vee\>P\<Rightarrow\>S>
  si legge <math|((P\<wedge\>Q)\<Rightarrow\>R)\<equiv\>((R\<vee\>P)\<Rightarrow\>S)>,
  e <math|P\<Rightarrow\>Q\<equiv\>\<neg\>P\<vee\>Q> si legge
  <math|(P\<Rightarrow\>Q)\<equiv\>(\<neg\>P\<vee\>Q)>.

  <\attenzione|Fra <math|\<wedge\>> e <math|\<vee\>> non c'è precedenza>
    <math|P\<wedge\>Q\<vee\>R> è <em|sbagliata>: <math|(P\<wedge\>Q)\<vee\>R>
    e <math|P\<wedge\>(Q\<vee\>R)> non sono equivalenti (con
    <math|P=<falso>>, <math|R=<vero>> la prima è vera e la seconda falsa).
    Anche <math|P\<Rightarrow\>Q\<Rightarrow\>R> è sbagliata se non si dice
    come associare. <math|P\<wedge\>Q\<wedge\>R> è invece accettata, perché
    <math|\<wedge\>> è associativo.
  </attenzione>

  <section|Tradurre le frasi>

  Con <math|p>: piove, <math|n>: ci sono nuvole, <math|v>: c'è vento,
  <math|r>: fa freddo, <math|c>: ci si copre, <math|<math-up|ne>>: nevica.

  <\with|par-mode|center>
    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-valign|t>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|2|2|cell-width|0.71par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|1|1|cell-width|0.27par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|2|2|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-tsep|0.3fn>|<cwith|1|-1|1|-1|cell-bsep|0.3fn>|<cwith|1|-1|1|1|cell-lsep|0fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|2|-1|1|-1|cell-bborder|0.25pt>|<table|<row|<cell|Frase>|<cell|Formula>>|<row|<cell|Fa
    freddo, ma non piove>|<cell|<math|r\<wedge\>\<neg\>p>>>|<row|<cell|Se ci
    sono nuvole e non c'è vento, allora piove>|<cell|<math|(n\<wedge\>\<neg\>v)\<Rightarrow\>p>>>|<row|<cell|Nevica,
    ma non fa freddo se ci si copre>|<cell|<math|<math-up|ne>\<wedge\>(c\<Rightarrow\>\<neg\>r)>>>|<row|<cell|Se
    ci si copre, allora fa freddo o nevica>|<cell|<math|c\<Rightarrow\>(r\<vee\><math-up|ne>)>>>|<row|<cell|Piove
    solo se ci sono nuvole e non c'è vento>|<cell|<math|p\<Rightarrow\>(n\<wedge\>\<neg\>v)>>>>>>
  </with>

  \SMa\T si traduce con <math|\<wedge\>>. E soprattutto: \S<math|P> <em|solo
  se> <math|Q>\T è <math|P\<Rightarrow\>Q>, perché <math|Q> è una
  <strong|condizione necessaria> per <math|P>. Anche \Scondizione necessaria
  perché Antonio vada al cinema è che ci vada Bruno\T diventa
  <math|a\<Rightarrow\>b>.

  <section|Interpretazioni e valore di una formula>

  Il valore di una formula dipende dai valori dei simboli, come il valore di
  <math|x+y> dipende da <math|x> e <math|y>. Un'<strong|interpretazione> è
  una funzione <math|I:\<cal-P\>\<rightarrow\><math-up|Bool>>, per esempio
  <math|I={p\<mapsto\><vero>,q\<mapsto\><falso>,r\<mapsto\><falso>}>. Il
  valore <math|\<llbracket\>\<varphi\>\<rrbracket\><rsub|I>> si calcola
  <em|ricorsivamente>: <math|\<llbracket\>T\<rrbracket\><rsub|I>=<vero>>,
  <math|\<llbracket\>F\<rrbracket\><rsub|I>=<falso>>,
  <math|\<llbracket\>p\<rrbracket\><rsub|I>=I(p)>, e per ogni connettivo si
  applica la sua tabella ai valori delle parti, per esempio
  <math|\<llbracket\>P\<wedge\>Q\<rrbracket\><rsub|I>=\<llbracket\>P\<rrbracket\><rsub|I>\<wedge\>\<llbracket\>Q\<rrbracket\><rsub|I>>.
  A destra il simbolo indica la funzione booleana: lo stesso segno serve per
  la sintassi e per il significato.

  <figura|<image|fondamenti-di-programmazione-1-assets/albero-formula.pdf|120.0mm|60.0mm||>|La
  formula <math|(p\<wedge\>q)\<vee\>\<neg\>r> come albero. Con
  <math|I={p\<mapsto\><vero>,q\<mapsto\><falso>,r\<mapsto\><falso>}> si
  valuta dal basso: <math|p\<wedge\>q=<falso>>, <math|\<neg\>r=<vero>>,
  quindi la radice (il <em|connettivo principale>) vale <vero>.>

  Una <strong|tavola di verità> elenca il valore di una formula in tutte le
  interpretazioni dei suoi simboli: con <math|n> simboli sono
  <math|2<rsup|n>> righe.

  <\with|par-mode|center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-lsep|0.55em>|<cwith|1|-1|1|-1|cell-rsep|0.55em>|<cwith|1|-1|1|-1|cell-tsep|0.22fn>|<cwith|1|-1|1|-1|cell-bsep|0.22fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<table|<row|<cell|<math|p>>|<cell|<math|q>>|<cell|<math|r>>|<cell|<math|p\<wedge\>q>>|<cell|<math|\<neg\>r>>|<cell|<math|(p\<wedge\>q)\<vee\>\<neg\>r>>>|<row|<cell|<vero>>|<cell|<vero>>|<cell|<vero>>|<cell|<vero>>|<cell|<falso>>|<cell|<vero>>>|<row|<cell|<vero>>|<cell|<vero>>|<cell|<falso>>|<cell|<vero>>|<cell|<vero>>|<cell|<vero>>>|<row|<cell|<vero>>|<cell|<falso>>|<cell|<vero>>|<cell|<falso>>|<cell|<falso>>|<cell|<falso>>>|<row|<cell|<vero>>|<cell|<falso>>|<cell|<falso>>|<cell|<falso>>|<cell|<vero>>|<cell|<vero>>>|<row|<cell|<falso>>|<cell|<vero>>|<cell|<vero>>|<cell|<falso>>|<cell|<falso>>|<cell|<falso>>>|<row|<cell|<falso>>|<cell|<vero>>|<cell|<falso>>|<cell|<falso>>|<cell|<vero>>|<cell|<vero>>>|<row|<cell|<falso>>|<cell|<falso>>|<cell|<vero>>|<cell|<falso>>|<cell|<falso>>|<cell|<falso>>>|<row|<cell|<falso>>|<cell|<falso>>|<cell|<falso>>|<cell|<falso>>|<cell|<vero>>|<cell|<vero>>>>>>
  </with>

  <section|Tautologie e conseguenza logica>

  Un'interpretazione <math|I> è un <strong|modello> di <math|\<varphi\>>, e
  si scrive <math|I\<vDash\>\<varphi\>>, se
  <math|\<llbracket\>\<varphi\>\<rrbracket\><rsub|I>=<vero>>; è modello di un
  insieme <math|\<Gamma\>> se lo è di ogni sua formula. Una formula è

  <\itemize>
    <item><strong|soddisfacibile> se ha almeno un modello;

    <item>una <strong|tautologia> (<math|\<vDash\>\<varphi\>>) se ogni
    interpretazione è un modello: per esempio <math|p\<vee\>\<neg\>p>;

    <item>una <strong|contraddizione> (insoddisfacibile) se non ha modelli:
    per esempio <math|p\<wedge\>\<neg\>p>.
  </itemize>

  <math|\<varphi\>> è una tautologia se e solo se <math|\<neg\>\<varphi\>> è
  una contraddizione. Infine <math|\<varphi\>> è <strong|conseguenza logica>
  di <math|\<Gamma\>>, <math|\<Gamma\>\<vDash\>\<varphi\>>, se ogni modello
  di <math|\<Gamma\>> è anche modello di <math|\<varphi\>>. Con premesse
  finite basta controllare che <math|(\<varphi\><rsub|1>\<wedge\>\<cdots\>\<wedge\>\<varphi\><rsub|n>)\<Rightarrow\>\<varphi\>>
  sia una tautologia.

  <figura|<image|fondamenti-di-programmazione-1-assets/conseguenza.pdf|160.0mm|75.0mm||>|A
  sinistra <math|\<Gamma\>\<vDash\>\<varphi\>>: i modelli delle premesse
  stanno tutti dentro i modelli della conclusione. A destra no:
  un'interpretazione rende vere le premesse e falsa la conclusione, ed è un
  <em|controesempio>.>

  <\guidato|Gli amici al cinema>
    Se Corrado va al cinema ci va anche Antonio (<math|c\<Rightarrow\>a>);
    condizione necessaria perché Antonio vada è che vada Bruno
    (<math|a\<Rightarrow\>b>). Quali conclusioni seguono? (1)
    <math|c\<Rightarrow\>b>; (2) <math|\<neg\>a\<wedge\>\<neg\>b\<wedge\>\<neg\>c>;
    (3) <math|b\<Rightarrow\>c>; (4) <math|\<neg\>c\<Rightarrow\>\<neg\>b>.

    <em|Idea.> Per escludere una conclusione basta <em|un> controesempio:
    un'interpretazione che renda vere le due premesse e falsa la conclusione.
    Per accettarla serve che non esista.

    <em|Conto.> (1) Se <math|c=<vero>>, dalla prima premessa <math|a=<vero>>,
    dalla seconda <math|b=<vero>>: la conclusione non può essere falsa. Segue
    (è la <em|transitività>).

    (2) Tutti al cinema (<math|a=b=c=<vero>>) rende vere le premesse e falsa
    la conclusione. Non segue.

    (3) <math|b=<vero>>, <math|c=<falso>> (e <math|a> qualsiasi):
    <math|c\<Rightarrow\>a> è vera perché <math|c> è falsa,
    <math|a\<Rightarrow\>b> è vera perché <math|b> è vera, ma
    <math|b\<Rightarrow\>c> è falsa. Non segue.

    (4) <math|\<neg\>c\<Rightarrow\>\<neg\>b> ha la stessa tabella di
    <math|b\<Rightarrow\>c>: lo stesso controesempio la esclude.

    <em|Controllo.> Solo la (1) segue. Nella (4) si riconosce la
    <em|controposizione> di (3), che vedremo nel capitolo 3.
  </guidato>

  Lo stesso metodo vale per le frasi di tutti i giorni. \SSe piove non esco;
  ieri sono uscito; quindi non pioveva\T è
  <math|((P\<Rightarrow\>\<neg\>E)\<wedge\>E)\<Rightarrow\>\<neg\>P>: una
  tautologia, ragionamento corretto. \SSe piove non esco; ieri non pioveva;
  quindi sono uscito\T è <math|((P\<Rightarrow\>\<neg\>E)\<wedge\>\<neg\>P)\<Rightarrow\>E>:
  con <math|P=E=<falso>> le premesse sono vere e la conclusione falsa. Non è
  corretto.

  <new-page*>

  <\officina|2. Basta un caso o servono tutti?>
    Prima di metterti a calcolare, chiediti se la frase è un \Sesiste\T o un
    \Sper ogni\T nascosto.

    <\itemize>
      <item><em|Soddisfacibile?> È un \Sesiste\T: basta trovare
      un'interpretazione che la renda vera.

      <item><em|Non è una tautologia? Non è conseguenza logica?> Basta un
      controesempio. Conviene partire dalla fine: rendi falsa la conclusione
      e prova a rendere vere tutte le premesse.

      <item><em|È una tautologia? È conseguenza logica?> È un \Sper ogni\T:
      serve tutta la tavola (<math|2<rsup|n>> righe) o una dimostrazione
      (capitolo 3).
    </itemize>

    Se la ricerca del controesempio fallisce per forza (come per
    <math|((a\<Rightarrow\>b)\<wedge\>a)\<Rightarrow\>b>: con
    <math|a=<vero>>, <math|b=<falso>> la premessa <math|a\<Rightarrow\>b>
    diventa falsa), quel fallimento è già un indizio che la formula è una
    tautologia.
  </officina>

  <\verifica|2>
    <strong|a)> Traduci \Sesco solo se non piove\T.

    <strong|b)> <math|p\<Rightarrow\>q> è soddisfacibile? È una tautologia?

    <strong|c)> Trova un controesempio per
    <math|((a\<Rightarrow\>b)\<wedge\>\<neg\>a)\<Rightarrow\>\<neg\>b>.
  </verifica>

  <chapter|Dimostrare con le leggi>

  <\inbreve>
    Le tavole di verità funzionano, ma con <math|n> simboli hanno
    <math|2<rsup|n>> righe, e nella logica del primo ordine i casi diventano
    infiniti. Impariamo allora a <strong|dimostrare>: trasformare una formula
    passo dopo passo con leggi già note, giustificando ogni passo. È
    esattamente il lavoro che faremo poi sui programmi.
  </inbreve>

  <section|Dimostrare invece di provare tutto>

  Una <strong|regola di inferenza> permette di derivare un asserto da altri.
  Due esempi: dal <em|modus ponens>, da <math|Q\<Rightarrow\>R> e <math|Q> si
  deduce <math|R>; dall'<em|istanziazione>, da \Sper ogni <math|x> vale
  <math|P(x)>\T si deduce <math|P(a)>. Così si dimostra che Socrate è
  mortale: istanziando \Sper ogni <math|x>, se <math|x> è un uomo allora è
  mortale\T su Socrate, e applicando il modus ponens con \SSocrate è un
  uomo\T. Lo stesso schema dimostra che <math|8> non è primo: cambia il
  significato dei simboli, non la forma.

  Una dimostrazione è quindi <em|sintattica>: manipola simboli con regole
  meccaniche, come un algoritmo. La conseguenza logica è invece
  <em|semantica>: parla di verità nelle interpretazioni. Le due cose si
  incontrano se le regole sono

  <\itemize>
    <item><strong|corrette>: tutto ciò che si dimostra è conseguenza logica
    (non si deriva mai il falso da premesse vere);

    <item><strong|complete>: ogni conseguenza logica si può dimostrare.
  </itemize>

  Un esempio familiare dall'algebra: ogni passo cita la legge usata.

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|3|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|0.2em>|<cwith|1|-1|1|-1|cell-rsep|0.2em>|<cwith|1|-1|3|3|cell-lsep|1.4em>|<cwith|1|-1|1|-1|cell-bsep|0.12fn>|<cwith|1|-1|1|-1|cell-tsep|0.12fn>|<table|<row|<cell|>|<cell|(a+b)(a-b)>|<cell|>>|<row|<cell|=>|<cell|a(a-b)+b(a-b)>|<cell|<text|{distributività}>>>|<row|<cell|=>|<cell|a<rsup|2>-a*b+b*a-b<rsup|2>>|<cell|<text|{distributività,
    associatività}>>>|<row|<cell|=>|<cell|a<rsup|2>-b<rsup|2>>|<cell|<text|{commutatività,
    opposto, elemento neutro}>>>>>>
  </equation*>

  Ogni passo usa anche il <strong|principio di sostituzione>: se <math|A=B>,
  sostituire <math|A> con <math|B> dentro un'espressione <math|C> non ne
  cambia il valore. Nel calcolo proposizionale vale l'analogo per
  l'equivalenza:

  <\equation*>
    <frac|P\<equiv\>Q|R\<equiv\>R[Q/P]>
  </equation*>

  dove <math|R[Q/P]> è <math|R> con un'occorrenza di <math|P> sostituita da
  <math|Q>. Una <strong|legge> è una tautologia che usiamo come
  giustificazione.

  <section|Le leggi>

  Ogni legge si verifica con una tavola di verità (basta usare simboli
  <math|p,q,r>: la tavola vale per ogni formula al loro posto) o con leggi
  già dimostrate. Non vanno imparate a memoria: servono a riconoscere i
  passi.

  <\with|par-mode|center>
    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-valign|t>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|2|2|cell-width|0.71par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|1|1|cell-width|0.27par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|2|2|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-tsep|0.3fn>|<cwith|1|-1|1|-1|cell-bsep|0.3fn>|<cwith|1|-1|1|1|cell-lsep|0fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|2|-1|1|-1|cell-bborder|0.25pt>|<table|<row|<cell|Nome>|<cell|Legge>>|<row|<cell|Equivalenza>|<cell|<math|P\<equiv\>P><new-line><math|(P\<equiv\>Q)\<equiv\>(Q\<equiv\>P)><new-line><math|(P\<equiv\>T)\<equiv\>P>
    (unità), associatività, transitività>>|<row|<cell|Comm., ass.,
    idem.>|<cell|<math|P\<vee\>Q\<equiv\>Q\<vee\>P><new-line><math|P\<vee\>(Q\<vee\>R)\<equiv\>(P\<vee\>Q)\<vee\>R><new-line><math|P\<vee\>P\<equiv\>P>
    (e lo stesso per <math|\<wedge\>>)>>|<row|<cell|Unità e
    zero>|<cell|<math|P\<wedge\>T\<equiv\>P><new-line><math|P\<vee\>F\<equiv\>P><new-line><math|P\<wedge\>F\<equiv\>F><new-line><math|P\<vee\>T\<equiv\>T>>>|<row|<cell|Distributività>|<cell|<math|P\<wedge\>(Q\<vee\>R)\<equiv\>(P\<wedge\>Q)\<vee\>(P\<wedge\>R)><new-line><math|P\<vee\>(Q\<wedge\>R)\<equiv\>(P\<vee\>Q)\<wedge\>(P\<vee\>R)>>>|<row|<cell|Negazione>|<cell|<math|\<neg\>\<neg\>P\<equiv\>P><new-line><math|P\<vee\>\<neg\>P\<equiv\>T>
    (terzo escluso)<new-line><math|P\<wedge\>\<neg\>P\<equiv\>F><new-line><math|\<neg\>T\<equiv\>F>>>|<row|<cell|De
    Morgan>|<cell|<math|\<neg\>(P\<wedge\>Q)\<equiv\>\<neg\>P\<vee\>\<neg\>Q><new-line><math|\<neg\>(P\<vee\>Q)\<equiv\>\<neg\>P\<wedge\>\<neg\>Q>>>|<row|<cell|Eliminazione
    di <math|\<Rightarrow\>>>|<cell|<math|P\<Rightarrow\>Q\<equiv\>\<neg\>P\<vee\>Q><new-line><math|P\<Rightarrow\>Q\<equiv\>\<neg\>(P\<wedge\>\<neg\>Q)><new-line><math|\<neg\>(P\<Rightarrow\>Q)\<equiv\>P\<wedge\>\<neg\>Q>>>|<row|<cell|Eliminazione
    di <math|\<equiv\>>>|<cell|<math|(P\<equiv\>Q)\<equiv\>(P\<Rightarrow\>Q)\<wedge\>(Q\<Rightarrow\>P)><new-line><math|(P\<equiv\>Q)\<equiv\>(P\<wedge\>Q)\<vee\>(\<neg\>P\<wedge\>\<neg\>Q)>>>|<row|<cell|Complemento>|<cell|<math|P\<vee\>(\<neg\>P\<wedge\>Q)\<equiv\>P\<vee\>Q><new-line><math|P\<wedge\>(\<neg\>P\<vee\>Q)\<equiv\>P\<wedge\>Q>>>|<row|<cell|Assorbimento>|<cell|<math|P\<wedge\>(P\<vee\>Q)\<equiv\>P><new-line><math|P\<vee\>(P\<wedge\>Q)\<equiv\>P>>>|<row|<cell|Implicative>|<cell|<math|(P\<Rightarrow\>Q)\<wedge\>P\<Rightarrow\>Q>
    (modus ponens)<new-line><math|(P\<Rightarrow\>Q)\<wedge\>(Q\<Rightarrow\>R)\<Rightarrow\>(P\<Rightarrow\>R)><new-line><math|P\<wedge\>Q\<Rightarrow\>P><new-line><math|P\<Rightarrow\>P\<vee\>Q>>>|<row|<cell|Scambio>|<cell|<math|(P\<wedge\>Q\<Rightarrow\>R)\<equiv\>(P\<wedge\>\<neg\>R\<Rightarrow\>\<neg\>Q)>>>>>>
  </with>

  <section|Catene di equivalenze>

  Per dimostrare <math|P<rsub|1>\<equiv\>P<rsub|n>> si scrive una catena
  <math|P<rsub|1>\<equiv\>P<rsub|2>\<equiv\>\<cdots\>\<equiv\>P<rsub|n>>, con
  ogni passo giustificato tra graffe. Ecco la legge di complemento:

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|3|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|0.2em>|<cwith|1|-1|1|-1|cell-rsep|0.2em>|<cwith|1|-1|3|3|cell-lsep|1.4em>|<cwith|1|-1|1|-1|cell-bsep|0.12fn>|<cwith|1|-1|1|-1|cell-tsep|0.12fn>|<table|<row|<cell|>|<cell|P\<vee\>(\<neg\>P\<wedge\>Q)>|<cell|>>|<row|<cell|\<equiv\>>|<cell|(P\<vee\>\<neg\>P)\<wedge\>(P\<vee\>Q)>|<cell|<text|{distributività}>>>|<row|<cell|\<equiv\>>|<cell|T\<wedge\>(P\<vee\>Q)>|<cell|<text|{terzo
    escluso}>>>|<row|<cell|\<equiv\>>|<cell|P\<vee\>Q>|<cell|<text|{unità}>>>>>>
  </equation*>

  e l'assorbimento, con un trucco: aggiungere un <math|F> che non cambia
  nulla.

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|3|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|0.2em>|<cwith|1|-1|1|-1|cell-rsep|0.2em>|<cwith|1|-1|3|3|cell-lsep|1.4em>|<cwith|1|-1|1|-1|cell-bsep|0.12fn>|<cwith|1|-1|1|-1|cell-tsep|0.12fn>|<table|<row|<cell|>|<cell|P\<wedge\>(P\<vee\>Q)>|<cell|>>|<row|<cell|\<equiv\>>|<cell|(P\<vee\>F)\<wedge\>(P\<vee\>Q)>|<cell|<text|{unità}>>>|<row|<cell|\<equiv\>>|<cell|P\<vee\>(F\<wedge\>Q)>|<cell|<text|{distributività}>>>|<row|<cell|\<equiv\>>|<cell|P\<vee\>F>|<cell|<text|{zero}>>>|<row|<cell|\<equiv\>>|<cell|P>|<cell|<text|{unità}>>>>>>
  </equation*>

  La tecnica non sceglie per noi la legge o il lato da cui partire. Tre
  strategie aiutano: trasformare <math|P> fino a <math|Q>; ridurre <math|P> e
  <math|Q> a una stessa formula <math|R>; se si vuole una tautologia, ridurla
  a <math|T>. Passi ovvi di associatività, commutatività e idempotenza si
  possono omettere.

  <\attenzione|Si manipolano simboli, non valori>
    Nella legge di unità compare la <em|costante> <math|F>, non un simbolo
    qualsiasi <math|f>. E quando si elimina <math|\<Rightarrow\>> si rispetta
    la struttura: <math|P\<Rightarrow\>(Q\<wedge\>R)\<equiv\>\<neg\>P\<vee\>(Q\<wedge\>R)>,
    non <math|(\<neg\>P\<vee\>Q)\<wedge\>R>.
  </attenzione>

  <\guidato|Il modus ponens è una tautologia>
    Dimostra <math|((P\<Rightarrow\>Q)\<wedge\>P)\<Rightarrow\>Q\<equiv\>T>.

    <em|Idea.> Togliere le implicazioni, poi semplificare finché resta un
    terzo escluso.

    <em|Conto.>

    <\equation*>
      <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|3|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|0.2em>|<cwith|1|-1|1|-1|cell-rsep|0.2em>|<cwith|1|-1|3|3|cell-lsep|1.4em>|<cwith|1|-1|1|-1|cell-bsep|0.12fn>|<cwith|1|-1|1|-1|cell-tsep|0.12fn>|<table|<row|<cell|>|<cell|((P\<Rightarrow\>Q)\<wedge\>P)\<Rightarrow\>Q>|<cell|>>|<row|<cell|\<equiv\>>|<cell|\<neg\>(P\<wedge\>(\<neg\>P\<vee\>Q))\<vee\>Q>|<cell|<text|{elim.
      <math|\<Rightarrow\>> due volte, commutatività}>>>|<row|<cell|\<equiv\>>|<cell|\<neg\>(P\<wedge\>Q)\<vee\>Q>|<cell|<text|{complemento}>>>|<row|<cell|\<equiv\>>|<cell|\<neg\>P\<vee\>\<neg\>Q\<vee\>Q>|<cell|<text|{De
      Morgan}>>>|<row|<cell|\<equiv\>>|<cell|\<neg\>P\<vee\>T>|<cell|<text|{terzo
      escluso}>>>|<row|<cell|\<equiv\>>|<cell|T>|<cell|<text|{zero}>>>>>>
    </equation*>

    <em|Controllo.> Cercando un controesempio (<math|Q=<falso>>, premessa
    vera) si è costretti a <math|P=<vero>>, ma allora <math|P\<Rightarrow\>Q>
    è falsa: nessun controesempio, come previsto.
  </guidato>

  <section|Implicazioni e polarità>

  Nella verifica dei programmi servono soprattutto implicazioni. Si possono
  costruire catene miste, con passi <math|\<equiv\>> e passi
  <math|\<Rightarrow\>> giustificati da leggi implicative. Per esempio il
  <em|tollendo tollens>:

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|3|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|0.2em>|<cwith|1|-1|1|-1|cell-rsep|0.2em>|<cwith|1|-1|3|3|cell-lsep|1.4em>|<cwith|1|-1|1|-1|cell-bsep|0.12fn>|<cwith|1|-1|1|-1|cell-tsep|0.12fn>|<table|<row|<cell|>|<cell|(P\<Rightarrow\>Q)\<wedge\>\<neg\>Q>|<cell|>>|<row|<cell|\<equiv\>>|<cell|(\<neg\>P\<vee\>Q)\<wedge\>\<neg\>Q>|<cell|<text|{elim.
    <math|\<Rightarrow\>>}>>>|<row|<cell|\<equiv\>>|<cell|\<neg\>P\<wedge\>\<neg\>Q>|<cell|<text|{complemento}>>>|<row|<cell|\<Rightarrow\>>|<cell|\<neg\>P>|<cell|<text|{semplificazione}>>>>>>
  </equation*>

  Qui serve cautela. Da <math|P\<Rightarrow\>Q> <em|non> segue in generale
  <math|R\<Rightarrow\>R[Q/P]>. La legge <math|P\<wedge\>Q\<Rightarrow\>P>
  non permette di passare da <math|<math-up|studia>\<wedge\><math-up|frequenta>\<Rightarrow\><math-up|supera>>
  a <math|<math-up|studia>\<Rightarrow\><math-up|supera>>: studiare da solo
  non basta. È come con le disuguaglianze: sotto un segno meno il verso si
  inverte. In logica fanno da \Ssegno meno\T la negazione e l'antecedente di
  un'implicazione.

  Un'occorrenza è <strong|positiva> o <strong|negativa> secondo quanti
  passaggi negativi la separano dalla radice della formula: pari positiva,
  dispari negativa. Prima si elimina ogni <math|\<equiv\>>:
  l\<#2019\>equivalenza non è monotona nei suoi argomenti. I passaggi
  negativi sono l'argomento di <math|\<neg\>> e il lato sinistro di
  <math|\<Rightarrow\>>; tutto il resto (<math|\<wedge\>>, <math|\<vee\>>,
  lato destro di <math|\<Rightarrow\>>) non cambia segno.

  <figura|<image|fondamenti-di-programmazione-1-assets/polarita.pdf|150.0mm|92.5mm||>|Due
  formule come alberi; i rami segnati <math|-> invertono il segno. In
  <math|P\<Rightarrow\>(\<neg\>R\<Rightarrow\>Q)> l'occorrenza di <math|P> è
  negativa, <math|R> e <math|Q> positive. In
  <math|(P\<Rightarrow\>\<neg\>R)\<Rightarrow\>Q> sono tutte positive:
  <math|P> e <math|R> attraversano due rami negativi.>

  Le equivalenze lo confermano: <math|P\<Rightarrow\>(\<neg\>R\<Rightarrow\>Q)\<equiv\>\<neg\>P\<vee\>R\<vee\>Q>
  e <math|(P\<Rightarrow\>\<neg\>R)\<Rightarrow\>Q\<equiv\>(P\<wedge\>R)\<vee\>Q>.
  Il <strong|principio di sostituzione per l'implicazione> dice: se vale
  <math|P\<Rightarrow\>Q>, allora <math|R\<Rightarrow\>R[Q/P]> quando
  l'occorrenza sostituita è positiva, e <math|R[Q/P]\<Rightarrow\>R> quando è
  negativa.

  Due esempi. Da <math|Q\<wedge\>R\<Rightarrow\>Q>, poiché <math|Q\<wedge\>R>
  è positiva nel conseguente, <math|(P\<Rightarrow\>Q\<wedge\>R)\<Rightarrow\>(P\<Rightarrow\>Q)>.
  Da <math|P\<Rightarrow\>P\<vee\>Q>, poiché <math|P> è negativa
  nell'antecedente di <math|P\<Rightarrow\>R>, il verso si inverte:
  <math|(P\<vee\>Q\<Rightarrow\>R)\<Rightarrow\>(P\<Rightarrow\>R)>.

  <section|Le tecniche di dimostrazione sono tautologie>

  Molte tecniche che si usano in matematica sono leggi del calcolo
  proposizionale.

  <\itemize>
    <item><strong|Per assurdo>: <math|P\<equiv\>(\<neg\>P\<Rightarrow\>F)>, e
    per un'implicazione <math|(Q\<Rightarrow\>R)\<equiv\>(Q\<wedge\>\<neg\>R\<Rightarrow\>F)>:
    si assumono l'ipotesi e la negazione della tesi e si arriva a una
    contraddizione.

    <item><strong|Per controposizione>: <math|(P\<Rightarrow\>Q)\<equiv\>(\<neg\>Q\<Rightarrow\>\<neg\>P)>.

    <item><strong|Per casi>: <math|(P\<Rightarrow\>Q)\<wedge\>(\<neg\>P\<Rightarrow\>Q)\<equiv\>Q>;
    si sceglie un <math|P> comodo e si dimostra <math|Q> in entrambi i casi.

    <item><strong|Assumere la premessa>: per dimostrare
    <math|P\<Rightarrow\>Q> si può supporre <math|P> e arrivare a <math|Q>,
    citando <math|P> tra le giustificazioni. Per esempio, sotto l'ipotesi
    <math|P>, <math|P\<wedge\>Q\<equiv\>T\<wedge\>Q\<equiv\>Q>; quindi
    <math|P\<Rightarrow\>(P\<wedge\>Q\<equiv\>Q)>.
  </itemize>

  Per esempio, <math|(P\<vee\>Q\<Rightarrow\>R)\<Rightarrow\>(P\<Rightarrow\>R)>
  per assurdo: si nega tutto e si arriva a <math|F>.

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|3|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|0.2em>|<cwith|1|-1|1|-1|cell-rsep|0.2em>|<cwith|1|-1|3|3|cell-lsep|1.4em>|<cwith|1|-1|1|-1|cell-bsep|0.12fn>|<cwith|1|-1|1|-1|cell-tsep|0.12fn>|<table|<row|<cell|>|<cell|\<neg\>((P\<vee\>Q\<Rightarrow\>R)\<Rightarrow\>(P\<Rightarrow\>R))>|<cell|>>|<row|<cell|\<equiv\>>|<cell|(\<neg\>(P\<vee\>Q)\<vee\>R)\<wedge\>P\<wedge\>\<neg\>R>|<cell|<text|{elim.
    <math|\<Rightarrow\>>, negazione di <math|\<Rightarrow\>>}>>>|<row|<cell|\<Rightarrow\>>|<cell|\<neg\>(P\<vee\>Q)\<wedge\>P>|<cell|<text|{complemento
    su <math|R>, semplificazione}>>>|<row|<cell|\<equiv\>>|<cell|\<neg\>P\<wedge\>\<neg\>Q\<wedge\>P>|<cell|<text|{De
    Morgan}>>>|<row|<cell|\<equiv\>>|<cell|F>|<cell|<text|{contraddizione}>>>>>>
  </equation*>

  In generale, un passo <math|P<space|0.3em><math-up|conn><space|0.3em>Q>
  giustificato da <math|G> è corretto se <math|G\<Rightarrow\>(P<space|0.3em><math-up|conn><space|0.3em>Q)>
  è una tautologia. Se tutte le giustificazioni sono leggi, la catena
  dimostra la sua conclusione; se alcune sono ipotesi <math|H>, dimostra
  <math|H\<Rightarrow\>> conclusione.

  <\guidato|Combinare ipotesi: congiunzione e disgiunzione>
    <em|Idea.> Da <math|P\<Rightarrow\>Q> e <math|R\<Rightarrow\>S> possiamo
    trasportare ciascuna componente, sia in una congiunzione sia in una
    disgiunzione.

    <em|Conto.> Sotto le due ipotesi, <math|P\<wedge\>R\<Rightarrow\>Q\<wedge\>R\<Rightarrow\>Q\<wedge\>S>
    e <math|P\<vee\>R\<Rightarrow\>Q\<vee\>R\<Rightarrow\>Q\<vee\>S>. Le
    occorrenze sostituite sono positive. Quindi
    <math|(P\<Rightarrow\>Q)\<wedge\>(R\<Rightarrow\>S)\<Rightarrow\>(P\<wedge\>R\<Rightarrow\>Q\<wedge\>S)>;
    aggiungendo <math|P\<vee\>R> alle premesse si ottiene il sillogismo
    disgiuntivo, <math|Q\<vee\>S>.

    Un altro esercizio usa <math|H\<equiv\>(P\<Rightarrow\>(Q\<equiv\>R))>.
    Sotto <math|H>, da <math|P\<wedge\>R> si ottiene
    <math|(Q\<equiv\>R)\<wedge\>R>, quindi <math|Q>, perché
    l\<#2019\>equivalenza contiene <math|R\<Rightarrow\>Q>. Abbiamo
    dimostrato <math|H\<Rightarrow\>(P\<wedge\>R\<Rightarrow\>Q)>.

    <em|Controllo.> Le conclusioni dipendono dalle ipotesi: nel testo della
    dimostrazione bisogna dichiararle. Per spostarle a sinistra usiamo
    <math|P\<Rightarrow\>(Q\<Rightarrow\>R)\<equiv\>(P\<wedge\>Q\<Rightarrow\>R)>.
  </guidato>

  <section|Forme normali e risoluzione>

  Una <strong|forma normale congiuntiva> (FNC) è un \Se di o\T, come
  <math|(p\<vee\>\<neg\>q)\<wedge\>(q\<vee\>r)>; una <strong|forma normale
  disgiuntiva> (FND) è un \So di e\T. Ogni formula si porta in queste forme
  (eliminando <math|\<Rightarrow\>> e <math|\<equiv\>>, spingendo le
  negazioni con De Morgan, distribuendo), anche se la formula può crescere
  molto. Servono per confrontare formule:
  <math|\<neg\>((P\<Rightarrow\>Q)\<wedge\>(R\<Rightarrow\>P))> e
  <math|\<neg\>(\<neg\>Q\<Rightarrow\>\<neg\>P)\<vee\>\<neg\>(R\<Rightarrow\>P)>
  diventano entrambe <math|(P\<wedge\>\<neg\>Q)\<vee\>(R\<wedge\>\<neg\>P)>,
  quindi sono equivalenti.

  La <strong|risoluzione> elimina un simbolo presente positivo in una
  clausola e negato in un'altra:

  <\equation*>
    (P\<vee\>Q)\<wedge\>(\<neg\>P\<vee\>R)\<Rightarrow\>Q\<vee\>R.
  </equation*>

  Deriva dalla transitività, perché <math|(P\<vee\>Q)\<wedge\>(\<neg\>P\<vee\>R)\<equiv\>(\<neg\>Q\<Rightarrow\>P)\<wedge\>(P\<Rightarrow\>R)>.
  Applicata due volte dimostra <math|(P\<vee\>Q)\<wedge\>(\<neg\>P\<vee\>R)\<wedge\>(\<neg\>Q\<vee\>R)\<Rightarrow\>R>:
  si ottiene <math|(Q\<vee\>R)\<wedge\>(\<neg\>Q\<vee\>R)>, poi
  <math|R\<wedge\>R\<equiv\>R>. È il motore della programmazione logica.

  Infine, non servono tutti i connettivi: <math|{\<wedge\>,\<neg\>}> è
  <strong|funzionalmente completo>, perché
  <math|P\<vee\>Q\<equiv\>\<neg\>(\<neg\>P\<wedge\>\<neg\>Q)> e
  <math|P\<Rightarrow\>Q\<equiv\>\<neg\>(P\<wedge\>\<neg\>Q)>. Lo sono anche
  <math|{\<vee\>,\<neg\>}>, <math|{\<Rightarrow\>,\<neg\>}> e perfino il solo
  <strong|NAND>, <math|P\<uparrow\>Q\<equiv\>\<neg\>(P\<wedge\>Q)>. Teniamo
  comunque <math|\<Rightarrow\>> e <math|\<equiv\>> perché rendono leggibili
  le dimostrazioni.

  <new-page*>

  <\officina|3. Scrivere una catena>
    Una dimostrazione è una catena di passi, uno per riga, ciascuno con la
    sua giustificazione tra graffe.

    <\itemize>
      <item>Parti dal lato più complicato: è più facile semplificare che
      complicare.

      <item>Per una tautologia, riducila a <math|T>. Per un'implicazione
      <math|P\<Rightarrow\>Q>, puoi assumere <math|P> e trasformare fino a
      <math|Q>.

      <item>Ogni passo <math|\<Rightarrow\>> dentro una formula più grande:
      controlla la polarità dell'occorrenza che sostituisci.

      <item>Se ti blocchi: elimina <math|\<Rightarrow\>> e <math|\<equiv\>>,
      spingi le negazioni verso l'interno, cerca un complemento o un terzo
      escluso.
    </itemize>

    Le stesse catene, con le stesse graffe, torneranno nei capitoli
    7\<#2013\>9 per dimostrare che un programma è corretto.
  </officina>

  <\verifica|3>
    <strong|a)> In <math|\<neg\>(P\<Rightarrow\>Q)\<wedge\>R>, le occorrenze
    di <math|P>, <math|Q>, <math|R> sono positive o negative?

    <strong|b)> Dimostra <math|P\<wedge\>(\<neg\>P\<vee\>Q)\<equiv\>P\<wedge\>Q>
    con una catena.

    <strong|c)> Esprimi <math|\<neg\>P> usando solo il NAND.
  </verifica>

  <chapter|Il linguaggio del primo ordine>

  <\inbreve>
    Nel calcolo proposizionale \SAlberto va al cinema\T è un atomo chiuso:
    non vediamo né Alberto né il cinema. La <strong|logica del primo ordine>
    (LPO) apre gli atomi: parla di individui, delle loro proprietà e
    relazioni, e dice \Sper ogni\T e \Sesiste\T. In questo capitolo impariamo
    a scrivere e a leggere le sue formule.
  </inbreve>

  <section|Perché il calcolo proposizionale non basta>

  \SAlberto va al cinema con Bruno o va al teatro con Carlo\T diventa
  <math|(<math-up|AC>\<wedge\><math-up|BC>)\<vee\>(<math-up|AT>\<wedge\><math-up|CT>)>:
  le persone e la relazione \Sandare a\T spariscono. E non si possono
  scrivere in modo compatto frasi su insiemi infiniti (\Stutti i pari
  maggiori di <math|2> non sono primi\T), proprietà che dipendono da una
  variabile (\Sse <math|x> è pari, <math|x+1> è dispari\T) o su molti
  individui (\Stutti gli studenti di FPL vanno al cinema\T). Nella LPO:

  <\equation*>
    \<forall\>x.(<math-up|pari>(x)\<wedge\>x\<gtr\>2\<Rightarrow\>\<neg\><math-up|primo>(x)),<space|2em>\<forall\>x.(<math-up|pari>(x)\<Rightarrow\><math-up|dispari>(x+1)).
  </equation*>

  Una proprietà generale permette di ricavare i casi particolari: dalla
  seconda segue <math|<math-up|pari>(4)\<Rightarrow\><math-up|dispari>(5)>.
  Le formule vere in ogni interpretazione si dicono <strong|valide>, come le
  tautologie; ma ora non esistono tavole finite che decidano la validità:
  servono dimostrazioni, e non sempre se ne trova una.

  <section|Termini e formule>

  L'alfabeto ha quattro tipi di simboli, più connettivi, quantificatori
  <math|\<forall\>>, <math|\<exists\>> e punteggiatura.

  <\with|par-mode|center>
    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-valign|t>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|2|2|cell-width|0.71par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|1|1|cell-width|0.27par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|2|2|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-tsep|0.3fn>|<cwith|1|-1|1|-1|cell-bsep|0.3fn>|<cwith|1|-1|1|1|cell-lsep|0fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|2|-1|1|-1|cell-bborder|0.25pt>|<table|<row|<cell|Simboli>|<cell|Che
    cosa indicano>>|<row|<cell|costanti <math|a,b,c,2,<math-up|FPL>>>|<cell|individui
    precisi del dominio>>|<row|<cell|variabili <math|x,y,z>>|<cell|individui
    generici>>|<row|<cell|funzioni <math|f,g,+,*,<math-up|succ>>>|<cell|operatori
    che da individui danno un individuo; ognuno ha la sua <em|arietà> (numero
    di argomenti)>>|<row|<cell|predicati <math|p,q,=,\<less\>,<math-up|pari>>>|<cell|proprietà
    o relazioni; arietà <math|0> per le lettere proposizionali
    (\Spiove\T)>>>>>
  </with>

  I <strong|termini> denotano individui e si definiscono per induzione: ogni
  costante e ogni variabile è un termine; se <math|g> ha arietà <math|n> e
  <math|t<rsub|1>,\<ldots\>,t<rsub|n>> sono termini,
  <math|g(t<rsub|1>,\<ldots\>,t<rsub|n>)> è un termine. Esempi: <math|a>,
  <math|x>, <math|g(a)>, <math|h(x,g(a))>, e <math|x+(1*z)>, che in notazione
  prefissa è <math|+(x,*(1,z))>.

  Le <strong|formule> denotano valori di verità: <math|T> e <math|F>; le
  formule <strong|atomiche> <math|p(t<rsub|1>,\<ldots\>,t<rsub|n>)>; e poi
  <math|(P)>, <math|\<neg\>P>, <math|P\<wedge\>Q>, <math|P\<vee\>Q>,
  <math|P\<Rightarrow\>Q>, <math|P\<equiv\>Q>, <math|(\<forall\>x.P)>,
  <math|(\<exists\>x.P)>. Quantificatori uguali di seguito si abbreviano:
  <math|\<forall\>x,y,z.P>.

  <\attenzione|Termini e formule sono cose diverse>
    <math|x+1> è un <em|termine>: denota un numero.
    <math|<math-up|dispari>(x+1)> è una <em|formula>: è vera o falsa. Le
    funzioni trasformano termini in termini; i predicati trasformano termini
    in formule. Scrivere <math|<math-up|pari>(x)+1> non ha senso.
  </attenzione>

  <section|Variabili libere e legate>

  In <math|(\<forall\>x.P)> la formula <math|P> è la <strong|portata> del
  quantificatore. Un'occorrenza di <math|x> è <strong|legata> se sta nella
  portata di un <math|\<forall\>x> o <math|\<exists\>x>, altrimenti è
  <strong|libera>. Conta la singola occorrenza: in
  <math|(\<forall\>x.p(a,x))\<wedge\>q(x,y)> la prima <math|x> è legata, la
  seconda è libera, come <math|y>.

  <figura|<image|fondamenti-di-programmazione-1-assets/portata.pdf|160.0mm|47.5mm||>|Le
  occorrenze in <math|\<forall\>y.(z=y\<wedge\>(x=y\<vee\>(\<exists\>x.x=z\<vee\>z=y)))>.
  Le frecce collegano le variabili legate al loro quantificatore; le
  occorrenze in grigio sono libere. La formula è aperta, con variabili libere
  <math|x> e <math|z>.>

  Una formula è <strong|chiusa> se non ha variabili libere, <strong|aperta>
  altrimenti; <math|P(x)> ricorda che <math|x> è libera in <math|P>. Il
  valore di una formula aperta non è determinato: sui naturali
  <math|<math-up|multiplo>(x,3)> è vera se <math|x> \Ssta per\T <math|6>,
  falsa se sta per <math|7> (come <math|x+1=2> nel capitolo 2). Invece
  <math|\<forall\>x.<math-up|multiplo>(x,3)> è chiusa, e sui naturali è
  falsa. Ci occuperemo quasi solo di formule chiuse.

  Le variabili legate sono segnaposto e si possono ribattezzare:
  <math|(\<forall\>x.P)\<equiv\>(\<forall\>y.P[y/x])> e
  <math|(\<exists\>x.P)\<equiv\>(\<exists\>y.P[y/x])>, purché <math|y> non
  compaia in <math|P>. In <math|P[y/x]> si sostituiscono solo le occorrenze
  libere di <math|x> in <math|P>, non quelle già legate da un quantificatore
  interno.

  <\attenzione|La cattura>
    La condizione su <math|y> è essenziale. In <math|\<forall\>x.x\<leq\>y>
    non si può ribattezzare <math|x> in <math|y>: si otterrebbe
    <math|\<forall\>y.y\<leq\>y>, dove la <math|y> che era libera è stata
    \Scatturata\T e il significato è cambiato.
  </attenzione>

  <section|Interpretazioni>

  Una stessa formula può essere vera o falsa a seconda di come leggiamo i
  simboli. <math|\<forall\>x.p(x)\<vee\>q(x)> è vera sulle persone se
  <math|p> è \Smaggiorenne\T e <math|q> è \Sminorenne\T; è falsa sui naturali
  se <math|p> è \Sprimo\T e <math|q> è \Spari\T (<math|9> non è né l'uno né
  l'altro).

  Un'<strong|interpretazione> è una coppia <math|\<cal-I\>=(D,\<alpha\>)>: un
  <strong|dominio> <math|D> (un insieme) e una funzione <math|\<alpha\>> che
  dà a ogni costante un elemento di <math|D>, a ogni funzione di arietà
  <math|n> una funzione <math|D<rsup|n>\<rightarrow\>D>, a ogni predicato di
  arietà <math|n> una funzione <math|D<rsup|n>\<rightarrow\><math-up|Bool>>
  (di arietà <math|0>: un valore di verità).

  <figura|<image|fondamenti-di-programmazione-1-assets/tre-interpretazioni.pdf|160.0mm|62.5mm||>|Tre
  interpretazioni dello stesso alfabeto (costanti <math|a,b,c>, un predicato
  <math|p>). In grigio gli elementi che soddisfano <math|p>.
  <math|\<cal-I\><rsub|2>> e <math|\<cal-I\><rsub|3>> differiscono solo per
  il dominio, eppure <math|\<forall\>x.p(x)> è vera nella prima e falsa nella
  seconda.>

  <\with|par-mode|center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-lsep|0.55em>|<cwith|1|-1|1|-1|cell-rsep|0.55em>|<cwith|1|-1|1|-1|cell-tsep|0.22fn>|<cwith|1|-1|1|-1|cell-bsep|0.22fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<table|<row|<cell|Formula>|<cell|<math|\<cal-I\><rsub|1>>
    (città, capoluogo)>|<cell|<math|\<cal-I\><rsub|2>>
    (<math|{5,10,15}>)>|<cell|<math|\<cal-I\><rsub|3>> (<math|\<bbb-N\>>,
    multiplo di <math|5>)>>|<row|<cell|<math|p(c)>>|<cell|<falso>>|<cell|<vero>>|<cell|<vero>>>|<row|<cell|<math|\<exists\>x.p(x)>>|<cell|<vero>>|<cell|<vero>>|<cell|<vero>>>|<row|<cell|<math|\<forall\>x.p(x)>>|<cell|<falso>>|<cell|<vero>>|<cell|<falso>>>|<row|<cell|<math|(\<exists\>x.p(x))\<wedge\>(\<exists\>y.\<neg\>p(y))>>|<cell|<vero>>|<cell|<falso>>|<cell|<vero>>>>>>
  </with>

  In <math|\<cal-I\><rsub|1>> le costanti sono Milano, Roma, Pontedera; in
  <math|\<cal-I\><rsub|2>> e <math|\<cal-I\><rsub|3>> sono <math|5>,
  <math|10>, <math|15>. Il dominio conta anche per gli individui <em|senza
  nome>: in <math|\<bbb-N\>> c'è <math|7>, che nessuna costante nomina ma che
  basta a rendere falsa <math|\<forall\>x.p(x)>.

  <section|Formalizzare>

  Per formalizzare una frase si sceglie un alfabeto e un'interpretazione, e
  si scrive una formula vera <em|se e solo se> la frase è vera:

  <\enumerate>
    <item>individua il dominio <math|D>;

    <item>per ogni individuo nominato, una costante;

    <item>per ogni operatore che dà un individuo, un simbolo di funzione;

    <item>per ogni proprietà o relazione, un predicato;

    <item>scrivi la formula.
  </enumerate>

  \SSe un naturale è pari, lo è anche il successore del suo successore\T:
  dominio <math|\<bbb-N\>>, funzione <math|<math-up|succ>> con
  <math|\<alpha\>(<math-up|succ>)(n)=n+1> (un operatore, non un predicato),
  predicato <math|<math-up|pari>>:

  <\equation*>
    \<forall\>x.<math-up|pari>(x)\<Rightarrow\><math-up|pari>(<math-up|succ>(<math-up|succ>(x))).
  </equation*>

  \SDue persone sono parenti se hanno un antenato in comune\T: l'antenato non
  ha nome, quindi diventa una variabile quantificata <em|dentro> la premessa:

  <\equation*>
    \<forall\>x,y.(\<exists\>z.<math-up|antenato>(z,x)\<wedge\><math-up|antenato>(z,y))\<Rightarrow\><math-up|parenti>(x,y).
  </equation*>

  Spesso si quantifica solo su chi soddisfa una condizione <math|P>, il
  <strong|dominio> del quantificatore. Si abbrevia

  <\equation*>
    (\<forall\>x:P.Q)<text| per >(\<forall\>x.P\<Rightarrow\>Q),<space|2em>(\<exists\>x:P.Q)<text|
    per >(\<exists\>x.P\<wedge\>Q).
  </equation*>

  <\attenzione|Con <math|\<forall\>> va <math|\<Rightarrow\>>, con
  <math|\<exists\>> va <math|\<wedge\>>>
    \SQualche studente di FPL va al cinema\T è
    <math|\<exists\>x.<math-up|stud>(x)\<wedge\><math-up|cin>(x)>. Scrivere
    <math|\<exists\>x.<math-up|stud>(x)\<Rightarrow\><math-up|cin>(x)> è un
    errore: basta una persona che <em|non> è studente per rendere vera
    l'implicazione, e la formula diventa vera quasi sempre. Viceversa
    <math|\<forall\>x.<math-up|stud>(x)\<wedge\><math-up|cin>(x)> direbbe che
    <em|tutti> sono studenti.
  </attenzione>

  <\guidato|Tutti tranne uno>
    Dominio: le persone; costanti <math|A,B,C> (Alberto, Bruno, Carlo);
    predicati <math|<math-up|segueFPL>>, <math|<math-up|vaCinema>>, <math|=>.
    Formalizza: (1) \SAlberto non segue FPL ma va al cinema con Bruno o con
    Carlo\T; (2) \Stutti gli studenti di FPL vanno al cinema\T; (3) \Stutti
    gli studenti di FPL tranne uno vanno al cinema\T.

    <em|Idea.> \SMa\T è una congiunzione; \Stranne uno\T dice due cose: ce
    n'è uno che non ci va, e <em|tutti gli altri> ci vanno.

    <em|Conto.> (1) <math|\<neg\><math-up|segueFPL>(A)\<wedge\><math-up|vaCinema>(A)\<wedge\>(<math-up|vaCinema>(B)\<vee\><math-up|vaCinema>(C))>.

    (2) <math|\<forall\>x.<math-up|segueFPL>(x)\<Rightarrow\><math-up|vaCinema>(x)>.

    (3) <math|\<exists\>x.(<math-up|segueFPL>(x)\<wedge\>\<neg\><math-up|vaCinema>(x)\<wedge\>\<forall\>y.(<math-up|segueFPL>(y)\<wedge\>\<neg\>(x=y)\<Rightarrow\><math-up|vaCinema>(y)))>.

    <em|Controllo.> Senza la parte <math|\<forall\>y> la (3) direbbe solo
    \Salmeno uno non ci va\T. Senza <math|\<neg\>(x=y)> la parte
    <math|\<forall\>y> si applicherebbe anche a <math|x> stesso e
    contraddirebbe <math|\<neg\><math-up|vaCinema>(x)>. Un solo predicato
    <math|<math-up|segueFPL>> è più compatto di
    <math|<math-up|studente>(x)\<wedge\><math-up|frequenta>(x,<math-up|FPL>)>,
    ma non permette di parlare di altri corsi: l'alfabeto si sceglie in base
    a ciò che si vuole dire.
  </guidato>

  <\officina|4. Formalizzare senza tradire>
    <\itemize>
      <item>Prima l'alfabeto, poi la formula: dominio, costanti, funzioni
      (danno individui), predicati (danno vero o falso).

      <item>\SOgni <math|P> è <math|Q>\T:
      <math|\<forall\>x.P(x)\<Rightarrow\>Q(x)>. \SQualche <math|P> è
      <math|Q>\T: <math|\<exists\>x.P(x)\<wedge\>Q(x)>.

      <item>\SEsattamente uno\T: <math|\<exists\>x.(P(x)\<wedge\>\<forall\>y.(P(y)\<Rightarrow\>y=x))>.
      \STranne uno\T: come sopra, con la negazione al posto giusto.

      <item>Un individuo senza nome nella frase è una variabile quantificata,
      nel punto in cui la frase lo introduce.

      <item>Controllo finale: rileggi la formula ad alta voce e cerca
      un'interpretazione in cui la formula e la frase non sono d'accordo.
    </itemize>
  </officina>

  <\verifica|4>
    <strong|a)> In <math|(\<exists\>x.p(x)\<wedge\>(\<forall\>x.q(x,y)))\<vee\>r(x)>,
    quali occorrenze sono libere?

    <strong|b)> Formalizza \Sogni numero pari ha un successore dispari\T e
    dimmi se è un termine o una formula.

    <strong|c)> Perché <math|\<forall\>x.p(x)> è vera in
    <math|\<cal-I\><rsub|2>> e falsa in <math|\<cal-I\><rsub|3>>?
  </verifica>

  <chapter|Verità e leggi nel primo ordine>

  <\inbreve>
    Come si decide se una formula con <math|\<forall\>> ed <math|\<exists\>>
    è vera? Serve sapere a chi si riferiscono le variabili: un
    <strong|assegnamento>. Con questo strumento definiamo il valore di ogni
    formula, e poi raccogliamo le leggi e le regole che permettono di
    <em|dimostrare> con i quantificatori.
  </inbreve>

  <section|Il valore dei termini>

  Fissiamo un'interpretazione <math|\<cal-I\>=(D,\<alpha\>)>. Un termine
  <em|chiuso> denota un elemento di <math|D>: una costante vale
  <math|\<alpha\>(c)>; <math|g(t<rsub|1>,\<ldots\>,t<rsub|n>)> vale
  <math|\<alpha\>(g)> applicata ai valori dei <math|t<rsub|i>>. Con
  <math|D=\<bbb-N\>>, <math|\<alpha\>(a)=0>, <math|\<alpha\>(s)(n)=n+1>:

  <\equation*>
    \<alpha\>(s(s(a)))=\<alpha\>(s)(\<alpha\>(s)(\<alpha\>(a)))=\<alpha\>(s)(\<alpha\>(s)(0))=(0+1)+1=2.
  </equation*>

  <math|s(s(a))> è una scrittura; <math|2> è il numero che essa denota.

  Per un termine con variabili serve sapere a chi si riferiscono. Un
  <strong|assegnamento> è una funzione <math|\<rho\>:\<cal-V\>\<rightarrow\>D>,
  per esempio <math|\<rho\>={x\<mapsto\>0,y\<mapsto\>3,z\<mapsto\>1}>. La
  notazione <math|\<rho\>[d/x]> indica l'assegnamento uguale a <math|\<rho\>>
  tranne che manda <math|x> in <math|d>: <math|\<rho\>[15/z]={x\<mapsto\>0,y\<mapsto\>3,z\<mapsto\>15}>.
  Il valore <math|\<alpha\><rsub|\<rho\>>(t)> aggiunge una sola regola: una
  variabile vale <math|\<rho\>(x)>. Con <math|\<rho\>={x\<mapsto\>2,y\<mapsto\>10}>
  si ha <math|\<alpha\><rsub|\<rho\>>(s(s(x)))=4> e
  <math|\<alpha\><rsub|\<rho\>>(s(s(y)))=12>.

  <section|Il valore delle formule>

  Il valore di una formula dipende da <math|\<cal-I\>> e da <math|\<rho\>>;
  lo scriviamo <math|\<cal-I\><rsub|\<rho\>>(\<varphi\>)>. Le regole
  (S0)\<#2013\>(S4) sono quelle del capitolo 2: <math|T> vale <vero>,
  <math|F> vale <falso>, i connettivi si calcolano con le loro tabelle. Per
  una formula atomica, (S1): si calcolano i termini e si applica il
  predicato, <math|\<cal-I\><rsub|\<rho\>>(p(t<rsub|1>,\<ldots\>,t<rsub|n>))=\<alpha\>(p)(\<alpha\><rsub|\<rho\>>(t<rsub|1>),\<ldots\>,\<alpha\><rsub|\<rho\>>(t<rsub|n>))>.
  Le novità sono i quantificatori:

  <\itemize>
    <item><strong|(S5)> <math|\<cal-I\><rsub|\<rho\>>(\<forall\>x.P)=<vero>>
    se <math|\<cal-I\><rsub|\<rho\>[d/x]>(P)=<vero>> <em|per ogni>
    <math|d\<in\>D>; altrimenti <falso>.

    <item><strong|(S6)> <math|\<cal-I\><rsub|\<rho\>>(\<exists\>x.P)=<vero>>
    se <math|\<cal-I\><rsub|\<rho\>[d/x]>(P)=<vero>> <em|per almeno un>
    <math|d\<in\>D>; altrimenti <falso>.
  </itemize>

  Per valutare la portata, tipicamente aperta, si <em|prova> ogni elemento
  del dominio come valore di <math|x>. Per una formula <strong|chiusa>
  l'assegnamento non conta (le slide lo enunciano senza dimostrarlo), e
  scriviamo semplicemente <math|\<cal-I\>(\<varphi\>)>.

  <\immagine|<math|\<forall\>> è un \Se\T lungo, <math|\<exists\>> è un \So\T
  lungo>
    Su un dominio finito <math|{a,b,c}>, <math|\<forall\>x.P(x)> si comporta
    come <math|P(a)\<wedge\>P(b)\<wedge\>P(c)> ed <math|\<exists\>x.P(x)>
    come <math|P(a)\<vee\>P(b)\<vee\>P(c)>. Per smontare un <math|\<forall\>>
    basta un elemento che fallisce; per un <math|\<exists\>> basta un
    elemento che funziona: un <strong|testimone>.
  </immagine>

  <\guidato|Un esistenziale con dentro un universale>
    <math|D={a,b}>; <math|Q> vale <vero> su entrambi; <math|P(x,y)> vale
    <vero> solo per <math|(a,a)> e <math|(a,b)>. Stabilisci il valore di
    <math|\<varphi\><rsub|1>=\<exists\>x.Q(x)\<wedge\>(\<forall\>y.P(x,y))>.

    <em|Idea.> Per (S6) basta un testimone per <math|x>. Per il
    <math|\<forall\>y> interno bisogna invece provare tutti i valori di
    <math|y>.

    <figura|<image|fondamenti-di-programmazione-1-assets/quantificatori.pdf|120.0mm|50.0mm||>|La
    tabella di <math|P(x,y)>. La riga di <math|a> è tutta vera: <math|a> è il
    testimone per <math|\<exists\>x.\<forall\>y.P(x,y)>. La riga di <math|b>
    non funzionerebbe.>

    <em|Conto.> Proviamo <math|x\<mapsto\>a>. <math|Q(a)=<vero>>. Per
    <math|\<forall\>y.P(a,y)>: con <math|y\<mapsto\>a>, <math|P(a,a)=<vero>>;
    con <math|y\<mapsto\>b>, <math|P(a,b)=<vero>>. Quindi la portata vale
    <math|<vero>\<wedge\><vero>=<vero>> e <math|\<varphi\><rsub|1>> è vera.

    <em|Controllo.> Con <math|x\<mapsto\>b> avremmo <math|P(b,a)=<falso>>:
    per un <math|\<exists\>> basta però un solo testimone buono.
  </guidato>

  Allo stesso modo, con <math|D={a,b,c}> e i valori

  <\with|par-mode|center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-lsep|0.55em>|<cwith|1|-1|1|-1|cell-rsep|0.55em>|<cwith|1|-1|1|-1|cell-tsep|0.22fn>|<cwith|1|-1|1|-1|cell-bsep|0.22fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<table|<row|<cell|<math|x>>|<cell|<math|a>>|<cell|<math|b>>|<cell|<math|c>>>|<row|<cell|<math|P>>|<cell|<vero>>|<cell|<vero>>|<cell|<falso>>>|<row|<cell|<math|Q>>|<cell|<vero>>|<cell|<falso>>|<cell|<vero>>>|<row|<cell|<math|R>>|<cell|<falso>>|<cell|<vero>>|<cell|<falso>>>>>>
  </with>

  la formula <math|\<forall\>x.P(x)\<Rightarrow\>Q(x)\<wedge\>R(x)> è falsa:
  per <math|x=a> la premessa è vera e <math|Q(a)\<wedge\>R(a)> è falsa. Un
  controesempio basta.

  Le definizioni del capitolo 2 si estendono. Una formula chiusa è
  <strong|valida> (<math|\<vDash\>\<varphi\>>) se è vera in ogni
  interpretazione, come <math|\<forall\>x.p(x)\<vee\>\<neg\>p(x)>;
  <strong|soddisfacibile> se è vera in almeno una, come <math|p(a)> (basta
  <math|D=\<bbb-N\>>, <math|\<alpha\>(a)=44>, <math|p> = \Sessere pari\T);
  <strong|insoddisfacibile> se non lo è mai, come
  <math|\<exists\>x.p(x)\<wedge\>\<neg\>p(x)>.
  <math|\<Gamma\>\<vDash\>\<varphi\>> se ogni modello di <math|\<Gamma\>> è
  modello di <math|\<varphi\>>.

  <section|Dimostrare nella LPO>

  Una regola di inferenza si scrive <math|<frac|\<delta\><rsub|1>,\<ldots\>,\<delta\><rsub|k>|\<delta\>>>:
  dalle premesse sopra si ricava la conclusione sotto; con <math|k=0> è un
  <strong|assioma>. Una <strong|dimostrazione> di <math|\<varphi\>> da
  <math|\<Gamma\>> è una sequenza di formule, ciascuna presa da
  <math|\<Gamma\>> o ottenuta con una regola dalle precedenti, che finisce
  con <math|\<varphi\>>; si scrive <math|\<Gamma\>\<vdash\>\<varphi\>>. Un
  sistema è <strong|corretto> se <math|\<Gamma\>\<vdash\>\<varphi\>> implica
  <math|\<Gamma\>\<vDash\>\<varphi\>>, <strong|completo> se vale il
  viceversa. Il calcolo proposizionale è corretto e completo; il sistema del
  corso per la LPO è corretto (sistemi completi esistono, come la deduzione
  naturale, ma non li vediamo).

  Si usano tutte le leggi del capitolo 3, più leggi per i quantificatori, che
  sono <em|formule valide>. Se si usano anche ipotesi
  <math|\<Gamma\><rsub|2>>, la dimostrazione garantisce
  <math|\<Gamma\><rsub|2>\<vDash\>\<varphi\>>, non la validità. Il
  <strong|teorema di deduzione> giustifica il trucco di assumere la premessa:
  <math|\<Gamma\>\<vdash\>P\<Rightarrow\>Q> se e solo se
  <math|\<Gamma\>,P\<vdash\>Q>.

  I principi di sostituzione restano validi, evitando catture; sotto un
  quantificatore la relazione usata deve valere per tutti i valori della
  variabile quantificata; per la polarità, <math|\<forall\>> ed
  <math|\<exists\>> <em|non> cambiano segno. Con l'ipotesi
  <math|P\<Rightarrow\>Q>, il passo <math|(\<forall\>x.P\<vee\>R)\<wedge\>(\<exists\>x.\<neg\>P)\<Rightarrow\>(\<forall\>x.Q\<vee\>R)\<wedge\>(\<exists\>x.\<neg\>P)>
  è corretto (la prima <math|P> è positiva); sostituire anche la seconda
  <math|P>, che sta sotto <math|\<neg\>>, sarebbe sbagliato.

  <section|Le leggi dei quantificatori>

  Nelle sostituzioni <math|P[t/x]> si cambiano solo le occorrenze libere di
  <math|x>, evitando la cattura delle variabili di <math|t>: se necessario,
  prima si rinominano le variabili legate. Quando una legge istanzia un
  termine o nomina un individuo, si lavora su un dominio non vuoto. Il caso
  del dominio vuoto serve a capire quali ipotesi sono necessarie.

  <\with|par-mode|center>
    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-valign|t>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|2|2|cell-width|0.71par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|1|1|cell-width|0.27par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|2|2|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-tsep|0.3fn>|<cwith|1|-1|1|-1|cell-bsep|0.3fn>|<cwith|1|-1|1|1|cell-lsep|0fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|2|-1|1|-1|cell-bborder|0.25pt>|<table|<row|<cell|Nome>|<cell|Legge>>|<row|<cell|Elim.
    <math|\<forall\>>, intro. <math|\<exists\>>>|<cell|<math|(\<forall\>x.P)\<Rightarrow\>P[t/x]><new-line><math|P[t/x]\<Rightarrow\>(\<exists\>x.P)>
    (<math|t> termine, sostituite le occorrenze libere di
    <math|x>)>>|<row|<cell|De Morgan>|<cell|<math|\<neg\>(\<forall\>x.P)\<equiv\>(\<exists\>x.\<neg\>P)><new-line><math|\<neg\>(\<exists\>x.P)\<equiv\>(\<forall\>x.\<neg\>P)>>>|<row|<cell|Annidamento>|<cell|<math|\<forall\>x.\<forall\>y.P\<equiv\>\<forall\>y.\<forall\>x.P><new-line><math|\<exists\>x.\<exists\>y.P\<equiv\>\<exists\>y.\<exists\>x.P>>>|<row|<cell|Costante>|<cell|<math|(\<forall\>x.P)\<equiv\>P><new-line><math|(\<exists\>x.P)\<equiv\>P><new-line>se
    <math|x> non occorre in <math|P> (dominio non
    vuoto)>>|<row|<cell|Distribuzione>|<cell|<math|(\<forall\>x.P\<wedge\>Q)\<equiv\>(\<forall\>x.P)\<wedge\>(\<forall\>x.Q)><new-line><math|(\<exists\>x.P\<vee\>Q)\<equiv\>(\<exists\>x.P)\<vee\>(\<exists\>x.Q)>>>|<row|<cell|Solo
    implicazione>|<cell|<math|(\<forall\>x.P)\<vee\>(\<forall\>x.Q)\<Rightarrow\>(\<forall\>x.P\<vee\>Q)><new-line><math|(\<exists\>x.P\<wedge\>Q)\<Rightarrow\>(\<exists\>x.P)\<wedge\>(\<exists\>x.Q)>>>|<row|<cell|Distrib.
    con <math|Q> fisso>|<cell|<math|(\<forall\>x.P\<wedge\>Q)\<equiv\>(\<forall\>x.P)\<wedge\>Q><new-line><math|(\<exists\>x.P\<vee\>Q)\<equiv\>(\<exists\>x.P)\<vee\>Q><new-line>se
    <math|x> non occorre in <math|Q> (dominio non
    vuoto)>>|<row|<cell|Indebolimento>|<cell|<math|(\<forall\>x.P)\<Rightarrow\>(\<forall\>x.P\<vee\>Q)><new-line><math|(\<exists\>x.P\<wedge\>Q)\<Rightarrow\>(\<exists\>x.P)>,
    e analoghe>>|<row|<cell|Dominio>|<cell|<math|(\<forall\>x:P\<vee\>Q.R)\<equiv\>(\<forall\>x:P.R)\<wedge\>(\<forall\>x:Q.R)><new-line><math|(\<exists\>x:P\<vee\>Q.R)\<equiv\>(\<exists\>x:P.R)\<vee\>(\<exists\>x:Q.R)>>>>>>
  </with>

  Esempi: dall'eliminazione di <math|\<forall\>>,
  <math|(\<forall\>x.<math-up|uomo>(x)\<Rightarrow\><math-up|mortale>(x))\<Rightarrow\>(<math-up|uomo>(<text|Socrate>)\<Rightarrow\><math-up|mortale>(<text|Socrate>))>;
  dall'introduzione di <math|\<exists\>>,
  <math|<math-up|pari>(10)\<wedge\>10\<gtr\>2\<Rightarrow\>\<exists\>x.<math-up|pari>(x)\<wedge\>x\<gtr\>2>.
  Per la riga \Ssolo implicazione\T: \Sogni persona è maggiorenne o
  minorenne\T è vera, ma non segue che tutte siano maggiorenni o tutte
  minorenni.

  <\attenzione|Il dominio vuoto>
    Su un dominio vuoto non c'è nessun <math|d> che falsifichi la portata,
    quindi <math|\<forall\>x.F> è <em|vacuamente vera>, mentre <math|F> è
    falsa: la legge della costante fallirebbe. Per questo la legge richiede
    un dominio non vuoto (e dualmente <math|\<exists\>x.T> sarebbe falsa). Lo
    stesso accade con un quantificatore ristretto: se nessun elemento
    soddisfa <math|P>, <math|\<forall\>x:P.Q> è vera qualunque sia <math|Q>
    (\Stutti gli studenti con tre teste vanno al cinema\T è vera), ed
    <math|\<exists\>x:P.Q> è falsa.
  </attenzione>

  <section|Uguaglianza>

  Nei linguaggi con <math|=>, <math|t<rsub|1>=t<rsub|2>> è vera quando i due
  termini denotano lo stesso elemento. La <strong|legge di Leibniz> dice che
  oggetti uguali hanno le stesse proprietà, in tre forme equivalenti:

  <\equation*>
    x=y\<Rightarrow\>(P\<equiv\>P[y/x]),<space|2em>x=y\<wedge\>P\<equiv\>x=y\<wedge\>P[y/x],<space|2em>x=y\<wedge\>P\<Rightarrow\>P[y/x].
  </equation*>

  Le <strong|leggi del singoletto> (con <math|x\<neq\>y> come nomi di
  variabile, e sostituzione senza cattura):
  <math|(\<forall\>x.x=y\<Rightarrow\>P)\<equiv\>P[y/x]> e
  <math|(\<exists\>x.x=y\<wedge\>P)\<equiv\>P[y/x]>. L'idea: <math|x=y>
  restringe il dominio a un solo elemento, quindi quantificare equivale a
  sostituire. La seconda si dimostra così:

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|3|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|0.2em>|<cwith|1|-1|1|-1|cell-rsep|0.2em>|<cwith|1|-1|3|3|cell-lsep|1.4em>|<cwith|1|-1|1|-1|cell-bsep|0.12fn>|<cwith|1|-1|1|-1|cell-tsep|0.12fn>|<table|<row|<cell|>|<cell|\<exists\>x.x=y\<wedge\>P>|<cell|>>|<row|<cell|\<equiv\>>|<cell|\<exists\>x.x=y\<wedge\>P[y/x]>|<cell|<text|{Leibniz}>>>|<row|<cell|\<equiv\>>|<cell|(\<exists\>x.x=y)\<wedge\>P[y/x]>|<cell|<text|{distribuzione:
    <math|x> non occorre più libera in <math|P[y/x]>}>>>|<row|<cell|\<equiv\>>|<cell|P[y/x]>|<cell|<text|{<math|(\<exists\>x.x=y)\<equiv\>T>,
    unità}>>>>>>
  </equation*>

  <section|Due regole per i quantificatori>

  <strong|Generalizzazione.> Per dimostrare <math|\<forall\>x.P> si prende
  una costante <em|nuova> <math|d> (che non compare in <math|\<Gamma\>> né in
  <math|P>) e si dimostra <math|P[d/x]>. <math|d> rappresenta un elemento
  generico, su cui non sappiamo nulla. Per esempio, da
  <math|\<forall\>x.P\<Rightarrow\>Q> e <math|\<forall\>x.P>: eliminando
  <math|\<forall\>> su <math|d> si ha <math|(P[d/x]\<Rightarrow\>Q[d/x])\<wedge\>P[d/x]>,
  e per modus ponens <math|Q[d/x]>; per generalizzazione,
  <math|\<forall\>x.Q>.

  <strong|Skolemizzazione.> Se tra le premesse c'è <math|\<exists\>x.P>, per
  dimostrare qualunque <math|Q> si può aggiungere l'ipotesi <math|P[d/x]> con
  <math|d> nuova, assente anche dalla conclusione <math|Q>: un elemento che
  soddisfa <math|P> esiste, e gli diamo un nome. Così si dimostra
  <math|(\<forall\>x.P\<Rightarrow\>Q)\<wedge\>(\<exists\>x.P)\<Rightarrow\>(\<exists\>x.Q)>:

  Assumiamo le due premesse e chiamiamo <math|d> il testimone
  dell\<#2019\>esistenziale: aggiungiamo temporaneamente <math|P[d/x]>.
  Dall\<#2019\>universale otteniamo <math|P[d/x]\<Rightarrow\>Q[d/x]>, quindi
  per modus ponens <math|Q[d/x]>, e per introduzione di <math|\<exists\>>
  concludiamo <math|\<exists\>x.Q>. La conclusione non nomina <math|d>,
  perciò possiamo chiudere l\<#2019\>ipotesi sul testimone.

  <strong|Attenzione.> La scelta di <math|d> è una regola di prova, non la
  legge <math|(\<exists\>x.P)\<Rightarrow\>P[d/x]> per una costante
  arbitraria: quest\<#2019\>ultima è falsa.

  Con la generalizzazione si dimostra anche
  <math|(\<exists\>y.\<forall\>x.P)\<Rightarrow\>(\<forall\>x.\<exists\>y.P)>:
  presa <math|d> nuova, <math|\<exists\>y.\<forall\>x.P(x,y)\<Rightarrow\>\<exists\>y.P(d,y)>
  per eliminazione di <math|\<forall\>> (in posizione positiva dentro
  <math|\<exists\>y>), e si generalizza su <math|d>.

  <\attenzione|<math|\<forall\>\<exists\>> e <math|\<exists\>\<forall\>> non
  si scambiano>
    Il viceversa è falso, e le slide non lo trattano. Esempio aggiunto: sui
    naturali <math|\<forall\>x.\<exists\>y.x\<less\>y> è vera (ogni numero ha
    un numero più grande), mentre <math|\<exists\>y.\<forall\>x.x\<less\>y> è
    falsa (non c'è un numero più grande di tutti). Nel primo caso <math|y>
    può dipendere da <math|x>, nel secondo no.
  </attenzione>

  <\officina|5. Lavorare con i quantificatori>
    <\itemize>
      <item><em|Valutare <math|\<exists\>x.P>.> Cerca un testimone.
      <em|Valutare <math|\<forall\>x.P>.> Cerca un controesempio; se non c'è,
      devi controllare tutto il dominio.

      <item><em|Dimostrare <math|\<forall\>x.P>.> Prendi una costante nuova
      <math|d> e dimostra <math|P[d/x]> senza supporre nulla su <math|d>.

      <item><em|Usare <math|\<exists\>x.P> in premessa.> Dai un nome nuovo al
      testimone (skolemizzazione) e usa <math|P[d/x]>.

      <item><em|Usare <math|\<forall\>x.P> in premessa.> Istanzialo sul
      termine che ti serve.

      <item><em|Negare.> De Morgan scambia <math|\<forall\>> ed
      <math|\<exists\>> e porta la negazione dentro.
    </itemize>
  </officina>

  <\verifica|5>
    <strong|a)> Nega <math|\<forall\>x.(p(x)\<Rightarrow\>\<exists\>y.q(x,y))>
    portando la negazione fino agli atomi.

    <strong|b)> Perché nella generalizzazione la costante deve essere nuova?

    <strong|c)> Con <math|D={a,b}>, <math|P(a,b)=P(b,a)=<vero>> e
    <math|P(a,a)=P(b,b)=<falso>>: quanto valgono
    <math|\<forall\>x.\<exists\>y.P(x,y)> e
    <math|\<exists\>y.\<forall\>x.P(x,y)>?
  </verifica>

  <chapter|Stati, espressioni e comandi>

  <\inbreve>
    Lasciamo la logica pura e torniamo ai programmi, con un piccolo
    linguaggio imperativo di soli interi e booleani. Diamo un significato
    preciso a due cose: le <strong|espressioni>, che calcolano un valore
    leggendo lo stato, e i <strong|comandi>, che cambiano lo stato. E
    scriviamo le specifiche come coppie di formule.
  </inbreve>

  <section|Perché una semantica formale>

  Di un linguaggio di programmazione si descrivono la <strong|sintassi>
  (quali programmi sono scritti correttamente) e la <strong|semantica> (che
  cosa significano). La sintassi si descrive con le grammatiche; per la
  semantica, in molte applicazioni non basta che un programma \Ssembri
  funzionare\T: per centrali nucleari, apparecchiature mediche o carte di
  credito bisogna <em|dimostrarne> le proprietà. Tre approcci:

  <\with|par-mode|center>
    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-valign|t>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|2|2|cell-width|0.71par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|1|1|cell-width|0.27par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|2|2|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-tsep|0.3fn>|<cwith|1|-1|1|-1|cell-bsep|0.3fn>|<cwith|1|-1|1|1|cell-lsep|0fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|2|-1|1|-1|cell-bborder|0.25pt>|<table|<row|<cell|Approccio>|<cell|Idea>>|<row|<cell|operazionale>|<cell|si
    descrivono gli stati e le transizioni da uno stato
    all'altro>>|<row|<cell|denotazionale>|<cell|a ogni costrutto si associa
    una funzione matematica>>|<row|<cell|assiomatico>|<cell|si annota il
    programma con asserzioni e se ne dimostra la correttezza con regole di
    inferenza (Hoare 1969, Dijkstra 1976)>>>>>
  </with>

  Vedremo una semantica denotazionale in questo capitolo e quella assiomatica
  nei successivi. I valori sono <math|<math-up|Val>=\<bbb-Z\>\<cup\><math-up|Bool>>.

  <section|Stati e specifiche>

  Uno <strong|stato> associa a ogni identificatore al più un valore: è una
  funzione parziale <math|\<sigma\>:<math-up|Ide>\<rightarrow\><math-up|Val>>,
  come <math|\<sigma\>={x\<mapsto\>10,y\<mapsto\>0}>. È la stessa struttura
  dell'assegnamento <math|\<rho\>> del capitolo 5, con gli identificatori al
  posto delle variabili.

  Una <strong|specifica> è una coppia di <strong|asserzioni> (formule con
  variabili libere): proprietà dello stato iniziale <math|\<longrightarrow\>>
  proprietà dello stato finale. Lo stato fa la parte dell'assegnamento:
  <math|\<sigma\>> <strong|soddisfa> <math|P>, <math|\<sigma\>\<vDash\>P>, se
  <math|P> è vera quando le variabili prendono i valori di <math|\<sigma\>>
  (con l'interpretazione usuale dei numeri). Per il massimo di due naturali:

  <\equation*>
    x\<geq\>0\<wedge\>y\<geq\>0<space|1em>\<longrightarrow\><space|1em>z=x<space|0.2em>max<space|0.2em>y.
  </equation*>

  <\attenzione|Una specifica troppo debole>
    L'\Salgoritmo\T \Smetti <math|2>, <math|50>, <math|50> in <math|x>,
    <math|y>, <math|z>\T la rispetta: da <math|{x\<mapsto\>20,y\<mapsto\>3}>
    arriva a uno stato con <math|z=50=2<space|0.2em>max<space|0.2em>50>. Ma
    non è ciò che volevamo: il massimo doveva essere quello dei valori
    <em|iniziali>, e <math|x>, <math|y> non dovevano cambiare.
  </attenzione>

  Per parlare dei valori iniziali si usano <strong|variabili di specifica>
  (maiuscole), che a differenza delle variabili di programma nessun comando
  può modificare:

  <\equation*>
    x=X\<wedge\>y=Y\<wedge\>X\<geq\>0\<wedge\>Y\<geq\>0<space|1em>\<longrightarrow\><space|1em>z=X<space|0.2em>max<space|0.2em>Y.
  </equation*>

  Ora da <math|{x\<mapsto\>20,y\<mapsto\>3}> si ha <math|X=20>, <math|Y=3> e
  serve <math|z=20>. Un algoritmo corretto: \Sse <math|x\<less\>y> assegna a
  <math|z> il valore di <math|y>, altrimenti quello di <math|x>\T. Altri
  esempi:

  <\with|par-mode|center>
    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-valign|t>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|2|2|cell-width|0.71par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|1|1|cell-width|0.27par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|2|2|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-tsep|0.3fn>|<cwith|1|-1|1|-1|cell-bsep|0.3fn>|<cwith|1|-1|1|1|cell-lsep|0fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|2|-1|1|-1|cell-bborder|0.25pt>|<table|<row|<cell|Problema>|<cell|Specifica>>|<row|<cell|raddoppiare
    un naturale>|<cell|<math|x=A\<wedge\>A\<gtr\>0\<longrightarrow\>x=2\<cdot\>A>>>|<row|<cell|valore
    assoluto>|<cell|<math|x=A\<longrightarrow\>x=\|A\|>>>|<row|<cell|quoziente
    e resto>|<cell|<math|x=X\<wedge\>y=Y\<wedge\>X\<geq\>0\<wedge\>Y\<gtr\>0\<longrightarrow\>X=q\<cdot\>Y+r\<wedge\>0\<leq\>r\<less\>Y>>>>>>
  </with>

  Spesso si abbrevia scrivendo \S<em|con <math|x>, <math|y> costanti>\T: il
  programma deve lasciare <math|x> e <math|y> come li ha trovati, e le
  variabili di specifica non servono. Per esempio
  <math|x\<geq\>0\<wedge\>y\<gtr\>0\<longrightarrow\>x=q\<cdot\>y+r\<wedge\>0\<leq\>r\<less\>y>
  con <math|x,y> costanti. A volte sono però inevitabili: in
  <math|x=A\<wedge\>A\<gtr\>0\<longrightarrow\>x=2\<cdot\>A> è proprio
  <math|x> a cambiare.

  <section|Espressioni>

  Le <strong|espressioni> sono costanti intere
  (<text|<with|font-family|tt|0>>, <text|<with|font-family|tt|125>>,
  <text|<with|font-family|tt|-5>>), costanti booleane
  (<text|<with|font-family|tt|true>>, <text|<with|font-family|tt|false>>,
  nomi riservati), identificatori, e le loro combinazioni con
  <text|<with|font-family|tt|not>>, con <math|+,-,*,<math-up|div>,mod> e con
  <math|=,\<neq\>,\<less\>,\<gtr\>,\<leq\>,\<geq\>,<math-up|and>,<math-up|or>>.
  Valgono le precedenze usuali; le parentesi disambiguano:
  <text|<with|font-family|tt|(8+5)*3>> contro
  <text|<with|font-family|tt|8+(5*3)>>.

  <text|<with|font-family|tt|(x + 5) and (x \<gtr\> y)>> è scritta bene, ma
  non ha senso: <text|<with|font-family|tt|and>> vuole due booleani. Lo
  scopre il <strong|controllo dei tipi>, detto <strong|semantica statica>
  perché guarda solo la struttura, senza calcolare. D'ora in poi le
  espressioni sono sempre staticamente corrette.

  Il valore di un'espressione in uno stato è dato dalla funzione
  <math|\<cal-E\>:<math-up|Exp>\<times\><math-up|State>\<rightarrow\><math-up|Val>>,
  definita sulla struttura:

  <\equation*>
    \<cal-E\>(<text|<with|font-family|tt|n>>,\<sigma\>)=<math-bf|n>,<space|1.5em>\<cal-E\>(x,\<sigma\>)=\<sigma\>(x),<space|1.5em>\<cal-E\>(<text|<with|font-family|tt|not>>
    E,\<sigma\>)=\<neg\>\<cal-E\>(E,\<sigma\>),<space|1.5em>\<cal-E\>(E<space|0.2em><math-up|op><space|0.2em>E<rprime|'>,\<sigma\>)=\<cal-E\>(E,\<sigma\>)<space|0.2em><math-bf|<math-up|op>><space|0.2em>\<cal-E\>(E<rprime|'>,\<sigma\>).
  </equation*>

  Il grassetto indica l'oggetto matematico che interpreta il simbolo (la
  costante <text|<with|font-family|tt|5>> denota il numero <math|5>;
  <text|<with|font-family|tt|and>> denota <math|\<wedge\>>). Anche per
  espressioni corrette, <math|\<cal-E\>> è una funzione <strong|parziale>:
  <math|\<cal-E\>(<text|<with|font-family|tt|x div
  0>>,\<sigma\>)=\<sigma\>(x)<space|0.2em><math-bf|<math-up|div>><space|0.2em>0=\<bot\>>,
  il valore indefinito.

  <section|Comandi>

  I <strong|comandi> modificano lo stato.

  <\with|par-mode|center>
    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-valign|t>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|2|2|cell-width|0.71par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|1|1|cell-width|0.27par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|2|2|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-tsep|0.3fn>|<cwith|1|-1|1|-1|cell-bsep|0.3fn>|<cwith|1|-1|1|1|cell-lsep|0fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|2|-1|1|-1|cell-bborder|0.25pt>|<table|<row|<cell|Comando>|<cell|Sintassi>>|<row|<cell|vuoto>|<cell|<text|<with|font-family|tt|skip>>>>|<row|<cell|assegnamento>|<cell|<text|<with|font-family|tt|x
    := E>>>>|<row|<cell|sequenza>|<cell|<text|<with|font-family|tt|C ;
    C'>>>>|<row|<cell|condizionale>|<cell|<text|<with|font-family|tt|if E
    then C else C' fi>> (guardia <math|E>, ramo then, ramo
    else)>>|<row|<cell|iterativo>|<cell|<text|<with|font-family|tt|while E do
    C endw>> (guardia <math|E>, corpo <math|C>)>>>>>
  </with>

  La semantica è la funzione parziale <math|\<cal-C\>:<math-up|Com>\<times\><math-up|State>\<rightarrow\><math-up|State>>.
  Scriviamo <math|\<sigma\>[v/x]> per lo stato uguale a <math|\<sigma\>>
  tranne che in <math|x>, dove vale <math|v>.

  <\itemize>
    <item><math|\<cal-C\>(<text|<with|font-family|tt|skip>>,\<sigma\>)=\<sigma\>>.

    <item><math|\<cal-C\>(<text|<with|font-family|tt|x :=
    E>>,\<sigma\>)=\<sigma\>[\<cal-E\>(E,\<sigma\>)/x]>: si calcola <math|E>
    nello stato <em|vecchio>, poi si cambia <math|x>.

    <item><math|\<cal-C\>(C<text|<with|font-family|tt|;>>C<rprime|'>,\<sigma\>)=\<cal-C\>(C<rprime|'>,\<cal-C\>(C,\<sigma\>))>:
    si esegue <math|C>, poi <math|C<rprime|'>> dallo stato raggiunto.

    <item>Il condizionale esegue <math|C> se
    <math|\<cal-E\>(E,\<sigma\>)=<vero>>, <math|C<rprime|'>> se
    <math|\<cal-E\>(E,\<sigma\>)=<falso>>.

    <item><math|\<cal-C\>(<text|<with|font-family|tt|while E do C
    endw>>,\<sigma\>)> è <math|\<sigma\>> se la guardia è falsa; altrimenti è
    <math|\<cal-C\>(<text|<with|font-family|tt|while E do C
    endw>>,\<cal-C\>(C,\<sigma\>))>. La definizione è <em|ricorsiva>.
  </itemize>

  Per esempio, <text|<with|font-family|tt|if x \<gtr\> 0 then skip else x :=
  -x fi>> lascia invariato <math|{x\<mapsto\>25}> e porta
  <math|{x\<mapsto\>-25}> in <math|{x\<mapsto\>25}>. E
  <text|<with|font-family|tt|x := y; x := x + 1>> porta
  <math|{x\<mapsto\>10,y\<mapsto\>0}> prima in
  <math|{x\<mapsto\>0,y\<mapsto\>0}>, poi in
  <math|{x\<mapsto\>1,y\<mapsto\>0}>.

  Il <text|<with|font-family|tt|while>> esegue il corpo più volte:
  <math|C<rsub|1>;C<rsub|2>;C<rsub|3>;\<ldots\>>, tutte copie di <math|C>. Se
  la sequenza è finita, si ferma al primo stato in cui la guardia è falsa
  (anche subito, con zero giri); se è infinita, la guardia resta vera per
  sempre e <math|\<cal-C\>=\<bot\>>. Anche <text|<with|font-family|tt|x := y
  div 0>> dà <math|\<bot\>>.

  <figura|<image|fondamenti-di-programmazione-1-assets/while-srotolato.pdf|160.0mm|35.0mm||>|Il
  <text|<with|font-family|tt|while>> srotolato: si controlla la guardia, si
  esegue il corpo, si ricontrolla. Ci si ferma al primo stato
  <math|\<sigma\><rsub|n>> in cui la guardia è falsa.>

  <text|<with|font-family|tt|while x \<gtr\>= y do x := x - 1 endw>> termina
  sempre: <math|x> scende di <math|1> e <math|y> resta ferma.
  <text|<with|font-family|tt|while x \<gtr\>= y do x := x + 1 endw>> può non
  terminare: se all'inizio <math|x\<geq\>y>, la guardia resta vera per
  sempre.

  <section|Primi algoritmi>

  <strong|Valore assoluto.> <math|{<math-up|numero>\<mapsto\>A}\<longrightarrow\>{<math-up|risultato>\<mapsto\>\|A\|}>:

  <\codice>
    if numero \<gtr\> 0 then risultato := numero else risultato := -numero fi
  </codice>

  <strong|Scambio.> <math|{x\<mapsto\>A,y\<mapsto\>B}\<longrightarrow\>{x\<mapsto\>B,y\<mapsto\>A}>.
  La prima idea, <text|<with|font-family|tt|x := y; y := x>>, è sbagliata:
  calcolando, <math|\<cal-C\>(<text|<with|font-family|tt|x := y; y :=
  x>>,\<sigma\>)=\<cal-C\>(<text|<with|font-family|tt|y :=
  x>>,\<sigma\>[B/x])={x\<mapsto\>B,y\<mapsto\>B}>. Il valore di <math|x> è
  perso. Serve un appoggio:

  <\codice>
    temp := x; x := y; y := temp
  </codice>

  <figura|<image|fondamenti-di-programmazione-1-assets/scambio.pdf|155.0mm|62.5mm||>|Perché
  serve <text|<with|font-family|tt|temp>>. L'assegnamento è <em|distruttivo>
  (il vecchio valore viene sovrascritto) e i comandi sono eseguiti in
  sequenza: chi viene sovrascritto per primo deve essere messo da parte.>

  <strong|Ordinare due numeri.> <math|{<math-up|n1>\<mapsto\>A,<math-up|n2>\<mapsto\>B}\<longrightarrow\>{<math-up|n1>\<mapsto\>max(A,B),<math-up|n2>\<mapsto\>min(A,B)}>:

  <\codice>
    if n1 \<less\> n2 then temp := n1; n1 := n2; n2 := temp else skip fi
  </codice>

  <\guidato|Elevamento a potenza>
    Specifica: <math|{<math-up|base>\<mapsto\>A,<math-up|esp>\<mapsto\>B}>
    con <math|A\<gtr\>0>, <math|B\<geq\>0> <math|\<longrightarrow\>>
    <math|{<math-up|ris>\<mapsto\>A<rsup|B>}>, seguendo <math|A<rsup|0>=1> e
    <math|A<rsup|B>=A\<cdot\>A\<cdots\>A> (<math|B> volte). Esegui il
    programma con <math|A=2>, <math|B=3>.

    <\codice>
      ris := 1;

      while esp \<gtr\> 0 do

      <hspace|2.100em>ris := ris * base;

      <hspace|2.100em>esp := esp - 1

      endw
    </codice>

    <em|Idea.> Una riga per ogni controllo della guardia; a destra di
    <text|<with|font-family|tt|:=>> si usano i valori vecchi.

    <em|Conto.>

    <\with|par-mode|center>
      <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-lsep|0.55em>|<cwith|1|-1|1|-1|cell-rsep|0.55em>|<cwith|1|-1|1|-1|cell-tsep|0.22fn>|<cwith|1|-1|1|-1|cell-bsep|0.22fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<table|<row|<cell|giro>|<cell|<text|<with|font-family|tt|ris>>>|<cell|<text|<with|font-family|tt|esp>>>|<cell|guardia
      <text|<with|font-family|tt|esp \<gtr\>
      0>>>>|<row|<cell|inizio>|<cell|<math|1>>|<cell|<math|3>>|<cell|<vero>>>|<row|<cell|1>|<cell|<math|2>>|<cell|<math|2>>|<cell|<vero>>>|<row|<cell|2>|<cell|<math|4>>|<cell|<math|1>>|<cell|<vero>>>|<row|<cell|3>|<cell|<math|8>>|<cell|<math|0>>|<cell|<falso>>>>>>
    </with>

    <em|Controllo.> <math|<math-up|ris>=8=2<rsup|3>>. Con <math|B=0> il corpo
    non si esegue mai e <math|<math-up|ris>=1=A<rsup|0>>: anche il caso
    limite è giusto.
  </guidato>

  <\officina|6. Tracciare uno stato>
    Per capire che cosa fa un programma, eseguilo a mano su un esempio
    piccolo.

    <\itemize>
      <item>Una colonna per ogni variabile, una riga dopo ogni comando (o
      dopo ogni giro).

      <item>In <text|<with|font-family|tt|x := E>> calcola <math|E> con i
      valori della riga precedente, <em|poi> scrivi il nuovo <math|x>.

      <item>Per ogni <text|<with|font-family|tt|while>> annota il valore
      della guardia a ogni controllo: l'ultimo è <falso>.

      <item>Prova anche i casi limite (zero giri, valori uguali, zero).
    </itemize>

    Una traccia non dimostra nulla \Sper ogni stato\T, ma trova molti errori
    e suggerisce che cosa resta vero a ogni giro: l'invariante del capitolo
    8.
  </officina>

  <\verifica|6>
    <strong|a)> In che stato porta <text|<with|font-family|tt|x := x + y; y
    := x - y; x := x - y>> lo stato <math|{x\<mapsto\>3,y\<mapsto\>7}>?

    <strong|b)> Perché <math|x\<geq\>0\<longrightarrow\>x=2\<cdot\>x> non va
    bene come specifica del raddoppio?

    <strong|c)> <text|<with|font-family|tt|while x \<neq\> 0 do x := x - 2
    endw>> termina partendo da <math|x=5>?
  </verifica>

  <chapter|Triple di Hoare>

  <\inbreve>
    Una tripla di Hoare <math|<hoare|Q|C|R>> collega un programma alle sue
    specifiche: se si parte da uno stato che soddisfa <math|Q>, il comando
    <math|C> termina con successo in uno stato che soddisfa <math|R>.
    Impariamo a leggere una tripla in tre modi (per capire un comando, per
    scrivere un comando, per dimostrarne la correttezza) e a costruire le
    prove con regole di inferenza.
  </inbreve>

  <section|Il significato di una tripla>

  Una <strong|tripla di Hoare> è una terna <math|<hoare|Q|C|R>>: <math|Q> è
  la <strong|precondizione>, <math|R> la <strong|postcondizione>, <math|C> un
  comando. La tripla è <em|soddisfatta> se, da ogni stato
  <math|\<sigma\>\<vDash\>Q>, l'esecuzione di <math|C> <em|termina con
  successo> in uno stato <math|\<sigma\><rprime|'>\<vDash\>R>. \S Con
  successo\T vuol dire senza errori: un assegnamento che divide per zero non
  termina con successo.

  <\equation*>
    <hoare|x\<gtr\>1|x:=x+1|x\<gtr\>2>
  </equation*>

  Questa tripla è soddisfatta: da ogni stato con <math|x\<gtr\>1>
  l'assegnamento porta a uno stato con <math|x\<gtr\>2>.

  Servono alcune notazioni. <math|<math-up|free>(P)> è l'insieme delle
  variabili libere di <math|P>: per esempio
  <math|<math-up|free>(x\<gtr\>y\<wedge\>z\<leq\>1)={x,y,z}>.
  <math|P<rsup|\<sigma\>>> è l'asserzione <math|P> in cui ogni variabile
  libera è sostituita dal suo valore in <math|\<sigma\>>, e
  <math|\<sigma\>\<vDash\>P> vale se <math|P<rsup|\<sigma\>>> è vera. Con
  <math|\<sigma\>={x\<mapsto\>18,y\<mapsto\><vero>,z\<mapsto\>-8}> e
  <math|P\<equiv\>(x\<gtr\>0\<wedge\>z\<less\>0)> si ha
  <math|P<rsup|\<sigma\>>\<equiv\>(18\<gtr\>0\<wedge\>-8\<less\>0)\<equiv\><vero>>.
  Infine <math|{P}> indica l'insieme degli stati che soddisfano <math|P>.

  Tre proprietà, usate senza dimostrazione (le slide le omettono; seguono
  dalle definizioni):

  <\itemize>
    <item><strong|(P1)> Se <math|\<sigma\>(x)=\<sigma\><rprime|'>(x)> per
    ogni <math|x\<in\><math-up|free>(E)>, allora
    <math|\<cal-E\>(E,\<sigma\>)=\<cal-E\>(E,\<sigma\><rprime|'>)>.

    <item><strong|(P2)> Se <math|\<sigma\>(x)=\<sigma\><rprime|'>(x)> per
    ogni <math|x\<in\><math-up|free>(P)>, allora <math|\<sigma\>\<vDash\>P>
    se e solo se <math|\<sigma\><rprime|'>\<vDash\>P>.

    <item><strong|(P3)> <math|\<sigma\>[\<cal-E\>(E,\<sigma\>)/x]\<vDash\>P>,
    con <math|E> definita e sostituzione senza cattura, se e solo se
    <math|\<sigma\>\<vDash\>P[E/x]>.
  </itemize>

  (P3) dice che assegnare a <math|x> il valore di <math|E> e poi valutare
  <math|P> equivale a valutare, nello stato di partenza, <math|P> con
  <math|E> al posto di <math|x>. Due esempi:

  <\equation*>
    \<sigma\>[\<cal-E\>(z+1,\<sigma\>)/x]\<vDash\>(x\<gtr\>y)<text| se e solo
    se >\<sigma\>\<vDash\>(x\<gtr\>y)[z+1/x]
  </equation*>

  <\equation*>
    \<sigma\>[\<cal-E\>(x+y,\<sigma\>)/x]\<vDash\>(x=z)<text| se e solo se
    >\<sigma\>\<vDash\>(x=z)[x+y/x]
  </equation*>

  Nel primo, il valore di <math|x> dopo l'assegnamento è
  <math|\<sigma\>(z)+1>, e <math|\<sigma\>(z)+1\<gtr\>\<sigma\>(y)> vale se e
  solo se <math|z+1\<gtr\>y>. Nel secondo il valore è
  <math|\<sigma\>(x)+\<sigma\>(y)>, e l'uguaglianza con <math|\<sigma\>(z)> è
  proprio <math|x+y=z>.

  <section|Tre usi di una tripla>

  La stessa tripla si può leggere in tre modi.

  <\itemize>
    <item><strong|Semantica.> Dati <math|Q> e <math|C>, si cerca <math|R> che
    descriva il comportamento di <math|C>. Con
    <math|C\<equiv\><text|<with|font-family|tt|if x \<less\> 10 then x := 1
    else x := 2 fi>>> e <math|Q\<equiv\>(x\<gtr\>10)>, la postcondizione
    <math|R\<equiv\>(x=2)> descrive il comando: la guardia è falsa, si esegue
    il ramo <text|<with|font-family|tt|else>> e si ottiene <math|x=2>.

    <item><strong|Specifica.> Dati <math|Q> e <math|R>, si cerca un <math|C>
    che renda vera la tripla: è scrivere un programma che realizza la
    specifica. Con <math|Q\<equiv\>(x\<gtr\>0)> e
    <math|R\<equiv\>(y=2\<cdot\>x)> vanno bene <text|<with|font-family|tt|y
    := x * 2>>, <text|<with|font-family|tt|y := x + x>>,
    <text|<with|font-family|tt|y := x; y := y * 2>>. Ma va bene anche
    <text|<with|font-family|tt|y := 10; x := 5>>: nello stato finale
    <math|y=10=2\<cdot\>5>. Non è ciò che volevamo, perché il programma ha
    cambiato <math|x>. Per escluderlo servono le variabili di specifica del
    capitolo 6.

    <item><strong|Correttezza.> Dati <math|C>, <math|Q> e <math|R>, si
    dimostra che la tripla è soddisfatta. È l'uso che faremo in questo corso.
    Per esempio, il programma seguente soddisfa la tripla con
    <math|Q\<equiv\>(x\<geq\>0\<wedge\>y\<gtr\>0)> e
    <math|R\<equiv\>(x=q\<cdot\>y+r\<wedge\>0\<leq\>r\<less\>y)>:
  </itemize>

  <\codice>
    q := 0;

    r := x;

    while r \<gtr\>= y do

    <hspace|2.100em>q := q + 1;

    <hspace|2.100em>r := r - y

    endw
  </codice>

  <section|Regole per pre- e postcondizione>

  Una prova è una sequenza di regole di inferenza: sopra la linea le
  premesse, sotto la conclusione. Le prime due regole indeboliscono una
  tripla: si può partire da un insieme più piccolo di stati e arrivare a uno
  più grande.

  <\equation*>
    <frac|P\<Rightarrow\>P<rprime|'><space|2em><hoare|P<rprime|'>|C|R>|<hoare|P|C|R>><space|1em><text|(pre)>
  </equation*>

  <\equation*>
    <frac|<hoare|P|C|R<rprime|'>><space|2em>R<rprime|'>\<Rightarrow\>R|<hoare|P|C|R>><space|1em><text|(post)>
  </equation*>

  Le due insieme danno la regola (pre-post):

  <\equation*>
    <frac|P\<Rightarrow\>P<rprime|'><space|2em><hoare|P<rprime|'>|C|R<rprime|'>><space|2em>R<rprime|'>\<Rightarrow\>R|<hoare|P|C|R>><space|1em><text|(pre-post)>
  </equation*>

  <figura|<image|fondamenti-di-programmazione-1-assets/pre-post.pdf|160.0mm|62.5mm||>|Rafforzare
  la precondizione restringe l'insieme di partenza; indebolire la
  postcondizione allarga quello di arrivo. La tripla resta valida.>

  Lo <text|<with|font-family|tt|skip>> non cambia lo stato, quindi ha un
  assioma senza premesse:

  <\equation*>
    <hoare|P|<text|<with|font-family|tt|skip>>|P><space|1em><text|(skip)>
  </equation*>

  <section|Quando un'espressione è definita>

  Un'espressione può non avere valore per due motivi: la tipizzazione è
  scorretta, come in <text|<with|font-family|tt|5 + true>>, ma questo caso è
  escluso da un controllo dei tipi preliminare; oppure il valore è
  indefinito, come in <text|<with|font-family|tt|x := 0; y := k div x>>. Per
  il secondo caso introduciamo una funzione <math|<math-up|def>> che, dato
  <math|E>, restituisce un'asserzione tale che
  <math|\<sigma\>\<vDash\><math-up|def>(E)> se e solo se
  <math|\<cal-E\>(E,\<sigma\>)> è definito.

  <\itemize>
    <item><math|<math-up|def>(c)=<math-up|def>(x)=<vero>>, per costanti
    <math|c> e identificatori <math|x>.

    <item><math|<math-up|def>(E<space|0.2em><math-up|op><space|0.2em>E<rprime|'>)=<math-up|def>(E)\<wedge\><math-up|def>(E<rprime|'>)>,
    per <math|<math-up|op>\<in\>{+,-,*,=,\<neq\>,\<less\>,\<gtr\>,\<leq\>,\<geq\>,<text|<with|font-family|tt|and>>,<text|<with|font-family|tt|or>>}>.

    <item><math|<math-up|def>(E<space|0.2em><math-up|div><space|0.2em>E<rprime|'>)=<math-up|def>(E)\<wedge\><math-up|def>(E<rprime|'>)\<wedge\>E<rprime|'>\<neq\>0>,
    e lo stesso per <math|mod>.

    <item><math|<math-up|def>(<text|<with|font-family|tt|not>>E)=<math-up|def>(E)>.
  </itemize>

  Come nelle regole delle slide, qui gli identificatori letti si assumono
  presenti nello stato e del tipo dichiarato. Senza questa ipotesi, anche la
  lettura di un nome assente sarebbe indefinita. Le sole ulteriori fonti di
  indefinitezza sono quindi <math|<math-up|div>> e <math|mod> con secondo
  argomento nullo. Per esempio <math|<math-up|def>(x<space|0.2em><math-up|div><space|0.2em>(z-y))>
  vale <math|z\<neq\>y>:

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|3|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|0.2em>|<cwith|1|-1|1|-1|cell-rsep|0.2em>|<cwith|1|-1|3|3|cell-lsep|1.4em>|<cwith|1|-1|1|-1|cell-bsep|0.12fn>|<cwith|1|-1|1|-1|cell-tsep|0.12fn>|<table|<row|<cell|>|<cell|<math|<math-up|def>(x<space|0.2em><math-up|div><space|0.2em>(z-y))>>|<cell|>>|<row|<cell|<math|\<equiv\>>>|<cell|<math|<math-up|def>(x)\<wedge\><math-up|def>(z-y)\<wedge\>z-y\<neq\>0>>|<cell|<text|{definizione
    di def}>>>|<row|<cell|<math|\<equiv\>>>|<cell|<math|<vero>\<wedge\><math-up|def>(z-y)\<wedge\>z\<neq\>y>>|<cell|<text|{<math|<math-up|def>(x)\<equiv\><vero>>;
    <math|z-y\<neq\>0> è <math|z\<neq\>y>}>>>|<row|<cell|<math|\<equiv\>>>|<cell|<math|<math-up|def>(z)\<wedge\><math-up|def>(y)\<wedge\>z\<neq\>y>>|<cell|<text|{def
    di una differenza, unità}>>>|<row|<cell|<math|\<equiv\>>>|<cell|<math|z\<neq\>y>>|<cell|<text|{<math|<math-up|def>(z)\<equiv\><math-up|def>(y)\<equiv\><vero>>,
    unità}>>>>>>
  </equation*>

  <section|Assegnamento>

  L'assioma dell'assegnamento si usa <em|all'indietro>, dalla postcondizione
  alla precondizione:

  <\equation*>
    <hoare|<math-up|def>(E)\<wedge\>P[E/x]|x:=E|P><space|1em><text|(ass)>
  </equation*>

  dove <math|P[E/x]> è <math|P> con <math|E> al posto di <math|x>.
  L'intuizione: perché <math|P> valga dopo l'assegnamento, deve valere prima
  la stessa <math|P> con <math|E> al posto di <math|x>; e <math|E> deve avere
  un valore nello stato di partenza.

  Per esempio, con <math|P\<equiv\>(x\<gtr\>y)>:

  <\equation*>
    <hoare|x+2\<gtr\>y|x:=x+2|x\<gtr\>y>
  </equation*>

  perché <math|(x\<gtr\>y)[x+2/x]\<equiv\>(x+2\<gtr\>y)> e
  <math|<math-up|def>(x+2)\<equiv\><vero>>. Con una costante,
  <math|<hoare|<vero>|x:=5|x=5>>, perché <math|<math-up|def>(5)\<wedge\>(5=5)\<equiv\><vero>>.

  Per <em|verificare> un assegnamento, si combina l'assioma con la regola
  (pre). Si ottiene una regola in cui resta solo un'implicazione:

  <\equation*>
    <frac|R\<Rightarrow\><math-up|def>(E)\<wedge\>P[E/x]|<hoare|R|x:=E|P>><space|1em><text|(ass),
    verifica>
  </equation*>

  <section|Sequenza>

  La regola della sequenza unisce due triple con un'asserzione intermedia
  <math|R>, che fa da ponte:

  <\equation*>
    <frac|<hoare|P|C|R><space|2em><hoare|R|C<rprime|'>|Q>|<hoare|P|C;C<rprime|'>|Q>><space|1em><text|(seq)>
  </equation*>

  <\guidato|Due assegnamenti in sequenza>
    Verifica <math|<hoare|x\<geq\>y-1|x:=x+1; y:=y-1|x\<gtr\>y>>.

    <em|Idea.> Il comando finale è <text|<with|font-family|tt|y := y - 1>>.
    Si calcola all'indietro la precondizione di ciascun comando, e si usa il
    risultato come intermedia <math|R>.

    <em|Conto.> Per <text|<with|font-family|tt|y := y - 1>> con
    postcondizione <math|x\<gtr\>y>: <math|(x\<gtr\>y)[y-1/y]\<equiv\>(x\<gtr\>y-1)>,
    quindi <math|R\<equiv\>(x\<gtr\>y-1)>. Per <text|<with|font-family|tt|x
    := x + 1>> con postcondizione <math|R>:
    <math|R[x+1/x]\<equiv\>(x+1\<gtr\>y-1)\<equiv\>(x\<gtr\>y-2)>. Basta
    quindi <math|x\<geq\>y-1\<longrightarrow\>x\<gtr\>y-2>, che vale perché
    <math|x\<geq\>y-1\<gtr\>y-2>.

    <em|Controllo.> Con <math|x=4>, <math|y=5>: la precondizione è vera
    (<math|4\<geq\>4>). Dopo <text|<with|font-family|tt|x := x + 1>> si ha
    <math|x=5>, poi <text|<with|font-family|tt|y := y - 1>> dà <math|y=4>, e
    <math|5\<gtr\>4>.
  </guidato>

  <figura|<image|fondamenti-di-programmazione-1-assets/allindietro.pdf|120.0mm|72.5mm||>|Il
  calcolo all'indietro: la postcondizione scende dal fondo del programma
  verso l'inizio, un comando alla volta, e l'ultima asserzione è la
  precondizione richiesta.>

  <section|Condizionale>

  <\equation*>
    <frac|P\<Rightarrow\><math-up|def>(E)<space|2em><hoare|P\<wedge\>E|C|Q><space|2em><hoare|P\<wedge\>\<neg\>E|C<rprime|'>|Q>|<hoare|P|<text|<with|font-family|tt|if
    E then C else C' fi>>|Q>><space|1em><text|(cond)>
  </equation*>

  La prima premessa garantisce che la guardia sia definita; le altre due
  trattano i rami, ciascuno con la sua ipotesi sulla guardia.

  <\guidato|Il massimo di due valori>
    Verifica <math|<hoare|m=0|<text|<with|font-family|tt|if x \<less\> y then
    m := y else m := x fi>>|m=max(x,y)>>.

    <em|Idea.> Il ramo <text|<with|font-family|tt|then>> deve dare il massimo
    quando <math|x\<less\>y>, il ramo <text|<with|font-family|tt|else>>
    quando <math|x\<geq\>y>.

    <em|Conto.> Per (cond) servono tre obblighi. (1)
    <math|m=0\<longrightarrow\><math-up|def>(x\<less\>y)>: vera, perché
    <math|<math-up|def>(x\<less\>y)\<equiv\><math-up|def>(x)\<wedge\><math-up|def>(y)\<equiv\><vero>>.
    (2) Per il ramo <text|<with|font-family|tt|then>>, con (ass) basta
    <math|m=0\<wedge\>x\<less\>y\<longrightarrow\>y=max(x,y)>, vera perché il
    massimo è <math|y> quando <math|x\<less\>y>. (3) Per il ramo
    <text|<with|font-family|tt|else>>, basta
    <math|m=0\<wedge\>x\<geq\>y\<longrightarrow\>x=max(x,y)>, vera per lo
    stesso motivo.

    <em|Controllo.> L'ipotesi <math|m=0> non serve: con <math|x=3>,
    <math|y=7> il ramo <text|<with|font-family|tt|then>> dà
    <math|m=7=max(3,7)>; con <math|x=7>, <math|y=3> il ramo
    <text|<with|font-family|tt|else>> dà <math|m=7>.
  </guidato>

  <section|Trovare l'espressione mancante>

  Determiniamo <math|E> in modo che sia vera la tripla

  <\equation*>
    <hoare|x=N\<wedge\>y=M|t:=E; x:=y; y:=t|x=M\<wedge\>y=N>
  </equation*>

  dove <math|M> e <math|N> sono variabili di specifica. Con (seq) servono
  <math|R<rsub|1>> e <math|R<rsub|2>>, e si procede all'indietro con (ass):

  <\itemize>
    <item>Dal terzo comando, <math|R<rsub|2>\<equiv\>(x=M\<wedge\>t=N)>,
    perché <math|(x=M\<wedge\>y=N)[t/y]\<equiv\>(x=M\<wedge\>t=N)>.

    <item>Dal secondo, <math|R<rsub|1>\<equiv\>(y=M\<wedge\>t=N)>, perché
    <math|(x=M\<wedge\>t=N)[y/x]\<equiv\>(y=M\<wedge\>t=N)>.

    <item>Dal primo, resta da trovare <math|E> tale che
    <math|x=N\<wedge\>y=M\<longrightarrow\><math-up|def>(E)\<wedge\>(y=M\<wedge\>E=N)>.
  </itemize>

  Quindi <math|E\<equiv\>x>: nello stato iniziale <math|x=N>.

  <\attenzione|Non è E=N>
    Il valore cercato è <math|N>, ma <math|N> non può comparire in un
    comando: è una variabile di specifica. Il comando deve leggere <math|x>,
    che nello stato iniziale vale proprio <math|N>.
  </attenzione>

  Ora due triple che <em|non> sono soddisfatte. Perché?

  <\itemize>
    <item><math|<hoare|z=5\<wedge\>y=7\<wedge\>x=3|<text|<with|font-family|tt|x
    := 0; y := z div x>>|z\<gtr\>4>>. Dopo <text|<with|font-family|tt|x :=
    0>> il comando <text|<with|font-family|tt|y := z div x>> divide per zero:
    l'esecuzione non termina con successo, anche se <math|z\<gtr\>4>
    resterebbe vera. Infatti <math|<math-up|def>(z d*i*v
    x)\<equiv\>x\<neq\>0>, e dopo <text|<with|font-family|tt|x := 0>> questo
    diventa <math|0\<neq\>0>, falso.

    <item><math|<hoare|x=N\<wedge\>y=M|x:=y; y:=x|x=M\<wedge\>y=N>>. Lo stato
    finale ha <math|x=M> e <math|y=M>: la postcondizione vale solo se
    <math|M=N>. È lo scambio sbagliato visto nel capitolo 6.
  </itemize>

  Un ultimo esempio di condizionale in sequenza. Verifichiamo
  <math|<hoare|x=5|x:=3; <text|<with|font-family|tt|if (x = 3) then y := 7
  else y := 5 fi>>|x=3\<wedge\>y=7>>. Per (seq) il candidato naturale è
  <math|R\<equiv\>(x=3)>. Il primo passo, <math|<hoare|x=5|x:=3|x=3>>, vale
  perché <math|x=5\<longrightarrow\><math-up|def>(3)\<wedge\>3=3>. Per il
  secondo, con (cond): <math|x=3\<longrightarrow\><math-up|def>(x=3)\<equiv\><vero>>;
  nel ramo <text|<with|font-family|tt|then>>,
  <math|x=3\<wedge\>x=3\<longrightarrow\><math-up|def>(7)\<wedge\>x=3\<wedge\>7=7>,
  vera; nel ramo <text|<with|font-family|tt|else>>, la premessa
  <math|x=3\<wedge\>\<neg\>(x=3)> è falsa, quindi l'implicazione è vera.

  <section|Rafforzare la precondizione>

  Si verifichi

  <\equation*>
    <hoare|x\<geq\>0\<wedge\>y\<geq\>0|<text|<with|font-family|tt|if x div y
    \<gtr\> 0 then z := x else z := y fi>>|z=x<space|0.2em>max<space|0.2em>y>
  </equation*>

  La regola (cond) richiede <math|x\<geq\>0\<wedge\>y\<geq\>0\<longrightarrow\><math-up|def>(x<space|0.2em><math-up|div><space|0.2em>y\<gtr\>0)>,
  cioè <math|y\<neq\>0>. Ma la precondizione non lo garantisce: con
  <math|y=0> la guardia non è definita. Per avere una tripla soddisfatta
  bisogna <em|rafforzare la precondizione>:

  <\equation*>
    <hoare|x\<geq\>0\<wedge\>y\<gtr\>0|<text|<with|font-family|tt|if x div y
    \<gtr\> 0 then z := x else z := y fi>>|z=x<space|0.2em>max<space|0.2em>y>
  </equation*>

  Con <math|x\<geq\>0> e <math|y\<gtr\>0>, la guardia
  <math|x<space|0.2em><math-up|div><space|0.2em>y\<gtr\>0> equivale a
  <math|x\<geq\>y>. Nel ramo <text|<with|font-family|tt|then>> serve
  <math|x\<geq\>y\<longrightarrow\>x=max(x,y)>; nel ramo
  <text|<with|font-family|tt|else>>, con <math|x\<less\>y>, serve
  <math|y=max(x,y)>. Entrambe sono vere.

  <section|Correttezza totale e parziale>

  Finora una tripla è di <strong|correttezza totale>,
  <math|\<vDash\><rsub|t*o*t><hoare|Q|C|R>>: da ogni stato di <math|Q>,
  <math|C> termina con successo in uno stato di <math|R>. La terminazione è
  inclusa grazie a <math|<math-up|def>>. Con <strong|correttezza parziale>,
  <math|\<vDash\><rsub|p*a*r><hoare|Q|C|R>>, si richiede solo che, <em|se>
  <math|C> termina, lo faccia in uno stato di <math|R>. Per questa nozione si
  possono indebolire le regole, ignorando <math|<math-up|def>>:

  <\equation*>
    <hoare|Q[E/x]|x:=E|Q><space|1em><text|(ass, parziale)> <space|3em>
    <frac|P\<Rightarrow\>Q[E/x]|<hoare|P|x:=E|Q>><space|1em><text|(ass,
    parziale)>
  </equation*>

  <\equation*>
    <frac|<hoare|P\<wedge\>E|C|Q><space|2em><hoare|P\<wedge\>\<neg\>E|C<rprime|'>|Q>|<hoare|P|<text|<with|font-family|tt|if
    E then C else C' fi>>|Q>><space|1em><text|(cond, parziale)>
  </equation*>

  <\officina|7. Calcolare all'indietro>
    Data una postcondizione e un programma, si cerca la precondizione che il
    programma richiede. Oppure si dimostra una tripla data.

    <\itemize>
      <item>Parti dalla postcondizione e scorri i comandi dal fondo verso
      l'inizio.

      <item>Per ogni assegnamento <text|<with|font-family|tt|x := E>>,
      sostituisci <math|E> a <math|x> nell'asserzione e aggiungi
      <math|<math-up|def>(E)>.

      <item>Per un condizionale, la postcondizione resta la stessa nei due
      rami; le guardie danno <math|P\<wedge\>E> e <math|P\<wedge\>\<neg\>E>.

      <item>Alla fine confronta la precondizione ottenuta con quella data:
      serve un'implicazione.
    </itemize>

    Il calcolo all'indietro torna nel capitolo 8, dove la postcondizione di
    un ciclo si costruisce con un invariante.
  </officina>

  <\verifica|7>
    <strong|a)> Perché la tripla <math|<hoare|x=5|x:=x+1|x=5>> non è
    soddisfatta?

    <strong|b)> Calcola con (ass) la precondizione di
    <text|<with|font-family|tt|y := x * 2>> rispetto alla postcondizione
    <math|y\<gtr\>10>.

    <strong|c)> Perché <math|<hoare|x\<geq\>0|<text|<with|font-family|tt|y :=
    1 div x>>|y=1>> non è soddisfatta?
  </verifica> <chapter|Cicli: invarianti e terminazione>

  <\inbreve>
    Un ciclo può girare un numero di volte che non conosciamo prima di
    eseguirlo. Per ragionarne cerchiamo un <strong|invariante>, un'asserzione
    che resta vera a ogni giro, e per la terminazione una <strong|funzione di
    terminazione>, che ogni giro fa diminuire. Con queste due idee si
    costruiscono le prove di correttezza dei programmi con
    <text|<with|font-family|tt|while>>.
  </inbreve>

  <section|Il problema del ciclo>

  Il comando <text|<with|font-family|tt|while E do C endw>> esegue copie del
  corpo <math|C> finché la guardia <math|E> è vera, ma non sappiamo in
  anticipo quante. Se i giri fossero <math|k> fissi, basterebbe concatenare
  <math|k> volte la regola (seq): <math|{P}C{P<rsub|1>}>,
  <math|{P<rsub|1>}C{P<rsub|2>}>, \<ldots\>, <math|{P<rsub|k-1>}C{R}>. Ma
  <math|k> non è noto.

  Per questo si cerca un'unica asserzione <math|<math-up|Inv>>,
  l'<strong|invariante>, che sostituisca tutte le intermedie. Ragionando
  sulla correttezza parziale, si può concludere che il ciclo ha la forma
  <math|<hoare|<math-up|Inv>|<text|<with|font-family|tt|while E do C
  endw>>|<math-up|Inv>\<wedge\>\<neg\>E>>. Le regole sono due. La prima:

  <\equation*>
    <frac|<hoare|<math-up|Inv>\<wedge\>E|C|<math-up|Inv>>|<hoare|<math-up|Inv>|<text|<with|font-family|tt|while
    E do C endw>>|<math-up|Inv>\<wedge\>\<neg\>E>><space|1em><text|(1)>
  </equation*>

  Non serve che <math|<math-up|Inv>> valga dopo ogni singolo comando del
  corpo: basta che sia ristabilito prima della successiva valutazione della
  guardia. La seconda regola parte da una tripla generica con <math|P> e
  <math|R> qualunque, e rafforza le premesse con (pre-post):

  <\equation*>
    <frac|P\<Rightarrow\><math-up|Inv><space|2em><hoare|<math-up|Inv>\<wedge\>E|C|<math-up|Inv>><space|2em><math-up|Inv>\<wedge\>\<neg\>E\<Rightarrow\>R|<hoare|P|<text|<with|font-family|tt|while
    E do C endw>>|R>><space|1em><text|(1-bis)>
  </equation*>

  La (1) e la (1-bis) danno solo la correttezza <em|parziale>: non dicono
  nulla sulla terminazione.

  <figura|<image|fondamenti-di-programmazione-1-assets/invariante.pdf|107.5mm|55.0mm||>|L'invariante
  è una zona di stati che il ciclo non abbandona. Ogni giro parte dalla zona
  e vi ritorna; all'uscita la guardia è falsa, e la zona più <math|\<neg\>E>
  dà la postcondizione.>

  Un invariante deve essere <em|significativo>. <math|<vero>> è invariante di
  ogni ciclo, perché ogni stato lo soddisfa, ma non dice nulla del programma.

  <section|Correttezza totale>

  Per la terminazione servono tre cose: la guardia deve essere definita, ogni
  giro deve terminare con successo, e il numero di giri deve essere finito.
  La guardia è coperta da <math|<math-up|def>(E)>; per il terzo punto si usa
  una <strong|funzione di terminazione> <math|<math-up|expt>>, a valori
  interi, con due ipotesi:

  <\equation*>
    <math-up|Inv>\<Rightarrow\><math-up|expt>\<geq\>0<space|2em><text|e><space|2em><hoare|<math-up|Inv>\<wedge\>E\<wedge\><math-up|expt>=V|C|<math-up|expt>\<less\>V>
  </equation*>

  dove <math|V> è una variabile di specifica, che il corpo non modifica e che
  memorizza il valore di <math|<math-up|expt>> prima del giro. La prima dice
  che <math|<math-up|expt>> non scende sotto zero; la seconda che ogni giro
  la fa diminuire strettamente. Non esiste una successione infinita
  strettamente decrescente di naturali: quindi il ciclo non può girare per
  sempre.

  Servono entrambe le ipotesi. Per <math|<text|<with|font-family|tt|while x
  \<gtr\>0 do x := x+1 endw>>> con <math|<math-up|expt>=-x>, la diminuzione
  c'è, ma <math|-x> non è non negativa: da <math|x=1> il ciclo non termina.
  Viceversa, per <text|<with|font-family|tt|while x \<neq\> 0 do x := x+1
  endw>> con <math|<math-up|Inv>\<equiv\>(x\<geq\>0)> e
  <math|<math-up|expt>=x>, la non negatività c'è, ma <math|x> non diminuisce:
  da <math|x=1> il ciclo non termina.

  La regola per la correttezza totale è:

  <\equation*>
    <frac|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|<math-up|Inv>\<Rightarrow\><math-up|expt>\<geq\>0>>|<row|<cell|<hoare|<math-up|Inv>\<wedge\>E\<wedge\><math-up|expt>=V|C|<math-up|expt>\<less\>V>>>|<row|<cell|<hoare|<math-up|Inv>\<wedge\>E|C|<math-up|Inv>\<wedge\><math-up|def>(E)>>>>>>|<hoare|<math-up|Inv>\<wedge\><math-up|def>(E)|<text|<with|font-family|tt|while
    E do C endw>>|<math-up|Inv>\<wedge\>\<neg\>E>><space|1em><text|(while)>
  </equation*>

  Per una specifica <math|<hoare|P|<text|<with|font-family|tt|while E do C
  endw>>|Q>> si verificano cinque obblighi:

  <\with|par-mode|center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-lsep|0.55em>|<cwith|1|-1|1|-1|cell-rsep|0.55em>|<cwith|1|-1|1|-1|cell-tsep|0.22fn>|<cwith|1|-1|1|-1|cell-bsep|0.22fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<table|<row|<cell|Obbligo>|<cell|Che
    cosa bisogna dimostrare>>|<row|<cell|Ingresso>|<cell|<math|P\<Rightarrow\><math-up|Inv>\<wedge\><math-up|def>(E)>>>|<row|<cell|Invarianza>|<cell|<math|<hoare|<math-up|Inv>\<wedge\>E|C|<math-up|Inv>\<wedge\><math-up|def>(E)>>>>|<row|<cell|Terminazione>|<cell|<math|<math-up|Inv>\<Rightarrow\><math-up|expt>\<geq\>0>>>|<row|<cell|Progresso>|<cell|<math|<hoare|<math-up|Inv>\<wedge\>E\<wedge\><math-up|expt>=V|C|<math-up|expt>\<less\>V>>>>|<row|<cell|Uscita>|<cell|<math|<math-up|Inv>\<wedge\>\<neg\>E\<Rightarrow\>Q>>>>>>
  </with>

  Spesso <math|P> non basta a stabilire l'invariante. Si premette allora un
  comando di inizializzazione <math|<math-up|CI>> con
  <math|<hoare|P|<math-up|CI>|<math-up|Inv>\<wedge\><math-up|def>(E)>>, e per
  (seq) si conclude <math|<hoare|P|<math-up|CI>;
  <text|<with|font-family|tt|while E do C endw>>|Q>>.

  <\guidato|La somma dei primi interi>
    Dimostra la specifica <math|n\<gtr\>0\<longrightarrow\>s=<big|sum><rsub|i=0><rsup|n-1>i>,
    con <math|n> non modificato, per questo programma:

    <\codice>
      x := 0; s := 0;

      while x \<less\> n do

      <hspace|2.100em>s := s + x;

      <hspace|2.100em>x := x + 1

      endw
    </codice>

    <em|Idea.> <math|s> deve contenere la somma degli interi già
    attraversati: <math|<math-up|Inv>\<equiv\>(s=<big|sum><rsub|i=0><rsup|x-1>i
    \<wedge\> 0\<leq\>x\<leq\>n)> e <math|<math-up|expt>=n-x>.

    <em|Conto.> <em|Ingresso>: dopo <text|<with|font-family|tt|x := 0; s :=
    0>> la somma vuota vale <math|0>, quindi <math|<math-up|Inv>> vale; la
    guardia è sempre definita.

    <em|Invarianza>: si lavora all'indietro su
    <math|<math-up|Inv>\<wedge\>x\<less\>n>. Prima di
    <text|<with|font-family|tt|x := x + 1>> serve
    <math|s=<big|sum><rsub|i=0><rsup|x>i \<wedge\> 0\<leq\>x+1\<leq\>n>.
    Prima di <text|<with|font-family|tt|s := s + x>> serve
    <math|s+x=<big|sum><rsub|i=0><rsup|x>i \<wedge\> 0\<leq\>x+1\<leq\>n>. Ma
    <math|<big|sum><rsub|i=0><rsup|x>i=<big|sum><rsub|i=0><rsup|x-1>i+x>,
    quindi la prima congiunzione segue da <math|<math-up|Inv>>, e la seconda
    da <math|0\<leq\>x\<less\>n>.

    <em|Terminazione e uscita>: <math|n-x> è non negativa perché
    <math|x\<leq\>n>, e diminuisce di <math|1> a ogni giro. All'uscita
    <math|x\<geq\>n> e <math|x\<leq\>n> danno <math|x=n>, quindi
    <math|s=<big|sum><rsub|i=0><rsup|n-1>i>.

    <em|Controllo.> Con <math|n=4>, i valori di <math|s> sono
    <math|0,0,1,3,6> e il ciclo si ferma con <math|x=4>: <math|6=0+1+2+3>.
    Con <math|n=0> il corpo non viene eseguito e <math|s=0>, la somma vuota.
  </guidato>

  <section|Un esempio: la divisione intera>

  La divisione per sottrazioni del capitolo 7 soddisfa la specifica
  <math|x\<geq\>0\<wedge\>y\<gtr\>0\<longrightarrow\>x=q\<cdot\>y+r\<wedge\>0\<leq\>r\<less\>y>,
  con <math|x,y> non modificati. Verifichiamola.

  <\guidato|Divisione intera: l'invariante con <math|y\<gtr\>0>>
    <em|Idea.> Ogni giro toglie <math|y> da <math|r> e aggiunge <math|1> a
    <math|q>. L'invariante è <math|<math-up|Inv>\<equiv\>(x=q\<cdot\>y+r\<wedge\>r\<geq\>0\<wedge\>y\<gtr\>0)>
    e la funzione di terminazione <math|<math-up|expt>=r>. Il vincolo
    <math|y\<gtr\>0> è aggiunto dal libro: serve a far diminuire <math|r>.

    <em|Conto.> <em|Ingresso>: dopo <text|<with|font-family|tt|q := 0; r :=
    x>> si ha <math|x=0\<cdot\>y+x>, <math|r=x\<geq\>0>, e <math|y\<gtr\>0> è
    la precondizione. <em|Invarianza>: se <math|q<rprime|'>=q+1> e
    <math|r<rprime|'>=r-y>, allora <math|q<rprime|'>\<cdot\>y+r<rprime|'>=(q+1)y+(r-y)=q\<cdot\>y+r=x>;
    la guardia dà <math|r-y\<geq\>0>; <math|y\<gtr\>0> non cambia.
    <em|Terminazione e progresso>: <math|r\<geq\>0>, e
    <math|r<rprime|'>=r-y\<less\>r> perché <math|y\<gtr\>0>. <em|Uscita>:
    <math|r\<less\>y>, con l'invariante, dà
    <math|q=x<space|0.2em><math-up|div><space|0.2em>y> e
    <math|r=x<space|0.2em>mod<space|0.2em>y>.

    <em|Controllo.> Con <math|x=17> e <math|y=5> la scala di <math|r> è
    <math|17, 12, 7, 2>: si esce con <math|q=3> e <math|r=2>, perché
    <math|17=3\<cdot\>5+2>.
  </guidato>

  <figura|<image|fondamenti-di-programmazione-1-assets/scala.pdf|160.0mm|72.5mm||>|La
  scala di <math|r> con <math|x=17>, <math|y=5>: ogni gradino è una
  sottrazione di <math|y>; si scende finché <math|r\<less\>y>.>

  Con <math|y=0> il corpo lascia <math|r> invariato e fa crescere <math|q>:
  la guardia resta vera per sempre. È il motivo per cui <math|y\<gtr\>0> è
  essenziale.

  <section|Programmi annotati e regole derivate>

  Un programma annotato rende visibili le asserzioni che servono alla prova.
  Le annotazioni non sostituiscono gli obblighi: li organizzano.

  <\codice>
    {P}

    CI;

    {inv: Inv} {ft: expt}

    while E do

    <hspace|2.100em>{Inv and E}

    <hspace|2.100em>C

    endw

    {Inv and not E}

    {Q}
  </codice>

  Dalle regole base si ricavano tre regole derivate. Due combinano
  dimostrazioni sullo stesso comando:

  <\equation*>
    <frac|<hoare|P<rsub|1>|C|Q<rsub|1>><space|2em><hoare|P<rsub|2>|C|Q<rsub|2>>|<hoare|P<rsub|1>\<wedge\>P<rsub|2>|C|Q<rsub|1>\<wedge\>Q<rsub|2>>><space|1em><text|(cong)>
  </equation*>

  <\equation*>
    <frac|<hoare|P|C|Q><space|2em><hoare|R|C|Q>|<hoare|P\<vee\>R|C|Q>><space|1em><text|(disg)>
  </equation*>

  La terza serve a trasportare una proprietà attraverso un comando che non la
  tocca. Sia <math|<math-up|change>(C)> l'insieme delle variabili che
  compaiono come destinazione di un assegnamento in <math|C>: è un insieme di
  variabili <em|potenzialmente> modificate.

  <\equation*>
    <frac|<math-up|free>(P)\<cap\><math-up|change>(C)=\<varnothing\><space|2em><hoare|R|C|Q>|<hoare|P\<wedge\>R|C|P\<wedge\>Q>><space|1em><text|(invariante)>
  </equation*>

  Nella divisione, il corpo assegna solo a <math|q> e <math|r>: quindi
  <math|y\<gtr\>0> si trasporta attraverso il ciclo.

  <section|Un esempio geometrico>

  Dati <math|N> punti blu e <math|N> punti rossi nel piano, senza tre punti
  allineati, si vogliono <math|N> segmenti che abbinino ogni blu a un rosso,
  senza che due segmenti si intersechino. Un algoritmo:

  <\codice>
    abbina ciascun punto blu a un diverso punto rosso;

    while esistono due segmenti che si intersecano do

    <hspace|2.100em>sostituiscili con i due segmenti non incrociati

    <hspace|2.100em>che collegano ancora estremi di colore diverso

    endw
  </codice>

  Sia <math|<math-up|good>(s)> la proprietà \Sgli estremi di <math|s> hanno
  colori diversi\T e <math|<math-up|good>(S)> = \Sogni segmento di <math|S> è
  <math|<math-up|good>>\T. L'inizializzazione stabilisce
  <math|<math-up|good>(S)>, e il corpo lo conserva. All'uscita vale quindi
  <math|<math-up|good>(S)> e nessuna coppia di segmenti si interseca: il
  problema è risolto, <em|se il ciclo termina>.

  <figura|<image|fondamenti-di-programmazione-1-assets/incroci.pdf|150.0mm|65.0mm||>|Due
  segmenti <math|A*B> e <math|C*D> che si incrociano in <math|E> vengono
  sostituiti da <math|A*D> e <math|C*B>, più corti.>

  Contare le intersezioni non basta: eliminarne una può crearne altre. Si
  sceglie invece la lunghezza totale <math|F(S)=<big|sum><rsub|s\<in\>S>\<#2113\>(s)>.
  Se <math|A*B> e <math|C*D> si incrociano in <math|E>, la disuguaglianza
  triangolare sui triangoli <math|A*E*D> e <math|C*E*B> dà
  <math|\<#2113\>(A*D)\<less\>\<#2113\>(A*E)+\<#2113\>(E*D)> e
  <math|\<#2113\>(C*B)\<less\>\<#2113\>(C*E)+\<#2113\>(E*B)>. Sommando,
  <math|\<#2113\>(A*D)+\<#2113\>(C*B)\<less\>\<#2113\>(A*B)+\<#2113\>(C*D)>:
  la lunghezza totale scende. La disuguaglianza è stretta perché non ci sono
  terne allineate.

  Una funzione a valori reali non negativi, da sola, non prova la
  terminazione. Qui però le configurazioni possibili sono finite: con
  <math|N> punti blu e <math|N> rossi, gli abbinamenti sono <math|N!>. Una
  successione strettamente decrescente in un insieme finito non può essere
  infinita.

  <section|Radice cubica intera>

  Con <math|x\<geq\>0> intero e non modificato, il programma è:

  <\codice>
    a := 0;

    b := 0;

    y := 0;

    while y \<less\>= x do

    <hspace|2.100em>y := y + 3*a + 3*b + 1;

    <hspace|2.100em>a := a + 2*b + 1;

    <hspace|2.100em>b := b + 1

    endw
  </codice>

  Le identità <math|(b+1)<rsup|2>=b<rsup|2>+2b+1> e
  <math|(b+1)<rsup|3>=b<rsup|3>+3b<rsup|2>+3b+1> suggeriscono di mantenere
  <math|a=b<rsup|2>> e <math|y=b<rsup|3>>. Con <math|J\<equiv\>(a=b<rsup|2>
  \<wedge\> y=b<rsup|3> \<wedge\> (b-1)<rsup|3>\<leq\>x)>: all'inizio
  <math|a=b=y=0> e <math|(b-1)<rsup|3>=-1\<leq\>x>. Il corpo aggiorna
  <math|y> per primo, perché usa i vecchi valori di <math|a> e <math|b>; poi
  <math|a>, che usa il vecchio <math|b>; infine <math|b>. <strong|L'ordine
  degli assegnamenti è essenziale.>

  All'uscita valgono <math|J> e <math|y\<gtr\>x>, quindi
  <math|(b-1)<rsup|3>\<leq\>x\<less\>b<rsup|3>>, cioè
  <math|b-1=<around*|\<lfloor\>|x<rsup|1/3>|\<rfloor\>>>.

  <\attenzione|Il programma calcola un valore in più>
    Il codice delle slide, da solo, lascia in <math|b> la parte intera della
    radice cubica <em|più uno>: con <math|x=0> il corpo gira una volta e
    <math|b=1>; con <math|x=8>, <math|b=3>. Per avere la radice in <math|b>
    serve l'assegnamento <text|<with|font-family|tt|b := b - 1>> dopo
    <text|<with|font-family|tt|endw>>. Questa correzione è aggiunta al
    programma delle slide.
  </attenzione>

  Per la terminazione (svolgimento aggiunto) si rafforza l'invariante con
  <math|b\<geq\>0\<wedge\>x\<geq\>0> e si prende
  <math|<math-up|expt>=x+1-(b-1)<rsup|3>>. Da <math|(b-1)<rsup|3>\<leq\>x>
  segue <math|<math-up|expt>\<geq\>1>. Dopo un giro,
  <math|<math-up|expt><rprime|'>=x+1-b<rsup|3>>, e
  <math|<math-up|expt>-<math-up|expt><rprime|'>=b<rsup|3>-(b-1)<rsup|3>=3b(b-1)+1\<gtr\>0>
  per ogni intero <math|b\<geq\>0>.

  Traccia con <math|x=10>, come <math|(a,b,y)>:

  <\with|par-mode|center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-lsep|0.55em>|<cwith|1|-1|1|-1|cell-rsep|0.55em>|<cwith|1|-1|1|-1|cell-tsep|0.22fn>|<cwith|1|-1|1|-1|cell-bsep|0.22fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<table|<row|<cell|giro>|<cell|<math|a>>|<cell|<math|b>>|<cell|<math|y>>|<cell|guardia
    <math|y\<leq\>10>>>|<row|<cell|inizio>|<cell|<math|0>>|<cell|<math|0>>|<cell|<math|0>>|<cell|<vero>>>|<row|<cell|1>|<cell|<math|1>>|<cell|<math|1>>|<cell|<math|1>>|<cell|<vero>>>|<row|<cell|2>|<cell|<math|4>>|<cell|<math|2>>|<cell|<math|8>>|<cell|<vero>>>|<row|<cell|3>|<cell|<math|9>>|<cell|<math|3>>|<cell|<math|27>>|<cell|<falso>>>>>>
  </with>

  Il risultato è <math|b-1=2=<around*|\<lfloor\>|10<rsup|1/3>|\<rfloor\>>>.

  <section|Fattoriale>

  Con <math|n\<geq\>0> non modificato, si vuole
  <math|<hoare|n\<geq\>0|C|<math-up|fatt>=n!>>. Il programma è:

  <\codice>
    fatt := 1;

    x := 1;

    while x \<less\>= n do

    <hspace|2.100em>fatt := fatt * x;

    <hspace|2.100em>x := x + 1

    endw
  </codice>

  L'invariante è <math|<math-up|Inv>\<equiv\>(<math-up|fatt>=(x-1)!\<wedge\>1\<leq\>x\<leq\>n+1)>:
  il limite inferiore <math|1> rende definito <math|(x-1)!>. Per la
  terminazione si prende <math|<math-up|expt>=n+1-x>. Non <math|n-x>: nello
  stato finale <math|x=n+1> darebbe <math|-1>, che viola
  <math|<math-up|Inv>\<Rightarrow\><math-up|expt>\<geq\>0>. Il ciclo termina
  con <math|x=n+1>, quindi <math|<math-up|fatt>=n!>. Per <math|n=0> il corpo
  non gira e <math|<math-up|fatt>=1=0!>.

  <section|Massimo comune divisore per sottrazioni>

  Con <math|a,b> interi positivi non modificati, si vuole
  <math|<hoare|a\<gtr\>0\<wedge\>b\<gtr\>0|C|x=<math-up|mcd>(a,b)>>. Il
  programma:

  <\codice>
    x := a;

    y := b;

    while x != y do

    <hspace|2.100em>if x \<gtr\> y

    <hspace|4.200em>then x := x - y

    <hspace|4.200em>else y := y - x

    <hspace|2.100em>fi

    endw
  </codice>

  Se all'uscita <math|x=y>, allora <math|<math-up|mcd>(x,y)=x>. Basta quindi
  <em|conservare> il massimo comun divisore:
  <math|<math-up|Inv>\<equiv\>(x\<gtr\>0\<wedge\>y\<gtr\>0\<wedge\><math-up|mcd>(x,y)=<math-up|mcd>(a,b))>.
  Le proprietà usate sono <math|<math-up|mcd>(x,y)=<math-up|mcd>(x-y,y)> per
  <math|x\<gtr\>y\<gtr\>0> e la simmetrica.

  Ogni ramo conserva <math|<math-up|Inv>>, e <math|<math-up|expt>=x+y> è
  positiva e diminuisce: nel primo ramo il nuovo valore è
  <math|(x-y)+y=x\<less\>x+y>, nel secondo <math|x+(y-x)=y\<less\>x+y>.
  Quindi il ciclo termina con <math|x=y>, e
  <math|<math-up|mcd>(a,b)=<math-up|mcd>(x,x)=x>.

  La tecnica generale è questa: si scelgono variabili di lavoro
  <math|x<rsub|i>>, inizializzate con i dati <math|a<rsub|i>>, e si conserva
  una quantità <math|F(x<rsub|1>,\<ldots\>)=F(a<rsub|1>,\<ldots\>)>. Nel MCD
  la quantità è <math|<math-up|mcd>>, e all'uscita la guardia falsa rende
  semplice estrarre il risultato.

  <section|Ricavare un assegnamento dalla quantità da conservare>

  Si cerca <math|E> tale che la tripla <math|<hoare|x*y+p*q=n|x:=x-p;
  q:=E|x*y+p*q=n>> sia vera. L'aggiornamento di <math|x> sottrae <math|p*y>
  alla quantità <math|x*y+p*q>; per compensare, <math|q> deve crescere di
  <math|y>:

  <\equation*>
    E\<equiv\>q+y
  </equation*>

  Verifica all'indietro: <math|(x-p)y+p(q+y)=x*y-p*y+p*q+p*y=x*y+p*q=n>. Non
  ci sono divisioni né accessi ad array, quindi tutte le espressioni sono
  definite. Se <math|p=0> la conservazione non impone vincoli su <math|q>, e
  <math|q+y> va bene anche in quel caso.

  <\officina|8. I cinque obblighi di un ciclo>
    Un ciclo non si dimostra con un ragionamento generale: si dimostrano
    cinque obblighi, uno per volta.

    <\itemize>
      <item>Scrivi l'invariante: che cosa resta vero prima di ogni giro e
      alla fine?

      <item>Scegli la funzione di terminazione: un'espressione intera, non
      negativa, che diminuisce a ogni giro.

      <item>Verifica Ingresso, Invarianza, Terminazione, Progresso e Uscita,
      nell'ordine della tabella.

      <item>Se l'invariante ti sembra troppo debole, rafforzalo con vincoli
      di segno o di dominio, come <math|y\<gtr\>0>.
    </itemize>
  </officina>

  <\verifica|8>
    <strong|a)> Elenca i cinque obblighi di un ciclo.

    <strong|b)> Il ciclo <text|<with|font-family|tt|while x \<neq\> 0 do x :=
    x + 1 endw>> ammette una prova di correttezza totale con invariante
    <math|x\<geq\>0>? Quale obbligo fallisce?

    <strong|c)> Per <text|<with|font-family|tt|while i \<less\> n do i := i +
    1 endw>>, con invariante <math|0\<leq\>i\<leq\>n>, quale funzione di
    terminazione useresti e perché funziona?
  </verifica> <chapter|Array e progetto di cicli>

  <\inbreve>
    Un array raccoglie molti valori sotto un solo nome, ciascuno con il suo
    indice. Con gli array l'invariante descrive una parte già elaborata e una
    ancora da fare. Alla fine tre tecniche per costruire un ciclo a partire
    dalla postcondizione, così da non dover indovinare l'invariante.
  </inbreve>

  <section|Array>

  Un <strong|array> rappresenta una sequenza finita di valori dello stesso
  tipo: è una funzione <math|v:[a,b)\<rightarrow\>A>, dove <math|[a,b)> sono
  gli indici naturali <math|i> con <math|a\<leq\>i\<less\>b> e <math|A> è
  <math|\<bbb-Z\>> o <math|<math-up|Bool>>. Il numero di elementi è
  <math|b-a>: l'estremo <math|b> <strong|non è un indice>. Se <math|a=b>
  l'array è vuoto. Dominio: <math|<math-up|dom>(v)=[a,b)>.

  Nel linguaggio:

  <\codice>
    v : array [a,b) of int

    w : array [a,b) of bool
  </codice>

  Per esempio <text|<with|font-family|tt|v : array [0,4) of int>> ha indici
  <math|0,1,2,3>. Se <text|<with|font-family|tt|v>> è un array ed
  <text|<with|font-family|tt|E>> un'espressione intera,
  <text|<with|font-family|tt|v[E]>> è un'espressione: l'elemento di indice
  <math|E>. Un valore letto dall'array può servire come indice:
  <text|<with|font-family|tt|v[v[0]+v[1]]>> è lecito. Va però verificato che
  l'indice sia nel dominio.

  Lo stato cambia: se <math|v> è un array, <math|\<sigma\>(v)> è una funzione
  sugli indici, <math|\<sigma\>(v):<math-up|dom>(v)\<rightarrow\>A>. Con
  <math|\<sigma\>(v)={0\<mapsto\>2, 1\<mapsto\>1, 2\<mapsto\>10,
  3\<mapsto\>6}> e <math|E\<equiv\>v[v[0]+v[1]]>:

  <\equation*>
    \<cal-E\>(v[v[0]+v[1]],\<sigma\>)=\<sigma\>(v)(\<sigma\>(v)(0)+\<sigma\>(v)(1))=\<sigma\>(v)(3)=6
  </equation*>

  Gli indici <math|0>, <math|1> e <math|3> sono tutti nel dominio. Anche il
  valore usato come indice esterno deve essere valido.

  La clausola di <math|<math-up|def>> per gli array è

  <\equation*>
    <math-up|def>(v[E])=<math-up|def>(E)\<wedge\>E\<in\><math-up|dom>(v)
  </equation*>

  quindi, per un array di dominio <math|[0,n)>,
  <math|<math-up|def>(v[x+1])\<equiv\>0\<leq\>x+1\<less\>n>.

  <section|Aggiornamento di un elemento>

  Un singolo elemento si modifica con <text|<with|font-family|tt|v[E] :=
  E'>>. Il comando <strong|valuta prima, aggiorna dopo>: con
  <math|j=\<cal-E\>(E,\<sigma\>)> e <math|d=\<cal-E\>(E',\<sigma\>)>,
  entrambi definiti e <math|j\<in\><math-up|dom>(v)>, si costruisce la
  sequenza <math|w=\<sigma\>(v)[d/j]>, cioè <math|w(i)=d> se <math|i=j> e
  <math|w(i)=\<sigma\>(v)(i)> altrimenti. Il nuovo stato associa a <math|v>
  la sequenza <math|w>:

  <\equation*>
    \<cal-C\>(v[E]:=E',\<sigma\>)=\<sigma\>[\<sigma\>(v)[\<cal-E\>(E',\<sigma\>)/\<cal-E\>(E,\<sigma\>)]/v]
  </equation*>

  Ci sono due aggiornamenti: quello interno, dentro la sequenza, e quello
  esterno, sull'identificatore <math|v>.

  L'assioma si scrive con <math|w=v[E'/E]>, la sequenza ottenuta da <math|v>
  ponendo <math|E'> all'indice <math|E>:

  <\equation*>
    <hoare|<math-up|def>(E)\<wedge\><math-up|def>(E<rprime|'>)\<wedge\>E\<in\><math-up|dom>(v)\<wedge\>P[w/v]|v[E]:=E<rprime|'>|P><space|1em><text|(ass,
    array)>
  </equation*>

  Nell'asserzione la sostituzione riguarda l'intera sequenza: per ogni indice
  <math|i>, il nuovo elemento è <math|E'> se <math|i=E>, e il vecchio
  <math|v[i]> altrimenti. Così si possono dimostrare postcondizioni su più
  posizioni.

  <\guidato|Somme parziali>
    Sia <text|<with|font-family|tt|a : array [0,n) of int>> e
    <math|n\<gtr\>0>. Verifica

    <\equation*>
      <hoare|1\<leq\>k\<less\>n\<wedge\>(\<forall\>i\<in\>[0,k).<space|0.2em>a[i]=<big|sum><rsub|j=0><rsup|i>j)|a[k]:=a[k-1]+k|(\<forall\>i\<in\>[0,k].<space|0.2em>a[i]=<big|sum><rsub|j=0><rsup|i>j)>
    </equation*>

    <em|Idea.> La posizione <math|k> è l'unica modificata; le posizioni
    <math|i\<less\>k> devono restare come sono.

    <em|Conto.> <em|Definitezza>: da <math|1\<leq\>k\<less\>n> seguono
    <math|k\<in\>[0,n)> e <math|k-1\<in\>[0,n)>, quindi la scrittura e la
    lettura sono lecite. <em|Postcondizione>: se <math|0\<leq\>i\<less\>k>,
    l'aggiornamento non tocca <math|i>, e <math|a[i]> vale ancora
    <math|<big|sum><rsub|j=0><rsup|i>j>. Se <math|i=k>, il nuovo valore è
    <math|a[k-1]+k=<big|sum><rsub|j=0><rsup|k-1>j+k=<big|sum><rsub|j=0><rsup|k>j>.

    <em|Controllo.> Con <math|k=1>: <math|a[0]=0>, quindi <math|a[1]=0+1=1>,
    che è la somma <math|0+1>. Con <math|k=2>: <math|a[2]=a[1]+2=3=0+1+2>.
  </guidato>

  Il modello tipico delle prove sugli array: si verificano separatamente la
  posizione modificata e quelle che restano invariate.

  <section|Incrementare tutti gli elementi>

  Sia <text|<with|font-family|tt|a : array [0,n) of int>> e <math|V> una
  variabile di specifica che rappresenta la sequenza iniziale. Vogliamo

  <\equation*>
    <hoare|n\<geq\>0\<wedge\>(\<forall\>k\<in\>[0,n).<space|0.2em>a[k]=V[k])|C|(\<forall\>k\<in\>[0,n).<space|0.2em>a[k]=V[k]+1)>
  </equation*>

  con il programma

  <\codice>
    x := 0;

    while x \<less\> n do

    <hspace|2.100em>a[x] := a[x] + 1;

    <hspace|2.100em>x := x + 1

    endw
  </codice>

  L'invariante divide l'array in due parti: quella già elaborata e quella
  ancora da elaborare.

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<table|<row|<cell|<math-up|Inv>\<equiv\>0\<leq\>x\<leq\>n>>|<row|<cell|\<wedge\>(\<forall\>k\<in\>[0,x).<space|0.2em>a[k]=V[k]+1)>>|<row|<cell|\<wedge\>(\<forall\>k\<in\>[x,n).<space|0.2em>a[k]=V[k])>>>>>
  </equation*>

  <figura|<image|fondamenti-di-programmazione-1-assets/array-zone.pdf|135.0mm|43.8mm||>|L'array
  diviso in due zone: a sinistra di <math|x> i valori sono già incrementati,
  a destra di <math|x> sono ancora quelli iniziali <math|V>. Il corpo sposta
  il confine di una posizione.>

  La seconda parte è importante: quando si legge <math|a[x]> bisogna sapere
  che contiene ancora il valore <math|V[x]>.

  <em|Svolgimento aggiunto.> Con <math|x=0> il prefisso elaborato è vuoto e
  la seconda parte coincide con la precondizione. Sotto
  <math|<math-up|Inv>\<wedge\>x\<less\>n>, si ha <math|x\<in\>[0,n)>, quindi
  l'accesso e la scrittura sono definiti. Dopo l'aggiornamento, le posizioni
  <math|k\<less\>x> restano uguali, la posizione <math|x> diventa
  <math|V[x]+1>, e quelle <math|k\<gtr\>x> restano <math|V[k]>. Dopo
  <text|<with|font-family|tt|x := x + 1>> si ritrova <math|<math-up|Inv>>. La
  quantità <math|n-x> è non negativa e diminuisce di <math|1>. All'uscita
  <math|x\<geq\>n> e <math|x\<leq\>n> danno <math|x=n>: tutto l'array è nel
  prefisso elaborato.

  <section|Progettare un ciclo>

  Data una specifica <math|<hoare|P|C|Q>>, si cerca una scomposizione

  <\equation*>
    P<rprime|'>\<wedge\>G\<Rightarrow\>Q
  </equation*>

  in cui <math|P<rprime|'>> possa essere un invariante e <math|G> sia la
  negazione di una guardia <math|E> esprimibile nel linguaggio:
  <math|G\<equiv\>\<neg\>E>. Il programma ha la forma
  <text|<with|font-family|tt|<math-up|CI>; while E do C endw>>, con
  <math|C*I> che stabilisce l'invariante e <math|C> che lo conserva. Restano
  da verificare definitezza, invarianza e terminazione. È una strategia di
  progetto, non una ricetta che risolve ogni problema. Ecco tre tecniche.

  <strong|Tecnica 1: scomporre la postcondizione.> Per la divisione intera,
  con <math|x\<geq\>0> e <math|y\<gtr\>0>, la postcondizione
  <math|q=x<space|0.2em><math-up|div><space|0.2em>y> equivale a
  <math|\<exists\>r.(x=q\<cdot\>y+r\<wedge\>0\<leq\>r\<less\>y)>. Si
  introduce una variabile <math|r> che sia il testimone dell'esistenziale e
  si separa:

  <\equation*>
    x=q\<cdot\>y+r\<wedge\>r\<geq\>0<space|1em>\<wedge\><space|1em>r\<less\>y
  </equation*>

  dove la prima parte è l'invariante e <math|r\<less\>y> è la parte <math|G>.
  La guardia è <math|E\<equiv\>r\<geq\>y>; l'inizializzazione è
  <text|<with|font-family|tt|q := 0; r := x>>, il corpo è
  <text|<with|font-family|tt|q := q + 1; r := r - y>>, e la funzione di
  terminazione è <math|r>. La dimostrazione completa è nel capitolo 8, dove
  si conserva anche <math|y\<gtr\>0>, necessario perché <math|r> diminuisca.

  <strong|Tecnica 2: sostituire una costante con una variabile.> Vogliamo
  <math|s=<big|sum><rsub|i=0><rsup|n-1>a[i]> con <math|n> non modificato. Si
  sostituisce la costante <math|n> con una variabile <math|x> nella
  postcondizione: <math|s=<big|sum><rsub|i=0><rsup|x-1>a[i]>. Con <math|x=n>
  si ottiene il risultato; la guardia candidata è <math|x\<neq\>n>. Per avere
  indici validi e una funzione di terminazione naturale si rafforza
  l'invariante con <math|0\<leq\>x\<leq\>n>, e si prende
  <math|<math-up|expt>=n-x>.

  <\codice>
    x := 0;

    s := 0;

    while x != n do

    <hspace|2.100em>s := s + a[x];

    <hspace|2.100em>x := x + 1

    endw
  </codice>

  Il rafforzamento <math|0\<leq\>x\<leq\>n> serve a tre cose: controllare gli
  indici, limitare il contatore e rendere non negativa la funzione di
  terminazione. Sotto <math|x\<neq\>n>, si ha <math|0\<leq\>x\<less\>n>,
  quindi <math|a[x]> è definito.

  <strong|Tecnica 3: variabile ausiliaria.> La successione di Fibonacci è
  definita da <math|<math-up|fib>(0)=0>, <math|<math-up|fib>(1)=1> e
  <math|<math-up|fib>(j)=<math-up|fib>(j-1)+<math-up|fib>(j-2)> per
  <math|j\<geq\>2>. Si vuole <math|<hoare|k\<geq\>1|C|x=<math-up|fib>(k)>>
  con <math|k> non modificato.

  Una prima idea è l'invariante <math|x=<math-up|fib>(i)\<wedge\>1\<leq\>i\<leq\>k>,
  con <math|E\<equiv\>i\<neq\>k> e <math|<math-up|expt>=k-i>. Ma per avanzare
  servirebbe <math|<math-up|fib>(i+1)=x+<math-up|fib>(i-1)>, e
  <math|<math-up|fib>(i-1)> non è un'espressione del linguaggio. Si introduce
  quindi <math|y> che ne conservi il valore:

  <\equation*>
    <math-up|Inv>\<equiv\>x=<math-up|fib>(i)\<wedge\>y=<math-up|fib>(i-1)\<wedge\>1\<leq\>i\<leq\>k
  </equation*>

  Il desiderato è <math|x'=x+y> e <math|y'=x>, in termini dei vecchi valori.
  La sequenza <text|<with|font-family|tt|x := x + y; y := x>> non va bene,
  perché il secondo comando legge il nuovo <math|x>. Serve una variabile
  ausiliaria:

  <\codice>
    temp := x;

    x := x + y;

    y := temp
  </codice>

  <figura|<image|fondamenti-di-programmazione-1-assets/fibonacci.pdf|140.0mm|70.0mm||>|Dopo
  <text|<with|font-family|tt|temp := x>> il vecchio valore di <math|x> è
  salvo. Il passo successivo calcola il termine seguente, e
  <text|<with|font-family|tt|y := temp>> sposta il vecchio <math|x> nella
  coppia.>

  Il programma completo è:

  <\codice>
    x := 1;

    i := 1;

    y := 0;

    while i != k do

    <hspace|2.100em>temp := x;

    <hspace|2.100em>x := x + y;

    <hspace|2.100em>y := temp;

    <hspace|2.100em>i := i + 1

    endw
  </codice>

  Con <math|<math-up|expt>=k-i>: all'inizio <math|<math-up|fib>(1)=1> e
  <math|<math-up|fib>(0)=0>; se <math|i\<less\>k>, il corpo produce la coppia
  successiva e porta <math|i+1\<leq\>k>; <math|<math-up|expt>> è non negativa
  e diminuisce di <math|1>. All'uscita <math|i=k>, quindi
  <math|x=<math-up|fib>(k)>. Per <math|k=1> il ciclo non gira; il caso
  <math|k=0> è escluso dalla specifica.

  <section|Bandiera a due colori>

  Sia <text|<with|font-family|tt|a : array [0,n) of int>>. Vogliamo permutare
  gli elementi in modo che prima vengano i valori <em|negativi> e poi quelli
  <em|positivi o nulli>. Sia <math|A> la sequenza iniziale, e
  <math|<math-up|perm>(a,A)> la relazione: <math|a> e <math|A> hanno gli
  stessi elementi con le stesse molteplicità, in qualunque ordine.

  <\equation*>
    <hoare|n\<geq\>0\<wedge\>a=A|C|<math-up|perm>(a,A)\<wedge\>0\<leq\>x\<leq\>n\<wedge\>(\<forall\>i\<in\>[0,x).<space|0.2em>a[i]\<less\>0)\<wedge\>(\<forall\>i\<in\>[x,n).<space|0.2em>a[i]\<geq\>0)>
  </equation*>

  Si introducono due confini <math|x> e <math|y>, con invariante

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<table|<row|<cell|<math-up|Inv>\<equiv\><math-up|perm>(a,A)\<wedge\>0\<leq\>x\<leq\>y\<leq\>n>>|<row|<cell|\<wedge\>(\<forall\>i\<in\>[0,x).<space|0.2em>a[i]\<less\>0)>>|<row|<cell|\<wedge\>(\<forall\>i\<in\>[y,n).<space|0.2em>a[i]\<geq\>0)>>>>>
  </equation*>

  <\with|par-mode|center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-lsep|0.55em>|<cwith|1|-1|1|-1|cell-rsep|0.55em>|<cwith|1|-1|1|-1|cell-tsep|0.22fn>|<cwith|1|-1|1|-1|cell-bsep|0.22fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<table|<row|<cell|Intervallo>|<cell|Che
    cosa sappiamo>>|<row|<cell|<math|[0,x)>>|<cell|tutti gli elementi sono
    negativi>>|<row|<cell|<math|[x,y)>>|<cell|gli elementi sono ancora da
    classificare>>|<row|<cell|<math|[y,n)>>|<cell|tutti gli elementi sono non
    negativi>>>>>
  </with>

  La guardia è <math|x\<neq\>y> e la funzione di terminazione è <math|y-x>,
  la lunghezza della zona non classificata. L'inizializzazione
  <text|<with|font-family|tt|x := 0; y := n>> rende vuote le zone già
  classificate.

  <figura|<image|fondamenti-di-programmazione-1-assets/bandiera.pdf|120.0mm|60.0mm||>|La
  bandiera a due colori: il prefisso negativo cresce da sinistra, il suffisso
  non negativo da destra. Nel mezzo resta la zona ancora da classificare, che
  si restringe a ogni giro.>

  Sotto <math|<math-up|Inv>\<wedge\>x\<neq\>y> si ha <math|x\<less\>y>,
  quindi <math|x> e <math|y-1> sono indici validi.

  <\itemize>
    <item>Se <math|a[x]\<less\>0>, basta incrementare <math|x>: l'elemento
    entra nel prefisso negativo.

    <item>Se <math|a[x]\<geq\>0>, va portato a destra. Si scambia <math|a[x]>
    con <math|a[y-1]> e si decrementa <math|y>. <math|x> <em|non> avanza: il
    valore arrivato da destra deve ancora essere classificato. Una semplice
    copia <text|<with|font-family|tt|a[y-1] := a[x]>> perderebbe il vecchio
    elemento di destra; lo scambio conserva <math|<math-up|perm>(a,A)>.
  </itemize>

  <\codice>
    x := 0;

    y := n;

    while x != y do

    <hspace|2.100em>if a[x] \<less\> 0

    <hspace|4.200em>then x := x + 1

    <hspace|4.200em>else temp := a[y-1];

    <hspace|6.825em>a[y-1] := a[x];

    <hspace|6.825em>a[x] := temp;

    <hspace|6.825em>y := y - 1

    <hspace|2.100em>fi

    endw
  </codice>

  In entrambi i rami l'invariante è conservato e <math|y-x> diminuisce di
  <math|1>. Lo scambio è corretto anche quando <math|x=y-1>: scambia una
  posizione con sé stessa. All'uscita <math|x=y> e la zona sconosciuta è
  vuota.

  <\attenzione|Correzioni alle slide>
    Nella slide 395 i segni dei due casi sono invertiti: i casi coerenti con
    l'invariante e con il codice della slide 396 sono <math|a[x]\<less\>0> e
    <math|a[x]\<geq\>0>. Nella slide 397 l'ultimo quantificatore riguarda
    <math|a[i]>, non <math|a[y]>, e il confine finale vale
    <math|x\<in\>[0,n]>, non <math|[0,n)>: <math|x=n> è possibile se tutti
    gli elementi sono negativi, e <math|n=0> deve essere ammesso.
  </attenzione>

  <section|Bandiera a tre colori>

  <em|Svolgimento aggiunto.> La slide 398 chiede di estendere la partizione a
  tre categorie: negativi, zeri, positivi. Vogliamo due confini finali
  <math|x\<leq\>z> e la postcondizione

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<table|<row|<cell|<math-up|perm>(a,A)\<wedge\>0\<leq\>x\<leq\>z\<leq\>n>>|<row|<cell|\<wedge\>(\<forall\>i\<in\>[0,x).<space|0.2em>a[i]\<less\>0)>>|<row|<cell|\<wedge\>(\<forall\>i\<in\>[x,z).<space|0.2em>a[i]=0)>>|<row|<cell|\<wedge\>(\<forall\>i\<in\>[z,n).<space|0.2em>a[i]\<gtr\>0)>>>>>
  </equation*>

  Si usa un terzo confine <math|y>, con invariante

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<table|<row|<cell|<math-up|Inv>\<equiv\><math-up|perm>(a,A)\<wedge\>0\<leq\>x\<leq\>z\<leq\>y\<leq\>n>>|<row|<cell|\<wedge\>(\<forall\>i\<in\>[0,x).<space|0.2em>a[i]\<less\>0)>>|<row|<cell|\<wedge\>(\<forall\>i\<in\>[x,z).<space|0.2em>a[i]=0)>>|<row|<cell|\<wedge\>(\<forall\>i\<in\>[y,n).<space|0.2em>a[i]\<gtr\>0)>>>>>
  </equation*>

  La parte sconosciuta è <math|[z,y)>; la guardia è <math|z\<neq\>y>, la
  funzione di terminazione <math|y-z>, l'inizializzazione <math|x=z=0>,
  <math|y=n>.

  <\codice>
    x := 0;

    z := 0;

    y := n;

    while z != y do

    <hspace|2.100em>if a[z] \<less\> 0

    <hspace|4.200em>then temp := a[x];

    <hspace|6.825em>a[x] := a[z];

    <hspace|6.825em>a[z] := temp;

    <hspace|6.825em>x := x + 1;

    <hspace|6.825em>z := z + 1

    <hspace|4.200em>else if a[z] = 0

    <hspace|8.925em>then z := z + 1

    <hspace|8.925em>else y := y - 1;

    <hspace|11.550em>temp := a[y];

    <hspace|11.550em>a[y] := a[z];

    <hspace|11.550em>a[z] := temp

    <hspace|6.825em>fi

    <hspace|2.100em>fi

    endw
  </codice>

  Se <math|a[z]\<less\>0>, lo scambio porta il negativo all'inizio della zona
  degli zeri. Quando <math|x\<less\>z>, il vecchio <math|a[x]> è zero e passa
  in posizione <math|z>; quando <math|x=z>, lo scambio non cambia nulla. Se
  <math|a[z]=0>, la zona degli zeri si allarga. Se <math|a[z]\<gtr\>0>, si
  restringe da destra la zona sconosciuta e si porta il positivo nella
  posizione appena aggiunta al suffisso; <math|z> resta fermo per riesaminare
  il valore arrivato da destra. Sotto <math|z\<less\>y>, tutti gli indici
  sono validi, perché il nuovo <math|y> è il vecchio <math|y-1\<geq\>z>. Ogni
  ramo diminuisce <math|y-z> di <math|1>; all'uscita <math|z=y> e la
  postcondizione vale.

  <section|Una successione che dimezza l'indice>

  Consideriamo la successione

  <\equation*>
    f(0)=0,<space|1em>f(1)=1
  </equation*>

  Per <math|j\<geq\>2> pari si pone <math|f(j)=f(j/2)>; per <math|j\<geq\>2>
  dispari, <math|f(j)=f((j-1)/2)+f((j+1)/2)>. La specifica è
  <math|<hoare|n\<geq\>0|C|h=f(n)>>, con <math|n> non modificato. Far
  crescere un indice da <math|0> a <math|n>, come per Fibonacci, obbliga a
  conservare valori a indici dimezzati, e la preservazione dell'invariante
  diventa difficile. Conviene seguire la struttura della ricorsione e <em|far
  diminuire l'indice>.

  Ecco <math|f(19)>:

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|3|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|0.2em>|<cwith|1|-1|1|-1|cell-rsep|0.2em>|<cwith|1|-1|3|3|cell-lsep|1.4em>|<cwith|1|-1|1|-1|cell-bsep|0.12fn>|<cwith|1|-1|1|-1|cell-tsep|0.12fn>|<table|<row|<cell|>|<cell|<math|f(19)>>|<cell|>>|<row|<cell|<math|=>>|<cell|<math|f(9)+f(10)>>|<cell|<text|{<math|19>
    dispari, <math|10> pari}>>>|<row|<cell|<math|=>>|<cell|<math|f(4)+2f(5)>>|<cell|<text|{<math|f(10)=f(5)>,
    <math|f(9)=f(4)+f(5)>}>>>|<row|<cell|<math|=>>|<cell|<math|3f(2)+2f(3)>>|<cell|<text|{<math|f(4)=f(2)>,
    <math|f(5)=f(2)+f(3)>}>>>|<row|<cell|<math|=>>|<cell|<math|5f(1)+2f(2)>>|<cell|<text|{<math|f(3)=f(1)+f(2)>}>>>|<row|<cell|<math|=>>|<cell|<math|7>>|<cell|<text|{<math|f(1)=f(2)=1>}>>>>>>
  </equation*>

  Ogni espressione intermedia è una combinazione di due termini consecutivi
  <math|f(x)> e <math|f(x+1)>. Suggerisce l'invariante

  <\equation*>
    <math-up|Inv>\<equiv\>0\<leq\>x\<leq\>n\<wedge\>f(n)=k<space|0.2em>f(x)+h<space|0.2em>f(x+1)
  </equation*>

  dove <math|k> è una variabile di lavoro, distinta dal parametro <math|k> di
  Fibonacci. L'inizializzazione <text|<with|font-family|tt|x := n; k := 1; h
  := 0>> lo stabilisce, perché <math|f(n)=1\<cdot\>f(n)+0\<cdot\>f(n+1)>. La
  guardia è <math|x\<neq\>0>. All'uscita <math|f(n)=k\<cdot\>f(0)+h\<cdot\>f(1)=h>,
  e il risultato è già in <math|h>.

  <strong|Aggiornamenti per parità.> Sia <math|q=x<space|0.2em><math-up|div><space|0.2em>2>.

  <\itemize>
    <item><em|Caso pari>, <math|x=2q\<geq\>2>. Allora <math|f(x)=f(q)> e
    <math|f(x+1)=f(q)+f(q+1)>, quindi <math|k f(x)+h f(x+1)=(k+h)f(q)+h
    f(q+1)>. Si esegue <text|<with|font-family|tt|k := h + k>> e poi
    <text|<with|font-family|tt|x := x div 2>>.

    <item><em|Caso dispari>, <math|x=2q+1> (svolgimento aggiunto). Allora
    <math|f(x)=f(q)+f(q+1)> e <math|f(x+1)=f(q+1)>, quindi <math|k f(x)+h
    f(x+1)=k f(q)+(k+h)f(q+1)>. Si esegue <text|<with|font-family|tt|h := h +
    k>> e poi <text|<with|font-family|tt|x := x div 2>>. L'identità vale
    anche per <math|x=1>, perché <math|q=0> e <math|f(1)=f(0)+f(1)>.
  </itemize>

  <\codice>
    x := n;

    k := 1;

    h := 0;

    while x != 0 do

    <hspace|2.100em>if x mod 2 = 0

    <hspace|4.200em>then k := h + k

    <hspace|4.200em>else h := h + k

    <hspace|2.100em>fi;

    <hspace|2.100em>x := x div 2

    endw
  </codice>

  Per la terminazione si prende <math|<math-up|expt>=x>. Sotto l'invariante
  <math|x\<geq\>0>, e la guardia dà <math|x\<gtr\>0>, quindi
  <math|0\<leq\>x<space|0.2em><math-up|div><space|0.2em>2\<less\>x>. Le
  divisioni e il modulo hanno divisore costante <math|2\<neq\>0>, quindi sono
  definiti. Per <math|n=0> il ciclo non gira e <math|h=0=f(0)>.

  Traccia con <math|n=19>, come <math|(x,k,h)>:

  <\with|par-mode|center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-lsep|0.55em>|<cwith|1|-1|1|-1|cell-rsep|0.55em>|<cwith|1|-1|1|-1|cell-tsep|0.22fn>|<cwith|1|-1|1|-1|cell-bsep|0.22fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<table|<row|<cell|giro>|<cell|<math|x>>|<cell|<math|k>>|<cell|<math|h>>|<cell|caso>>|<row|<cell|inizio>|<cell|<math|19>>|<cell|<math|1>>|<cell|<math|0>>|<cell|\<#2014\>>>|<row|<cell|1>|<cell|<math|9>>|<cell|<math|1>>|<cell|<math|1>>|<cell|dispari>>|<row|<cell|2>|<cell|<math|4>>|<cell|<math|1>>|<cell|<math|2>>|<cell|dispari>>|<row|<cell|3>|<cell|<math|2>>|<cell|<math|3>>|<cell|<math|2>>|<cell|pari>>|<row|<cell|4>|<cell|<math|1>>|<cell|<math|5>>|<cell|<math|2>>|<cell|pari>>|<row|<cell|5>|<cell|<math|0>>|<cell|<math|5>>|<cell|<math|7>>|<cell|dispari>>>>>
  </with>

  Il risultato è <math|h=7=f(19)>.

  <\officina|9. Tre modi per trovare l'invariante>
    Ogni tecnica di questo capitolo risponde a una domanda diversa.

    <\itemize>
      <item><em|Scomporre>: se la postcondizione è un'esistenza o una
      congiunzione, togli una parte e falla diventare la guardia negata
      (<math|r\<less\>y>).

      <item><em|Costante in variabile>: se la postcondizione contiene un
      numero fisso, sostituiscilo con una variabile che va da <math|0> a quel
      numero, e rafforza con <math|0\<leq\>x\<leq\>n>.

      <item><em|Variabile ausiliaria>: se un aggiornamento ha bisogno di un
      valore che il linguaggio non sa esprimere, conservalo in una variabile
      in più; ricordati <text|<with|font-family|tt|temp>>.
    </itemize>

    Per gli array, dividi il dominio in zone e scrivi che cosa sai di
    ciascuna.
  </officina>

  <\verifica|9>
    <strong|a)> Nel programma di Fibonacci, perché serve
    <text|<with|font-family|tt|temp>>?

    <strong|b)> Nella bandiera a due colori, perché <math|x> non avanza nel
    ramo <math|a[x]\<geq\>0>?

    <strong|c)> Calcola <math|f(6)> con la definizione.
  </verifica>

  <appendix|La cassetta degli attrezzi>

  Le dimostrazioni di questo libro usano pochi schemi, sempre gli stessi.
  Quando non sai da dove cominciare, guarda la forma della frase da
  dimostrare e cerca qui l'attrezzo adatto.

  <\padded>
    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-valign|t>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|1|cell-width|0.25par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|3|3|cell-width|0.17par>|<cwith|1|-1|3|3|cell-hmode|exact>|<cwith|1|-1|2|2|cell-width|0.55par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tsep|0.45fn>|<cwith|1|-1|1|-1|cell-bsep|0.45fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|2|-1|1|-1|cell-bborder|0.25pt>|<cwith|1|-1|1|1|cell-lsep|0fn>|<cwith|1|-1|3|3|cell-rsep|0fn>|<table|<row|<cell|<strong|Se
    la frase dice\<ldots\>>>|<cell|<strong|prova
    a\<ldots\>>>|<cell|<strong|vedi>>>|<row|<cell|\Sciò che il sistema deve
    fare\T>|<cell|scrivi lo stato iniziale e quello finale, e cerca le parole
    vaghe>|<cell|officina 1, cap. 1>>|<row|<cell|\Sbasta un caso?\T, \Sper
    ogni\T>|<cell|cerca un controesempio piccolo; se non c'è, dimostra per
    tutti i casi>|<cell|officina 2, cap. 2>>|<row|<cell|\Sdimostra
    che\<ldots\>\T>|<cell|scrivi una catena, un passo per riga, ogni passo
    con la sua legge>|<cell|officina 3, cap. 3>>|<row|<cell|\Sse e solo se\T,
    \Sogni \<ldots\> è \<ldots\>\T>|<cell|traduci una proposizione alla
    volta, e controlla le parentesi>|<cell|officina 4, cap.
    4>>|<row|<cell|\Sper ogni x esiste un y\T>|<cell|scrivi l'ordine dei
    quantificatori; cerca un controesempio con un dominio
    piccolo>|<cell|officina 5, cap. 5>>|<row|<cell|\Sche cosa fa questo
    programma?\T>|<cell|eseguilo a mano su un caso piccolo, con una colonna
    per variabile>|<cell|officina 6, cap. 6>>|<row|<cell|\Scalcola la
    precondizione\T>|<cell|parti dalla postcondizione e risali comando per
    comando, con (ass)>|<cell|officina 7, cap. 7>>|<row|<cell|\Sil ciclo
    termina e fa\<ldots\>\T>|<cell|scrivi invariante, guardia e funzione di
    terminazione, poi verifica i cinque obblighi>|<cell|officina 8, cap.
    8>>|<row|<cell|\Sper ogni elemento dell'array\T>|<cell|separa le zone
    (già elaborata, da elaborare) e scrivi che cosa sai di
    ciascuna>|<cell|officina 9, cap. 9>>>>>
  </padded>

  Un'abitudine vale per tutti: prima di dimostrare, prova su un caso piccolo
  e sui valori limite. Una traccia sbagliata fa emergere l'errore in pochi
  minuti.

  <appendix|Risposte alle verifiche>

  <strong|1.>

  a) Viola la non ambiguità: \Sdolce\T non è una condizione che un esecutore
  possa controllare (quando è \Sdolce\T?). Forse viola anche la finitezza, se
  si aggiunge zucchero senza fine.

  b) <math|{x\<mapsto\>3,y\<mapsto\>3}> è uno stato.
  <math|{x\<mapsto\>3,x\<mapsto\>4}> non lo è: uno stato associa a ogni
  identificatore al più un valore, e qui <math|x> ne avrebbe due.

  c) Bastano dieci confronti: ogni confronto dimezza i casi possibili, e
  <math|2<rsup|10>=1024\<geq\>1000>.

  <strong|2.>

  a) <math|e\<Rightarrow\>\<neg\>p>. \SEsco solo se non piove\T dice che
  uscire richiede non piovere: <math|\<neg\>p> è condizione necessaria per
  <math|e>.

  b) La formula è soddisfacibile, perché basta <math|p=<falso>>. Non è una
  tautologia: con <math|p=<vero>> e <math|q=<falso>> diventa falsa.

  c) Con <math|a=<falso>> e <math|b=<vero>> le premesse sono vere e la
  conclusione <math|\<neg\>b> è falsa: il controesempio mostra che
  l'argomento non è valido.

  <strong|3.>

  a) In <math|\<neg\>(P\<Rightarrow\>Q)\<wedge\>R> la <math|P> è positiva
  (attraversa due negazioni: quella esterna e l'antecedente di
  <math|\<Rightarrow\>>), <math|Q> è negativa (una sola negazione), <math|R>
  è positiva. Infatti <math|\<neg\>(P\<Rightarrow\>Q)\<wedge\>R\<equiv\>P\<wedge\>\<neg\>Q\<wedge\>R>.

  b) <math|P\<wedge\>(\<neg\>P\<vee\>Q)\<equiv\>(P\<wedge\>\<neg\>P)\<vee\>(P\<wedge\>Q)>
  per distributività, <math|\<equiv\>F\<vee\>(P\<wedge\>Q)> per
  contraddizione, <math|\<equiv\>P\<wedge\>Q> per unità.

  c) <math|\<neg\>P\<equiv\>P\<uparrow\>P>, perché
  <math|P\<uparrow\>P\<equiv\>\<neg\>(P\<wedge\>P)\<equiv\>\<neg\>P>.

  <strong|4.>

  a) Sono libere la <math|y> in <math|q(x,y)> e la <math|x> in <math|r(x)>.
  La <math|x> in <math|q(x,y)> è legata dal <math|\<forall\>x> interno;
  quella in <math|p(x)> dal <math|\<exists\>x>.

  b) <math|\<forall\>x.<math-up|pari>(x)\<Rightarrow\><math-up|dispari>(<math-up|succ>(x))>
  è una formula; <math|<math-up|succ>(x)> è un termine.

  c) In <math|\<cal-I\><rsub|2>> il dominio contiene solo <math|5, 10, 15>,
  tutti multipli di <math|5>; in <math|\<cal-I\><rsub|3>> c'è anche <math|7>,
  che non lo è. Il dominio fa la differenza.

  <strong|5.>

  a) <math|\<exists\>x.(p(x)\<wedge\>\<forall\>y.\<neg\>q(x,y))>.

  b) Se <math|d> comparisse nelle premesse, potremmo usare fatti su un
  elemento particolare: da <math|p(a)> concluderemmo <math|\<forall\>x.p(x)>,
  che è un'inferenza sbagliata.

  c) <math|\<forall\>x.\<exists\>y.P(x,y)> è vera: per <math|a> si usa
  <math|b>, per <math|b> si usa <math|a>.
  <math|\<exists\>y.\<forall\>x.P(x,y)> è falsa: nessuna <math|y> va bene per
  entrambi.

  <strong|6.>

  a) Lo stato finale è <math|{x\<mapsto\>7,y\<mapsto\>3}>: <math|x=3+7=10>,
  poi <math|y=10-7=3>, poi <math|x=10-3=7>. È lo scambio senza variabile
  ausiliaria.

  b) La <math|x> compare nella postcondizione ed è modificata:
  <math|x=2\<cdot\>x> nello stato finale vale solo per <math|x=0>. Serve una
  variabile di specifica: <math|x=A\<wedge\>A\<geq\>0\<longrightarrow\>x=2\<cdot\>A>.

  c) No: la successione è <math|5,3,1,-1,-3,\<ldots\>> e non passa mai per
  <math|0>, quindi la guardia resta vera per sempre.

  <strong|7.>

  a) Con <math|x=5>, <text|<with|font-family|tt|x := x + 1>> dà <math|x=6>,
  non <math|x=5>: la tripla non è soddisfatta.

  b) Con (ass): <math|<math-up|def>(x\<cdot\>2)\<wedge\>(y\<gtr\>10)[x\<cdot\>2/y]\<equiv\>(x\<cdot\>2\<gtr\>10)\<equiv\>(x\<gtr\>5)>.
  La precondizione richiesta è <math|x\<gtr\>5>.

  c) Con <math|x=2>, <math|1<space|0.2em><math-up|div><space|0.2em>2=0\<neq\>1>:
  la postcondizione non vale. Con <math|x=0> la divisione non è definita. La
  tripla non è soddisfatta.

  <strong|8.>

  a) Ingresso, invarianza, terminazione, progresso e uscita.

  b) No, con l\<#2019\>invariante <math|x\<geq\>0>. Da <math|x=1> la guardia
  resta vera per sempre, quindi nessuna funzione di terminazione può
  esistere. L'obbligo che fallisce è il progresso: nessuna quantità intera
  non negativa diminuisce a ogni giro.

  c) Si usa <math|<math-up|expt>=n-i>. Sotto l'invariante
  <math|0\<leq\>i\<leq\>n>, <math|n-i\<geq\>0>: è il terzo obbligo. Se
  <math|i\<less\>n>, allora <math|n-(i+1)\<less\>n-i>: è il progresso. Il
  ciclo si ferma con <math|i=n>.

  <strong|9.>

  a) Il secondo comando, <text|<with|font-family|tt|y := x>>, leggerebbe il
  nuovo <math|x>: il vecchio valore va salvato in
  <text|<with|font-family|tt|temp>> prima di aggiornare <math|x>.

  b) L'elemento arrivato da destra, <math|a[y-1]>, non è ancora classificato:
  va esaminato di nuovo, quindi <math|x> resta fermo.

  c) <math|f(6)=f(3)=f(1)+f(2)=1+1=2>.
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
    <associate|auto-10|<tuple|9|44>>
    <associate|auto-11|<tuple|A|51>>
    <associate|auto-12|<tuple|B|52>>
    <associate|auto-2|<tuple|1|4>>
    <associate|auto-3|<tuple|2|9>>
    <associate|auto-4|<tuple|3|14>>
    <associate|auto-5|<tuple|4|20>>
    <associate|auto-6|<tuple|5|24>>
    <associate|auto-7|<tuple|6|28>>
    <associate|auto-8|<tuple|7|32>>
    <associate|auto-9|<tuple|8|38>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Come
      usare questo libro> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Dal
      problema al programma> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Proposizioni:
      forma e significato> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Dimostrare
      con le leggi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Il
      linguaggio del primo ordine> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Verità
      e leggi nel primo ordine> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Stati,
      espressioni e comandi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Triple
      di Hoare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Cicli:
      invarianti e terminazione> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Array
      e progetto di cicli> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendice
      A<space|2spc>La cassetta degli attrezzi>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendice
      B<space|2spc>Risposte alle verifiche>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>