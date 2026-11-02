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
  </hide-preamble> <assign|page-this-header|><assign|page-this-footer|>

  <\with|par-mode|center>
    <vspace*|7.5cm>

    <with|font-size|3.6|Analisi 1>

    <vspace|1.4fn>

    <with|font-shape|small-caps|font-size|1.25|settembre\<#2013\>ottobre
    2026>
  </with>

  <chapter*|Come usare questo libro>

  Questo libro raccoglie le lezioni di Analisi 1 dal 23 settembre al 29
  ottobre 2026 e le rimette in un ordine che costruisce un mattone alla
  volta. Si parte dal linguaggio (logica, insiemi, funzioni, induzione), si
  arriva ai numeri reali e alla completezza, si passa per le funzioni
  elementari e si entra nel cuore del corso: i limiti di successioni e di
  funzioni, gli o piccoli, le derivate e gli sviluppi di Taylor.

  Lungo il testo trovi cinque tipi di riquadro.

  <\itemize>
    <item><strong|In breve>: all'inizio di ogni capitolo, che cosa impareremo
    e perché.

    <item><strong|Esercizio guidato>: un problema risolto passo per passo
    (<em|Idea>, <em|Conto>, <em|Controllo>). Prova a fare ogni passo da solo
    prima di leggerlo. Quelli segnati \Slezione\T sono stati svolti in aula.

    <item><strong|Attenzione>: un errore tipico, e come evitarlo.

    <item><strong|Immagine mentale>: un modo di vedere un'idea che la rende
    facile da ricordare.

    <item><strong|Officina della dimostrazione>: in ogni capitolo un attrezzo
    del ragionamento; l'appendice A li riassume.
  </itemize>

  Ogni capitolo finisce con una breve <strong|verifica>. Le risposte, con le
  ragioni, sono nell'appendice B.

  <strong|Convenzioni.> <math|log> è il logaritmo naturale; gli angoli sono
  in radianti; <math|<wide|\<bbb-R\>|\<bar\>>=\<bbb-R\>\<cup\>{\<pm\>\<infty\>}>.
  \SDefinitivamente\T vuol dire \Sda un certo indice in poi\T. I risultati
  che il corso enuncia senza dimostrazione sono chiamati, come in aula,
  \Steoremi misteriosi\T. Le figure, gli esempi aggiuntivi, le verifiche e le
  immagini mentali sono integrazioni didattiche, non parole del docente; lo
  stesso vale per il breve richiamo su esponenziali e logaritmi del capitolo
  5.

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Come usare
    questo libro> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Il
    linguaggio della matematica> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Funzioni>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>Il
    principio di induzione> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>I
    numeri reali> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>Funzioni
    reali e grafici> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>Trigonometria
    e funzioni inverse> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Successioni
    e limiti> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8<space|2spc>Monotonia,
    il numero <with|mode|math|e> e l'algebra dei limiti>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9<space|2spc>Radici,
    rapporti e gerarchia degli infiniti> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|10<space|2spc>Limiti
    di funzioni e continuità> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|11<space|2spc>I
    limiti notevoli> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|12<space|2spc>Limiti
    che non esistono e altre tecniche> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|13<space|2spc>Il
    linguaggio degli o piccoli> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|14<space|2spc>Derivate>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|15<space|2spc>De
    L'Hôpital e i polinomi di Taylor> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|16<space|2spc>Calcolare
    con gli sviluppi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendice
    A<space|2spc>La cassetta degli attrezzi>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendice
    B<space|2spc>Risposte alle verifiche>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-19><vspace|0.5fn>
  </table-of-contents>

  <chapter|Il linguaggio della matematica>

  <\inbreve>
    Prima di fare analisi dobbiamo imparare a leggere e scrivere le frasi
    della matematica: proposizioni, quantificatori, implicazioni, insiemi. La
    domanda guida è semplice: <em|che cosa dice esattamente questa frase, e
    che cosa dice la sua negazione?>
  </inbreve>

  Il corso procede a <strong|doppia passata>. La prima volta impariamo che
  cosa sono gli oggetti e come si usano, come quando si impara a guidare con
  volante, acceleratore e freno. La seconda volta apriamo il cofano:
  definizioni precise, motivazioni, dimostrazioni. Il programma ha quattro
  parti: preliminari (logica, insiemi, funzioni, induzione, numeri reali,
  funzioni elementari), limiti, calcolo differenziale, calcolo integrale.
  Questo volume copre i preliminari, i limiti e l'inizio del calcolo
  differenziale.

  <section|Proposizioni e predicati>

  Una <strong|proposizione> è una frase di cui ha senso chiedersi se è vera o
  falsa. \S<math|7\<geq\>5>\T è una proposizione vera. \SOggi fa molto
  caldo\T è una proposizione. \SIl docente di Analisi 1 è giovane\T lo
  diventa appena fissiamo che cosa vuol dire \Sgiovane\T. Non sono
  proposizioni le domande (\SQuanti siamo in aula?\T) e i comandi (\SFate
  silenzio!\T).

  Un <strong|predicato> è una frase con uno o più parametri, che diventa vera
  o falsa quando li fissiamo. \S<math|x\<geq\>3>\T non è né vera né falsa:
  con <math|x=5> è vera, con <math|x=1> è falsa. \SAllo studente <math|S>
  piace la materia <math|M>\T è un predicato con due parametri, che scriviamo
  <math|P(S,M)>.

  Un predicato diventa una proposizione quando ogni sua variabile è
  <em|sostituita> con un valore oppure <em|quantificata>. Se resta una
  variabile libera, la frase non è completa.

  <section|Per ogni, esiste>

  I due quantificatori sono <math|\<forall\>> (\Sper ogni\T) ed
  <math|\<exists\>> (\Sesiste almeno un\T). Con <math|P(x):x\<geq\>3> e
  <math|x\<in\>\<bbb-R\>>:

  <\itemize>
    <item><math|\<forall\>x\<in\>\<bbb-R\>, x\<geq\>3> è falsa: basta
    <math|x=0>.

    <item><math|\<exists\>x\<in\>\<bbb-R\> <text| tale che >x\<geq\>3> è
    vera: basta <math|x=3>.
  </itemize>

  Con due parametri l'ordine dei quantificatori cambia tutto. Sia
  <math|P(S,B)>: \Sallo studente <math|S> piace la birra <math|B>\T.

  <\itemize>
    <item><math|\<forall\>S \<forall\>B, P(S,B)>: a ogni studente piacciono
    tutte le birre.

    <item><math|\<exists\>S \<exists\>B, P(S,B)>: c'è uno studente a cui
    piace almeno una birra.

    <item><math|\<forall\>S \<exists\>B, P(S,B)>: ogni studente ha almeno una
    birra che gli piace; la birra <em|può dipendere> dallo studente.

    <item><math|\<exists\>B \<forall\>S, P(S,B)>: c'è una birra che piace a
    tutti; la birra è scelta <em|una volta sola>.

    <item><math|\<exists\>S \<forall\>B, P(S,B)>: c'è uno studente a cui
    piacciono tutte le birre.

    <item><math|\<forall\>B \<exists\>S, P(S,B)>: ogni birra piace ad almeno
    uno studente.
  </itemize>

  Sono sei frasi concettualmente diverse. Il docente ha lasciato una domanda
  aperta: quante se ne ottengono con un predicato a cinque parametri?

  <figura|<image|analisi-1-assets/quantificatori.pdf|150.0mm|50.0mm||>|A
  sinistra <math|\<forall\>S \<exists\>B>: ogni studente ha la sua birra,
  magari diversa. A destra <math|\<exists\>B \<forall\>S>: una sola birra
  raccoglie le frecce di tutti. La seconda frase implica la prima, ma non
  viceversa.>

  <\attenzione|Non si scambiano \<forall\> ed \<exists\>>
    <math|\<forall\>S \<exists\>B P(S,B)> e <math|\<exists\>B \<forall\>S
    P(S,B)> non dicono la stessa cosa. Nella prima chi risponde (la birra)
    conosce già la domanda (lo studente); nella seconda deve rispondere a
    tutti con la stessa scelta. Quando scrivi un predicato, dichiara sempre i
    quantificatori, nell'ordine giusto.
  </attenzione>

  <section|Non, e, oppure>

  Siano <math|P> e <math|Q> proposizioni. La <strong|negazione>
  <math|\<neg\>P> afferma esattamente il contrario di <math|P>:
  <math|\<neg\>(7\<geq\>5)> è <math|7\<less\>5>. La <strong|congiunzione>
  <math|P\<wedge\>Q> (\S<math|P> e <math|Q>\T) è vera solo se lo sono
  entrambe. La <strong|disgiunzione> <math|P\<vee\>Q> (\S<math|P> oppure
  <math|Q>\T) è vera se almeno una lo è: in matematica l'\Soppure\T è
  <em|inclusivo>, come il latino <em|vel>, e non esclude che siano vere tutte
  e due.

  Le <strong|leggi di De Morgan> dicono come si nega un \Se\T e un
  \Soppure\T:

  <\equation*>
    \<neg\>(P\<wedge\>Q)\<equiv\>\<neg\>P\<vee\>\<neg\>Q,<space|3em>\<neg\>(P\<vee\>Q)\<equiv\>\<neg\>P\<wedge\>\<neg\>Q.
  </equation*>

  \SNon sono vere entrambe\T vuol dire \Salmeno una è falsa\T; \Snon è vera
  nessuna delle due\T vuol dire \Ssono false entrambe\T.

  <section|Negare i quantificatori>

  Queste due regole torneranno in ogni capitolo:

  <\equation*>
    \<neg\>(\<forall\>x P(x))\<equiv\>\<exists\>x
    \<neg\>P(x),<space|3em>\<neg\>(\<exists\>x P(x))\<equiv\>\<forall\>x
    \<neg\>P(x).
  </equation*>

  \STutte le pecore sono nere\T si scrive <math|\<forall\>p, (p <text| è una
  pecora>)\<Rightarrow\>(p <text| è nera>)>. La negazione è \Sesiste almeno
  una pecora non nera\T, non \Snessuna pecora è nera\T. Per smentire un \Sper
  ogni\T basta un controesempio.

  Con più quantificatori si nega da sinistra a destra: ogni <math|\<forall\>>
  diventa <math|\<exists\>>, ogni <math|\<exists\>> diventa
  <math|\<forall\>>, e alla fine si nega il predicato. La negazione di \Sa
  ogni studente piace almeno una birra\T, <math|\<forall\>S \<exists\>B
  P(S,B)>, è <math|\<exists\>S \<forall\>B \<neg\>P(S,B)>: c'è uno studente a
  cui non piace nessuna birra.

  <\guidato|Lo studente che fallisce tutto>
    Nega la frase \Sper ogni anno esiste uno studente che fallisce tutti gli
    esami\T.

    <em|Idea.> Scriviamo prima la frase in simboli, poi applichiamo le regole
    un quantificatore alla volta.

    <em|Conto.> Sia <math|P(a,s,e)>: \Snell'anno <math|a> lo studente
    <math|s> fallisce l'esame <math|e>\T. La frase è <math|\<forall\>a
    \<exists\>s \<forall\>e, P(a,s,e)>. Negando: <math|\<exists\>a
    \<forall\>s \<exists\>e, \<neg\>P(a,s,e)>.

    In italiano: <em|esiste un anno in cui ogni studente supera almeno un
    esame>.

    <em|Controllo.> La negazione non dice che in quell'anno tutti superano
    tutti gli esami: chiede solo che nessuno li fallisca tutti. È proprio il
    contrario della frase di partenza, niente di più.
  </guidato>

  <section|L'implicazione>

  <math|P\<Rightarrow\>Q> si legge \Sse <math|P>, allora <math|Q>\T. È falsa
  in un solo caso: <math|P> vera e <math|Q> falsa. Se la premessa è falsa,
  l'implicazione è vera qualunque cosa dica <math|Q>. Così
  <math|7\<geq\>5\<Rightarrow\>7\<less\>5> è falsa, mentre
  <math|2\<geq\>3\<Rightarrow\>4\<geq\>1> e
  <math|-5\<geq\>3\<Rightarrow\>25\<geq\>1> sono vere perché le premesse sono
  false.

  <math|P\<Rightarrow\>Q> si dice anche così: <math|P> è <strong|condizione
  sufficiente> per <math|Q>, e <math|Q> è <strong|condizione necessaria> per
  <math|P>. Non significa che <math|Q> implichi <math|P>.

  Tre equivalenze da avere in tasca:

  <\equation*>
    \<neg\>(P\<Rightarrow\>Q)\<equiv\>P\<wedge\>\<neg\>Q,<space|2em>P\<Rightarrow\>Q\<equiv\>\<neg\>Q\<Rightarrow\>\<neg\>P,<space|2em>P\<Rightarrow\>Q\<equiv\>\<neg\>P\<vee\>Q.
  </equation*>

  La seconda è la <strong|contrapposizione>. \SSe studio tutti i giorni,
  supero l'esame\T equivale a \Sse non supero l'esame, non ho studiato tutti
  i giorni\T. <em|Non> equivale a \Sse non studio tutti i giorni, non supero
  l'esame\T (<math|\<neg\>P\<Rightarrow\>\<neg\>Q>): si può superare l'esame
  anche senza studiare ogni giorno. La contrapposizione è alla base delle
  dimostrazioni per assurdo: per provare <math|P\<Rightarrow\>Q> si può
  mostrare che da <math|\<neg\>Q> segue <math|\<neg\>P>.

  La <strong|doppia implicazione> <math|P\<Leftrightarrow\>Q> è vera quando
  <math|P> e <math|Q> hanno lo stesso valore di verità; equivale a
  <math|(P\<Rightarrow\>Q)\<wedge\>(Q\<Rightarrow\>P)> ed esprime una
  condizione necessaria e sufficiente.

  Le <strong|tavole di verità> riassumono tutto (V = vera, F = falsa):

  <\center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-lsep|0.9em>|<cwith|1|-1|1|-1|cell-rsep|0.9em>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|1|-1|2|2|cell-rborder|0.6pt>|<table|<row|<cell|<math|P>>|<cell|<math|Q>>|<cell|<math|\<neg\>P>>|<cell|<math|P\<wedge\>Q>>|<cell|<math|P\<vee\>Q>>|<cell|<math|P\<Rightarrow\>Q>>|<cell|<math|P\<Leftrightarrow\>Q>>>|<row|<cell|V>|<cell|V>|<cell|F>|<cell|V>|<cell|V>|<cell|V>|<cell|V>>|<row|<cell|V>|<cell|F>|<cell|F>|<cell|F>|<cell|V>|<cell|F>|<cell|F>>|<row|<cell|F>|<cell|V>|<cell|V>|<cell|F>|<cell|V>|<cell|V>|<cell|F>>|<row|<cell|F>|<cell|F>|<cell|V>|<cell|F>|<cell|F>|<cell|V>|<cell|V>>>>>
  </center>

  <\attenzione|Premessa falsa, implicazione vera>
    Non confondere la verità di <math|P\<Rightarrow\>Q> con la verità di
    <math|P> e di <math|Q> separatamente. Un'implicazione con premessa falsa
    è vera: non promette nulla, quindi non può essere smentita.
  </attenzione>

  <section|Insiemi>

  Un insieme si descrive per <strong|elencazione>, <math|A={2,3}>, oppure per
  <strong|proprietà caratteristica>, <math|B={s:s <text| è uno studente di
  Analisi 1 a Pisa>}>, dove \S:\T si legge \Stale che\T. Nell'elencazione
  l'ordine non conta e le ripetizioni non creano nuovi elementi:
  <math|{2,3}={3,2}={2,2,3}>.

  L'insieme dei quadrati degli interi si scrive
  <math|A={n<rsup|2>:n\<in\>\<bbb-Z\>}={0,1,4,9,16,\<ldots\>}>: <math|1>
  viene sia da <math|1<rsup|2>> sia da <math|(-1)<rsup|2>>, ma compare una
  volta sola. In modo più esplicito, <math|A={m\<in\>\<bbb-N\>:\<exists\>a\<in\>\<bbb-Z\>
  <text| tale che >m=a<rsup|2>}>. Il predicato <math|m=a<rsup|2>> ha due
  parametri; dopo aver quantificato <math|a> resta libero solo <math|m>, e
  l'insieme raccoglie gli <math|m> per cui la proprietà è vera.

  Le operazioni traducono i connettivi:

  <\equation*>
    A\<cap\>B={x:x\<in\>A\<wedge\>x\<in\>B},<space|1.5em>A\<cup\>B={x:x\<in\>A\<vee\>x\<in\>B},<space|1.5em>A\<setminus\>B={x:x\<in\>A\<wedge\>x\<nin\>B}.
  </equation*>

  In generale <math|A\<setminus\>B\<neq\>B\<setminus\>A>.

  <figura|<image|analisi-1-assets/insiemi.pdf|150.0mm|43.8mm||>|In grigio, da
  sinistra: intersezione, unione, differenza <math|A\<setminus\>B>. L'\Se\T
  diventa intersezione, l'\Soppure\T (inclusivo) diventa unione.>

  Il <strong|prodotto cartesiano> <math|A\<times\>B={(a,b):a\<in\>A\<wedge\>b\<in\>B}>
  è l'insieme delle coppie <em|ordinate>: in generale
  <math|(a,b)\<neq\>(b,a)>, anche quando <math|A=B>. Con
  <math|A={3,\<ast\>,\<square\>}> e <math|B={0,2}>:

  <\equation*>
    A\<times\>B={(3,0),(3,2),(\<ast\>,0),(\<ast\>,2),(\<square\>,0),(\<square\>,2)}.
  </equation*>

  È una generalizzazione del piano cartesiano: la prima coordinata viene dal
  primo insieme, la seconda dal secondo.

  <section|Inclusione e insieme delle parti>

  <math|A\<subseteq\>B> significa che ogni elemento di <math|A> sta in
  <math|B>:

  <\equation*>
    A\<subseteq\>B<space|1em>\<Leftrightarrow\><space|1em>\<forall\>x,
    (x\<in\>A\<Rightarrow\>x\<in\>B).
  </equation*>

  È una relazione fra due insiemi, mentre <math|x\<in\>A> è una relazione fra
  un elemento e un insieme. Per evitare ambiguità scriviamo
  <math|\<subseteq\>> quando l'uguaglianza è ammessa e <math|\<subsetneq\>>
  quando è esclusa: il simbolo <math|\<subset\>> è usato in modi diversi da
  testi diversi.

  L'<strong|insieme vuoto> <math|\<varnothing\>> è contenuto in ogni insieme:
  la frase <math|\<forall\>x, (x\<in\>\<varnothing\>\<Rightarrow\>x\<in\>A)>
  è vera perché la premessa è sempre falsa. Attenzione: <math|\<varnothing\>>
  non ha elementi, <math|{\<varnothing\>}> ne ha uno (l'insieme vuoto).

  L'<strong|insieme delle parti> <math|\<cal-P\>(A)={B:B\<subseteq\>A}>
  contiene tutti i sottoinsiemi di <math|A>, compresi <math|\<varnothing\>> e
  <math|A>. Per <math|A={3,\<ast\>,\<square\>}>:

  <\equation*>
    \<cal-P\>(A)={\<varnothing\>,{3},{\<ast\>},{\<square\>},{3,\<ast\>},{3,\<square\>},{\<ast\>,\<square\>},{3,\<ast\>,\<square\>}},
  </equation*>

  che ha <math|8> elementi. In generale, se <math|A> ha <math|n> elementi,
  <math|\<cal-P\>(A)> ne ha <math|2<rsup|n>>: per ogni elemento scegliamo,
  indipendentemente, se metterlo o no.

  <figura|<image|analisi-1-assets/parti.pdf|155.0mm|62.5mm||>|Ogni
  sottoinsieme di <math|{3,\<ast\>,\<square\>}> è un percorso nell'albero: a
  ogni livello si decide \Sdentro\T o \Sfuori\T. Tre scelte binarie danno
  <math|2<rsup|3>=8> foglie.>

  <\attenzione|Elemento o sottoinsieme?>
    Con <math|A={3,\<ast\>,\<square\>}> sono vere <math|3\<in\>A> e
    <math|{3}\<in\>\<cal-P\>(A)>. È falsa <math|3\<in\>\<cal-P\>(A)>:
    <math|3> è un elemento di <math|A>, non un suo sottoinsieme. Infine
    <math|\<cal-P\>(\<varnothing\>)={\<varnothing\>}> ha un elemento.
  </attenzione>

  Ultima convenzione: alcuni autori mettono <math|0> in <math|\<bbb-N\>>,
  altri partono da <math|1>. Controlla sempre la convenzione del testo che
  usi: piccole differenze di notazione producono errori veri.

  <\officina|1. Leggere e negare un enunciato>
    Davanti a una frase, prima di dimostrarla, riscrivila in simboli e
    guardane la forma.

    <\itemize>
      <item><em|Per ogni <math|x>, <math|P(x)>.> Prendi un <math|x>
      qualsiasi, che non scegli tu, e ragiona solo con ciò che sai di lui.
      Per smentirla basta un controesempio.

      <item><em|Esiste <math|x> con <math|P(x)>.> Basta esibirne uno. Per
      smentirla devi mostrare che <em|ogni> <math|x> fallisce.

      <item><em|<math|\<forall\>x \<exists\>y>.> È un gioco: l'avversario
      sceglie <math|x>, tu rispondi con <math|y>, e puoi usare <math|x> per
      scegliere. Con <math|\<exists\>y \<forall\>x> devi rispondere prima di
      vedere la domanda.

      <item><em|Negare.> Scambia <math|\<forall\>> e <math|\<exists\>> da
      sinistra a destra e nega il predicato; <math|\<neg\>(P\<Rightarrow\>Q)>
      è <math|P\<wedge\>\<neg\>Q>.
    </itemize>

    Questo gioco di sfida e risposta tornerà nel supremo (capitolo 4) e in
    tutte le definizioni di limite.
  </officina>

  <\verifica|1>
    <strong|(a)> Nega <math|\<forall\>x\<in\>\<bbb-R\>
    \<exists\>n\<in\>\<bbb-N\>, n\<gtr\>x>. <strong|(b)> Vero o falso:
    <math|\<varnothing\>\<in\>{\<varnothing\>}>,
    <math|\<varnothing\>\<subseteq\>{\<varnothing\>}>,
    <math|{\<varnothing\>}\<subseteq\>\<varnothing\>>. <strong|(c)> Quanti
    elementi ha <math|\<cal-P\>(\<cal-P\>(\<varnothing\>))>?
  </verifica>

  <chapter|Funzioni>

  <\inbreve>
    Una funzione è più di una formula: è un insieme di partenza, un insieme
    di arrivo e una regola che manda ogni elemento del primo in un solo
    elemento del secondo. In questo capitolo impariamo a dire quando una
    funzione si può invertire, e perché la risposta dipende dagli insiemi
    scelti e non solo dalla formula.
  </inbreve>

  <section|Frecce e grafici>

  Una funzione <math|f:A\<rightarrow\>B> è fatta di tre cose: l'insieme di
  partenza <math|A>, l'insieme di arrivo <math|B>, e una legge che a ogni
  <math|a\<in\>A> associa <em|uno e un solo> <math|b=f(a)\<in\>B>. Disegnata
  con le frecce: da ogni punto di <math|A> parte esattamente una freccia, che
  arriva in <math|B>. Non si chiede che ogni punto di <math|B> sia colpito,
  né che punti diversi abbiano frecce verso punti diversi.

  L'<strong|immagine> è l'insieme dei punti effettivamente colpiti,
  <math|f(A)={f(a):a\<in\>A}>; può essere più piccola dell'insieme di arrivo.
  Il termine \Scodominio\T si usa talvolta per l'uno e talvolta per l'altro:
  meglio dire esplicitamente insieme di arrivo oppure immagine.

  La parola \Slegge\T è vaga. Per renderla precisa si usa il
  <strong|grafico>:

  <\equation*>
    <math-up|Graf>(f)={(a,b)\<in\>A\<times\>B:b=f(a)}.
  </equation*>

  Una funzione è allora un sottoinsieme <math|G\<subseteq\>A\<times\>B> tale
  che

  <\equation*>
    \<forall\>a\<in\>A \<exists\>!b\<in\>B <text| tale che >(a,b)\<in\>G,
  </equation*>

  dove <math|\<exists\>!> significa \Sesiste uno e un solo\T. In parole: per
  ogni <math|a> c'è almeno una coppia del grafico con prima componente
  <math|a>, e ce n'è al massimo una.

  <section|Iniettive, suriettive, biiettive>

  <\itemize>
    <item><math|f> è <strong|iniettiva> se elementi diversi hanno immagini
    diverse: <math|a<rsub|1>\<neq\>a<rsub|2>\<Rightarrow\>f(a<rsub|1>)\<neq\>f(a<rsub|2>)>.
    Per contrapposizione, equivale a <math|f(a<rsub|1>)=f(a<rsub|2>)\<Rightarrow\>a<rsub|1>=a<rsub|2>>:
    due frecce non arrivano mai nello stesso punto.

    <item><math|f> è <strong|suriettiva> se <math|\<forall\>b\<in\>B
    \<exists\>a\<in\>A <text| tale che >f(a)=b>, cioè <math|f(A)=B>: ogni
    punto di arrivo riceve almeno una freccia.

    <item><math|f> è <strong|biiettiva> se è iniettiva e suriettiva: ogni
    punto di <math|B> riceve esattamente una freccia.
  </itemize>

  Per smentire l'iniettività bastano due punti diversi con la stessa
  immagine; per smentire la suriettività basta un <math|b> che nessuno
  colpisce.

  <figura|<image|analisi-1-assets/funzioni.pdf|160.0mm|47.5mm||>|Da ogni
  punto di <math|A> parte una sola freccia. Iniettiva: niente collisioni.
  Suriettiva: nessun punto di <math|B> resta scoperto. Biiettiva: le frecce
  accoppiano perfettamente i due insiemi.>

  <\guidato|La stessa formula, quattro funzioni>
    Studia <math|f(x)=x<rsup|2>> con quattro scelte di partenza e arrivo.

    <em|Idea.> Iniettività e suriettività sono proprietà della funzione
    completa, non della formula: cambiano se cambiamo gli insiemi.

    <em|Conto.> <math|\<bbb-R\>\<rightarrow\>\<bbb-R\>>: non iniettiva
    (<math|f(1)=1=f(-1)>), non suriettiva (nessun negativo è un quadrato).

    <math|\<bbb-R\>\<rightarrow\>[0,+\<infty\>)>: ancora non iniettiva, ma
    suriettiva, perché ogni <math|y\<geq\>0> è il quadrato di
    <math|<sqrt|y>>.

    <math|[0,+\<infty\>)\<rightarrow\>\<bbb-R\>>: iniettiva (due numeri non
    negativi diversi hanno quadrati diversi), non suriettiva.

    <math|[0,+\<infty\>)\<rightarrow\>[0,+\<infty\>)>: iniettiva e
    suriettiva, quindi biiettiva.

    <em|Controllo.> Guarda la figura: togliere il ramo sinistro elimina le
    collisioni, restringere l'arrivo elimina i punti scoperti.
  </guidato>

  <figura|<image|analisi-1-assets/quadrato4.pdf|160.0mm|53.8mm||>|La parabola
  <math|y=x<rsup|2>> con quattro scelte di partenza (in grassetto sull'asse
  <math|x>) e di arrivo (in grassetto sull'asse <math|y>). Solo l'ultima è
  biiettiva.>

  <section|Composizione>

  Se <math|f:A\<rightarrow\>B> e <math|g:B\<rightarrow\>C>, la
  <strong|composta> <math|g\<circ\>f:A\<rightarrow\>C> è
  <math|(g\<circ\>f)(a)=g(f(a))>: <em|prima <math|f>, poi <math|g>>. Si legge
  da destra a sinistra:

  <\equation*>
    a\<longmapsto\><rsup|f>f(a)\<longmapsto\><rsup|g>g(f(a)).
  </equation*>

  Con i grafici <math|F\<subseteq\>A\<times\>B> e
  <math|G\<subseteq\>B\<times\>C>, il grafico della composta è

  <\equation*>
    H={(a,c)\<in\>A\<times\>C:\<exists\>b\<in\>B <text| tale che
    >(a,b)\<in\>F <text| e >(b,c)\<in\>G}:
  </equation*>

  la coppia <math|(a,c)> sta in <math|H> se c'è una tappa intermedia
  <math|b=f(a)> con <math|c=g(b)>.

  Quattro fatti, ognuno con una dimostrazione di due righe:

  <\enumerate>
    <item><em|Iniettive si compongono in iniettive.> Se
    <math|a<rsub|1>\<neq\>a<rsub|2>>, allora
    <math|f(a<rsub|1>)\<neq\>f(a<rsub|2>)> perché <math|f> è iniettiva, e
    quindi <math|g(f(a<rsub|1>))\<neq\>g(f(a<rsub|2>))> perché lo è <math|g>.

    <item><em|Suriettive si compongono in suriettive.> Dato <math|c\<in\>C>,
    troviamo <math|b> con <math|g(b)=c>, poi <math|a> con <math|f(a)=b>:
    allora <math|(g\<circ\>f)(a)=c>.

    <item><em|Se <math|g\<circ\>f> è iniettiva, allora <math|f> è iniettiva.>
    Per assurdo: se <math|f(a<rsub|1>)=f(a<rsub|2>)> con
    <math|a<rsub|1>\<neq\>a<rsub|2>>, applicando <math|g> si ottiene
    <math|(g\<circ\>f)(a<rsub|1>)=(g\<circ\>f)(a<rsub|2>)>. <em|Ciò che
    <math|f> unisce, <math|g> non può separare.>

    <item><em|Se <math|g\<circ\>f> è suriettiva, allora <math|g> è
    suriettiva.> Dato <math|c\<in\>C>, esiste <math|a> con <math|g(f(a))=c>;
    allora <math|b=f(a)> verifica <math|g(b)=c>. L'ultimo passo è sempre
    <math|g>: quello che <math|g> non raggiunge, la composta non lo
    raggiunge.
  </enumerate>

  <section|Funzioni inverse>

  <math|f:A\<rightarrow\>B> è <strong|invertibile> se esiste
  <math|g:B\<rightarrow\>A> con

  <\equation*>
    g(f(a))=a<space|1em>\<forall\>a\<in\>A,<space|3em>f(g(b))=b<space|1em>\<forall\>b\<in\>B,
  </equation*>

  cioè <math|f<rsup|-1>\<circ\>f=<math-up|id><rsub|A>> e
  <math|f\<circ\>f<rsup|-1>=<math-up|id><rsub|B>>. L'inversa
  <math|f<rsup|-1>> \Sgira le frecce\T.

  <\equation*>
    f <text| è invertibile><space|1em>\<Leftrightarrow\><space|1em>f <text| è
    biiettiva.>
  </equation*>

  Perché? Se <math|f> non fosse iniettiva, due frecce arriverebbero nello
  stesso <math|b>; girandole, da <math|b> partirebbero due frecce, e non
  avremmo una funzione. Se <math|f> non fosse suriettiva, un <math|b> non
  colpito non saprebbe dove andare. Viceversa, se ogni <math|b> riceve
  esattamente una freccia, girarle dà proprio una funzione.

  <section|Immagine e controimmagine>

  Per <math|E\<subseteq\>A> l'<strong|immagine> è
  <math|f(E)={f(a):a\<in\>E}={b\<in\>B:\<exists\>a\<in\>E, f(a)=b}>: gli
  arrivi delle frecce che partono da <math|E>. Per <math|D\<subseteq\>B> la
  <strong|controimmagine> è

  <\equation*>
    f<rsup|-1>(D)={a\<in\>A:f(a)\<in\>D}:
  </equation*>

  le partenze delle frecce che arrivano in <math|D>. Esiste sempre, anche
  quando <math|f> non è invertibile: il simbolo <math|f<rsup|-1>(D)> qui non
  indica la funzione inversa. E <math|1/f> è ancora un'altra cosa, il
  reciproco. Il significato si deduce dal contesto. Vedremo un esempio
  grafico nel capitolo 5.

  <\attenzione|\SÈ iniettiva?\T non ha risposta senza gli insiemi>
    Chiedere se \S<math|x<rsup|2>>\T è iniettiva o suriettiva non ha senso
    finché non si dichiarano partenza e arrivo. Prima di rispondere, scrivi
    sempre <math|f:A\<rightarrow\>B> per intero.
  </attenzione>

  <\officina|2. Dimostrare iniettività e suriettività>
    Le due definizioni hanno forme diverse e chiedono lavori diversi.

    <\itemize>
      <item><em|Iniettiva.> Forma <math|\<forall\>a<rsub|1>,a<rsub|2>,
      f(a<rsub|1>)=f(a<rsub|2>)\<Rightarrow\>a<rsub|1>=a<rsub|2>>. Prendi due
      elementi qualsiasi con la stessa immagine e deduci che sono uguali.
      Spesso conviene la contrapposizione: elementi diversi hanno immagini
      diverse.

      <item><em|Suriettiva.> Forma <math|\<forall\>b \<exists\>a>. Prendi un
      <math|b> qualsiasi e <em|costruisci> un <math|a> che lo colpisce
      (risolvi <math|f(a)=b>).

      <item><em|Smentire.> Basta un esempio: due punti che collidono, oppure
      un <math|b> scoperto.

      <item><em|Per assurdo.> Per provare \S<math|g\<circ\>f> iniettiva
      <math|\<Rightarrow\>f> iniettiva\T, supponi la tesi falsa e trova una
      collisione della composta.
    </itemize>
  </officina>

  <\verifica|2>
    <strong|(a)> Trova <math|f:A\<rightarrow\>B> e <math|g:B\<rightarrow\>C>
    con <math|g\<circ\>f> iniettiva ma <math|g> non iniettiva. <strong|(b)>
    <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>>, <math|f(x)=2x+1>, è biiettiva?
    Qual è l'inversa?
  </verifica>

  <chapter|Il principio di induzione>

  <\inbreve>
    Come si dimostra una frase per <em|tutti> i numeri naturali, che sono
    infiniti? Con l'induzione: una verifica di partenza e un meccanismo che
    trasmette la verità da un numero al successivo. Impareremo a scriverla
    bene, a farla partire dal punto giusto e, quando il passo non funziona, a
    rafforzare l'enunciato.
  </inbreve>

  <section|Base e passo>

  Sia <math|P(n)> un predicato con <math|n\<in\>\<bbb-N\>>. Se valgono

  <\enumerate>
    <item><strong|passo base>: <math|P(0)> è vera;

    <item><strong|passo induttivo>: <math|\<forall\>n\<in\>\<bbb-N\>,
    P(n)\<Rightarrow\>P(n+1)>,
  </enumerate>

  allora <math|P(n)> è vera per ogni <math|n\<in\>\<bbb-N\>>. Nel passo
  induttivo supponiamo vera <math|P(n)> (l'<strong|ipotesi induttiva>) e
  dimostriamo <math|P(n+1)> (la <strong|tesi induttiva>).

  <figura|<image|analisi-1-assets/domino.pdf|155.0mm|50.0mm||>|Il passo base
  fa cadere la prima tessera; il passo induttivo garantisce che ogni tessera,
  cadendo, abbatte la successiva. <math|P(0)\<Rightarrow\>P(1)\<Rightarrow\>P(2)\<Rightarrow\>\<cdots\>>>

  L'immagine del domino spiega il meccanismo; una dimostrazione rigorosa
  scrive esplicitamente base e passo.

  <\guidato|La somma dei quadrati>
    Dimostra che, per ogni <math|n\<in\>\<bbb-N\>>,

    <\equation*>
      <big|sum><rsub|k=0><rsup|n>k<rsup|2>=0<rsup|2>+1<rsup|2>+\<cdots\>+n<rsup|2>=<frac|n(n+1)(2n+1)|6>.
    </equation*>

    <em|Base.> Per <math|n=0> a sinistra c'è <math|0>, a destra <math|0>.
    (Per sicurezza: con <math|n=1> viene <math|1=<frac|1\<cdot\>2\<cdot\>3|6>>.)

    <em|Passo.> Supponiamo la formula vera per <math|n>. Separiamo l'ultimo
    termine della somma fino a <math|n+1> e usiamo l'ipotesi:

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|k=0><rsup|n+1>k<rsup|2>>|<cell|=>|<cell|<big|sum><rsub|k=0><rsup|n>k<rsup|2>+(n+1)<rsup|2>=<frac|n(n+1)(2n+1)|6>+(n+1)<rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<frac|(n+1)(n(2n+1)+6(n+1))|6>=<frac|(n+1)(2n<rsup|2>+7n+6)|6>=<frac|(n+1)(n+2)(2n+3)|6>.>>>>
    </eqnarray*>

    <em|Controllo.> L'ultimo passaggio è <math|(n+2)(2n+3)=2n<rsup|2>+7n+6>,
    ed è proprio la formula con <math|n+1> al posto di <math|n>. È una
    <em|catena di uguaglianze>: ogni espressione è uguale alla successiva,
    quindi la prima è uguale all'ultima.
  </guidato>

  L'induzione verifica una formula senza spiegare da dove viene: la formula
  si indovina guardando i primi casi, l'induzione la certifica.

  <section|La somma geometrica>

  Per <math|a\<neq\>1> vale

  <\equation*>
    1+a+a<rsup|2>+\<cdots\>+a<rsup|n>=<big|sum><rsub|k=0><rsup|n>a<rsup|k>=<frac|a<rsup|n+1>-1|a-1>.
  </equation*>

  Base: <math|a<rsup|0>=1=<frac|a-1|a-1>>. Passo, separando l'ultimo termine:

  <\equation*>
    <big|sum><rsub|k=0><rsup|n+1>a<rsup|k>=<frac|a<rsup|n+1>-1|a-1>+a<rsup|n+1>=<frac|a<rsup|n+1>-1+(a-1)a<rsup|n+1>|a-1>=<frac|a<rsup|n+2>-1|a-1>.
  </equation*>

  <\attenzione|Il denominatore che si annulla>
    La formula richiede <math|a\<neq\>1>. Per <math|a=1> la somma è
    <math|1+1+\<cdots\>+1=n+1>: gli addendi vanno da <math|0> a <math|n>,
    quindi sono <math|n+1>, non <math|n>. Ogni volta che compare un
    denominatore che può annullarsi, fermati e controlla.
  </attenzione>

  <section|La disuguaglianza di Bernoulli>

  Per ogni <math|n\<in\>\<bbb-N\>> e ogni <math|x\<geq\>-1>:

  <\equation*>
    (1+x)<rsup|n>\<geq\>1+n*x.
  </equation*>

  La frase ha due parametri. Per fare induzione su <math|n> quantifichiamo
  prima <math|x>: <math|P(n):\<forall\>x\<geq\>-1,
  (1+x)<rsup|n>\<geq\>1+n*x>.

  Base: <math|(1+x)<rsup|0>=1\<geq\>1=1+0\<cdot\>x>. Passo:

  <\eqnarray*>
    <tformat|<table|<row|<cell|(1+x)<rsup|n+1>>|<cell|=>|<cell|(1+x)<rsup|n>(1+x)\<geq\>(1+n*x)(1+x)>>|<row|<cell|>|<cell|=>|<cell|1+(n+1)x+n*x<rsup|2>\<geq\>1+(n+1)x.>>>>
  </eqnarray*>

  L'ultimo passaggio usa <math|n*x<rsup|2>\<geq\>0>. Il primo usa l'ipotesi
  <math|x\<geq\>-1>, cioè <math|1+x\<geq\>0>: si moltiplica una
  disuguaglianza per una quantità <em|non negativa>, e il verso resta. Con un
  fattore negativo il verso si girerebbe e la catena crollerebbe. Per
  <math|x=-1> il fattore è nullo e tutto funziona: <math|0\<geq\>1-n> per
  <math|n\<geq\>1>.

  Bernoulli sembra un esercizio, ma è uno degli attrezzi più usati del libro:
  lo ritroveremo per il numero <math|e> e per i limiti di <math|a<rsup|n>> e
  <math|<sqrt|a|n>>.

  <section|Partire dal numero giusto>

  Per quali <math|n> vale <math|n!\<geq\>2<rsup|n>>? (Ricorda
  <math|n!=1\<cdot\>2\<cdots\>n> e <math|0!=1>.) Esploriamo:

  <\center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-lsep|0.8em>|<cwith|1|-1|1|-1|cell-rsep|0.8em>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|1|-1|1|1|cell-rborder|0.6pt>|<table|<row|<cell|<math|n>>|<cell|0>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>>|<row|<cell|<math|n!>>|<cell|1>|<cell|1>|<cell|2>|<cell|6>|<cell|24>|<cell|120>>|<row|<cell|<math|2<rsup|n>>>|<cell|1>|<cell|2>|<cell|4>|<cell|8>|<cell|16>|<cell|32>>|<row|<cell|<math|n!\<geq\>2<rsup|n>?>>|<cell|sì>|<cell|no>|<cell|no>|<cell|no>|<cell|sì>|<cell|sì>>>>>
  </center>

  La frase corretta è: <math|n!\<geq\>2<rsup|n>> per <math|n=0> e per ogni
  <math|n\<geq\>4>. Il caso <math|0> si verifica a mano. Per gli altri: base
  <math|4!=24\<geq\>16=2<rsup|4>>; passo, per <math|n\<geq\>4>,

  <\equation*>
    (n+1)!=(n+1)n!\<geq\>(n+1)2<rsup|n>\<geq\>2\<cdot\>2<rsup|n>=2<rsup|n+1>.
  </equation*>

  Abbiamo moltiplicato l'ipotesi per <math|n+1\<gtr\>0> e poi usato
  <math|n+1\<geq\>2>.

  <\immagine|Le tessere incollate>
    Il meccanismo <math|P(n)\<Rightarrow\>P(n+1)> funziona già da <math|n=1>,
    ma le tessere <math|1>, <math|2>, <math|3> sono incollate al tavolo: sono
    false, e nessuno le abbatte. La prima tessera utile che cade è la
    <math|4>, e da lì cadono tutte le altre. Un'induzione può partire da
    qualunque <math|n<rsub|0>>: basta che la base sia lì.
  </immagine>

  <section|Dimostrare di più per fare meno fatica>

  Vogliamo provare che <math|<big|sum><rsub|k=1><rsup|n><frac|1|k(k+1)>\<leq\>1>
  per ogni <math|n\<geq\>1>. L'induzione diretta si inceppa: dall'ipotesi
  \Ssomma <math|\<leq\>1>\T e aggiungendo un termine positivo si ottiene solo
  \Ssomma <math|\<leq\>1+<frac|1|(n+1)(n+2)>>\T, che non basta.

  Calcoliamo i primi casi: <math|<frac|1|2>, <frac|2|3>, <frac|3|4>,
  <frac|4|5>>. Si riconosce la formula

  <\equation*>
    <big|sum><rsub|k=1><rsup|n><frac|1|k(k+1)>=<frac|n|n+1>,
  </equation*>

  che è <em|più forte> della disuguaglianza (perché
  <math|<frac|n|n+1>\<leq\>1>) eppure si dimostra più facilmente. Base:
  <math|<frac|1|2>=<frac|1|2>>. Passo:

  <\equation*>
    <frac|n|n+1>+<frac|1|(n+1)(n+2)>=<frac|n(n+2)+1|(n+1)(n+2)>=<frac|(n+1)<rsup|2>|(n+1)(n+2)>=<frac|n+1|n+2>.
  </equation*>

  <figura|<image|analisi-1-assets/somme.pdf|150.0mm|26.2mm||>|Le somme
  parziali <math|<frac|1|2>, <frac|2|3>, <frac|3|4>, \<ldots\>> si avvicinano
  a <math|1> senza raggiungerlo: a ogni passo manca esattamente
  <math|<frac|1|n+1>>.>

  <\officina|3. Come si scrive un'induzione>
    <\enumerate>
      <item>Scrivi per esteso <math|P(n)>. Se ci sono altri parametri,
      quantificali dentro <math|P(n)> (come <math|x> in Bernoulli).

      <item><em|Base:> verifica diretta per il primo <math|n> in cui la frase
      deve valere.

      <item><em|Passo:> scrivi prima la tesi <math|P(n+1)>, poi cerca dentro
      di essa un pezzo che assomigli a <math|P(n)>: di solito si separa
      l'ultimo termine.

      <item>Usa l'ipotesi induttiva da qualche parte; se non la usi,
      l'induzione non serviva.

      <item>Ogni volta che moltiplichi una disuguaglianza, controlla il segno
      del fattore.
    </enumerate>
  </officina>

  <\officina|4. Rafforzare l'enunciato>
    A volte l'enunciato richiesto è troppo debole per trasmettersi da
    <math|n> a <math|n+1>: una disuguaglianza \Sperde informazione\T a ogni
    passo. Allora conviene dimostrare una frase più forte che la implica, per
    esempio un'uguaglianza esatta trovata guardando i primi casi. Sembra più
    difficile, ma ha la forma giusta per l'induzione. È uno dei punti in cui
    dimostrare richiede creatività e non solo lo schema base\<#2013\>passo.
  </officina>

  <\verifica|3>
    <strong|(a)> Dove fallisce l'induzione se si prova
    <math|n!\<geq\>2<rsup|n>> partendo da <math|n=1>? <strong|(b)> Dimostra
    <math|<big|sum><rsub|k=1><rsup|n>(2k-1)=n<rsup|2>>. <strong|(c)> Perché
    in Bernoulli serve <math|x\<geq\>-1>?
  </verifica>

  <chapter|I numeri reali>

  <\inbreve>
    Che cosa distingue <math|\<bbb-R\>> da <math|\<bbb-Q\>>? Le operazioni e
    l'ordine si comportano allo stesso modo nei due insiemi; la differenza è
    una sola proprietà, la completezza. È il punto in cui nasce l'analisi: da
    lì vengono le radici, il supremo e, più avanti, i limiti.
  </inbreve>

  <section|Perché tanti insiemi di numeri>

  <math|\<bbb-N\>\<subseteq\>\<bbb-Z\>\<subseteq\>\<bbb-Q\>\<subseteq\>\<bbb-R\>\<subseteq\>\<bbb-C\>>.
  In modo intuitivo, ogni passo serve a fare un'operazione prima impossibile:
  in <math|\<bbb-N\>> non sempre si sottrae, e nascono gli interi; in
  <math|\<bbb-Z\>> non sempre si divide, e nascono i razionali
  <math|<frac|a|b>> (<math|a,b\<in\>\<bbb-Z\>>, <math|b\<neq\>0>, con
  <math|<frac|2|4>=<frac|1|2>=<frac|3|6>>); in <math|\<bbb-Q\>> nessun numero
  ha quadrato <math|2>, e nascono i reali; in <math|\<bbb-R\>> nessuno ha
  quadrato <math|-1>, e nascono i complessi <math|a+i*b>, con
  <math|i<rsup|2>=-1>. Questo racconto non è una costruzione formale. I
  complessi saranno studiati in altri corsi; il docente osserva però che la
  strada più breve fra due affermazioni reali passa spesso per i complessi.

  <section|Gli assiomi di campo e di ordine>

  Una descrizione <em|assiomatica> non costruisce gli oggetti: dice quali
  sono, quali operazioni e relazioni hanno, e quali proprietà soddisfano. I
  reali sono una struttura <math|(\<bbb-R\>,+,\<cdot\>,\<leq\>)>. Il metodo
  chiede di assumere poche proprietà e dimostrare tutte le altre.

  <strong|Assiomi algebrici.> Somma e prodotto sono funzioni
  <math|\<bbb-R\>\<times\>\<bbb-R\>\<rightarrow\>\<bbb-R\>>. Per ogni
  <math|a,b,c>:

  <\itemize>
    <item>somma: associativa, commutativa, con neutro <math|0> (<math|a+0=a>)
    e opposto <math|-a> (<math|a+(-a)=0>);

    <item>prodotto: associativo, commutativo, con neutro <math|1> e, per
    <math|a\<neq\>0>, inverso <math|a<rsup|-1>=<frac|1|a>>
    (<math|a\<cdot\>a<rsup|-1>=1>);

    <item>distributiva: <math|a(b+c)=a*b+a*c>.
  </itemize>

  Sono nove proprietà, e fanno di <math|\<bbb-R\>> un <strong|campo>.
  Sottrazione e divisione non sono operazioni nuove: <math|a-b=a+(-b)> e
  <math|<frac|a|b>=a\<cdot\>b<rsup|-1>>.

  <strong|Assiomi d'ordine.> <math|\<leq\>> è un ordine totale: per ogni
  <math|x,y,z>

  <\itemize>
    <item><em|totalità>: <math|x\<leq\>y> oppure <math|y\<leq\>x> (non tutti
    gli ordini sono così: due insiemi possono non essere contenuti l'uno
    nell'altro);

    <item><em|riflessività> <math|x\<leq\>x>; <em|antisimmetria>
    <math|x\<leq\>y\<wedge\>y\<leq\>x\<Rightarrow\>x=y>; <em|transitività>
    <math|x\<leq\>y\<wedge\>y\<leq\>z\<Rightarrow\>x\<leq\>z>, che regge le
    catene di disuguaglianze.
  </itemize>

  E l'ordine è compatibile con le operazioni:

  <\equation*>
    x\<leq\>y\<Rightarrow\>x+z\<leq\>y+z,<space|3em>x\<geq\>0\<wedge\>y\<geq\>0\<Rightarrow\>x*y\<geq\>0.
  </equation*>

  Da qui segue, per esempio: se <math|x\<leq\>y> e <math|z\<geq\>0>, allora
  <math|x*z\<leq\>y*z>. Infatti <math|y-x\<geq\>0> (si somma <math|-x>),
  quindi <math|(y-x)z\<geq\>0>, cioè <math|y*z-x*z\<geq\>0>, e sommando
  <math|x*z> si ottiene <math|x*z\<leq\>y*z>. Se invece <math|z\<leq\>0> il
  verso si inverte: <math|x*z\<geq\>y*z>.

  <\attenzione|Assioma o teorema?>
    Molte regole che usiamo ogni giorno non sono assiomi ma teoremi:
    <math|0\<cdot\>x=0>, <math|(-1)x=-x>, <math|(-x)(-y)=x*y>,
    <math|-(-x)=x>, l'unicità di neutri e inversi, perfino <math|1\<gtr\>0>.
    Sono tutte corrette, ma vanno dimostrate a partire dagli assiomi.
  </attenzione>

  Tutto quello che abbiamo detto finora vale anche in <math|\<bbb-Q\>>, che è
  un campo ordinato. Nulla, ancora, distingue <math|\<bbb-R\>> da
  <math|\<bbb-Q\>>.

  <section|La completezza>

  Siano <math|A,B\<subseteq\>\<bbb-R\>> non vuoti. Diciamo che <math|A> sta
  <strong|a sinistra> di <math|B> se <math|\<forall\>a\<in\>A
  \<forall\>b\<in\>B, a\<leq\>b>.

  <strong|Assioma di completezza (o di continuità).> Se <math|A> sta a
  sinistra di <math|B>, esiste <math|c\<in\>\<bbb-R\>> con

  <\equation*>
    a\<leq\>c\<leq\>b<space|2em>\<forall\>a\<in\>A, \<forall\>b\<in\>B.
  </equation*>

  Il punto <math|c> può stare in <math|A>, in <math|B>, in entrambi o in
  nessuno; non è detto che sia unico. Se <math|A> e <math|B> si toccano, come
  <math|(-\<infty\>,1]> e <math|[1,+\<infty\>)>, c'è un solo punto comune e
  quello è il separatore; se fra i due resta un intervallo, i separatori sono
  molti.

  <figura|<image|analisi-1-assets/separazione.pdf|155.0mm|37.5mm||>|Tutto
  <math|A> sta a sinistra di tutto <math|B>: la completezza garantisce un
  punto <math|c> nel mezzo. In <math|\<bbb-Q\>>, con i due insiemi definiti
  da <math|x<rsup|2>\<leq\>2> e <math|x<rsup|2>\<geq\>2>, quel punto manca: è
  il \Sbuco\T <math|<sqrt|2>>.>

  <\guidato|Il buco di \<bbb-Q\>>
    Mostra che la completezza è falsa in <math|\<bbb-Q\>>.

    <em|Idea.> Cerchiamo due insiemi di razionali, uno a sinistra dell'altro,
    separati solo da <math|<sqrt|2>>.

    <em|Conto.> Siano <math|A={x\<in\>\<bbb-Q\>:x\<geq\>0,
    x<rsup|2>\<leq\>2}> e <math|B={x\<in\>\<bbb-Q\>:x\<geq\>0,
    x<rsup|2>\<geq\>2}>. Fra numeri non negativi il quadrato cresce col
    numero, quindi <math|A> sta a sinistra di <math|B>. Un separatore
    razionale <math|c> dovrebbe avere <math|c<rsup|2>=2>: se fosse
    <math|c<rsup|2>\<less\>2> starebbe ancora dentro <math|A>, se fosse
    <math|c<rsup|2>\<gtr\>2> starebbe dentro <math|B>, e non separerebbe.

    Ma <math|c<rsup|2>=2> non ha soluzioni razionali. Se <math|c=<frac|p|q>>
    ridotta ai minimi termini, da <math|p<rsup|2>=2q<rsup|2>> segue che
    <math|p> è pari; con <math|p=2k> si ha <math|q<rsup|2>=2k<rsup|2>>,
    quindi anche <math|q> è pari: assurdo.

    <em|Controllo.> In <math|\<bbb-R\>> l'assioma fornisce il separatore, che
    ha quadrato <math|2>: lo chiamiamo <math|<sqrt|2>>. La completezza
    riempie i buchi di <math|\<bbb-Q\>>.
  </guidato>

  <strong|Il teorema misterioso.> Esiste una struttura
  <math|(\<bbb-R\>,+,\<cdot\>,\<leq\>)> che soddisfa gli assiomi di campo
  ordinato e di completezza, ed è unica a meno di isomorfismo. \SEsiste\T
  dice che gli assiomi non sono contraddittori. \SUnica\T dice che due
  strutture che li soddisfano, <math|(\<bbb-R\>,+,\<cdot\>,\<leq\>)> e
  <math|(\<bbb-R\><rprime|'>,\<#2295\>,\<#2297\>,\<#227C\>)>, sono
  indistinguibili: c'è una biiezione <math|\<varphi\>:\<bbb-R\>\<rightarrow\>\<bbb-R\><rprime|'>>
  che traduce tutto,

  <\equation*>
    \<varphi\>(a+b)=\<varphi\>(a)\<#2295\>\<varphi\>(b),<space|1.5em>\<varphi\>(a*b)=\<varphi\>(a)\<#2297\>\<varphi\>(b),<space|1.5em>a\<leq\>b\<Leftrightarrow\>\<varphi\>(a)\<#227C\>\<varphi\>(b).
  </equation*>

  Sommare e poi tradurre dà lo stesso risultato che tradurre e poi sommare.
  Di campi ordinati ce ne sono molti; la completezza li rende unici.

  Dentro <math|\<bbb-R\>> troviamo i naturali: <math|2=1+1>, <math|3=1+1+1>,
  e così via. Che siano tutti distinti non è ovvio: negli interi modulo
  <math|7> sommando sette volte <math|1> si torna a <math|0>. In
  <math|\<bbb-R\>> lo garantiscono l'ordine e la completezza.

  <section|Maggioranti, massimo, supremo>

  Sia <math|A\<subseteq\>\<bbb-R\>> non vuoto. <math|M> è un
  <strong|maggiorante> di <math|A> se <math|\<forall\>a\<in\>A, a\<leq\>M>;
  <math|m> è un <strong|minorante> se <math|\<forall\>a\<in\>A, m\<leq\>a>. I
  maggioranti di solito sono tanti (ogni numero più grande di un maggiorante
  lo è) e non devono stare in <math|A>; li raccogliamo in
  <math|<math-up|Mag>(A)>.

  Il <strong|massimo> è un maggiorante che sta in <math|A>; il
  <strong|minimo> è un minorante che sta in <math|A>. Se il massimo esiste è
  unico: se <math|M<rsub|1>> e <math|M<rsub|2>> sono massimi,
  <math|M<rsub|2>\<leq\>M<rsub|1>> e <math|M<rsub|1>\<leq\>M<rsub|2>>, e per
  antisimmetria coincidono. Ma può non esistere: <math|\<bbb-R\>> non ha
  maggioranti; <math|(0,1)> ha maggioranti ma non ha massimo né minimo.

  <math|A> è <strong|limitato superiormente> se ha almeno un maggiorante,
  <strong|inferiormente> se ha un minorante, <strong|limitato> se ha
  entrambi; equivalentemente <math|\<exists\>L, \<forall\>a\<in\>A,
  \|a\|\<leq\>L>, perché <math|\|a\|\<leq\>L> vuol dire
  <math|-L\<leq\>a\<leq\>L>.

  Il <strong|supremo> è il più piccolo dei maggioranti: se <math|A> è
  limitato superiormente, <math|sup A=min <math-up|Mag>(A)>; altrimenti si
  pone <math|sup A=+\<infty\>>. Simmetricamente l'<strong|estremo inferiore>
  è <math|inf A=max <math-up|Min>(A)>, il più grande dei minoranti, oppure
  <math|-\<infty\>>. Se il massimo esiste coincide con il supremo. Per
  <math|A=(0,1)>: i maggioranti sono i numeri <math|\<geq\>1>, quindi
  <math|sup A=1>; i minoranti sono i numeri <math|\<leq\>0>, quindi <math|inf
  A=0>; né l'uno né l'altro sta in <math|A>. Il supremo è il numero che
  \Svorrebbe essere\T il massimo.

  <strong|Teorema.> Ogni <math|A\<neq\>\<varnothing\>> limitato superiormente
  ha un supremo reale. È qui che serve la completezza: che l'insieme dei
  maggioranti abbia un minimo non è affatto ovvio.

  <em|Dimostrazione.> Sia <math|B=<math-up|Mag>(A)>, non vuoto. Per
  definizione <math|a\<leq\>b> per ogni <math|a\<in\>A>, <math|b\<in\>B>:
  <math|A> sta a sinistra di <math|B>. La completezza dà <math|c> con
  <math|a\<leq\>c\<leq\>b> per tutti. La prima disuguaglianza dice che
  <math|c> è un maggiorante, cioè <math|c\<in\>B>; la seconda dice che
  <math|c> è minore o uguale a ogni maggiorante. Dunque <math|c=min B=sup A>.
  Per l'estremo inferiore si scambiano maggioranti e minoranti, minimo e
  massimo, sinistra e destra. <math|\<square\>>

  <section|Il supremo con \<varepsilon\>>

  La definizione di supremo si riscrive con i quantificatori, ed è la forma
  che useremo sempre.

  <\itemize>
    <item><math|sup A=+\<infty\>> se e solo se
    <math|\<forall\>M\<in\>\<bbb-R\> \<exists\>a\<in\>A, a\<gtr\>M>. È la
    negazione di \S<math|\<exists\>M \<forall\>a, a\<leq\>M>\T. L'ordine
    conta: prima viene <math|M>, poi l'insieme risponde con un <math|a> più
    grande.

    <item><math|sup A=L\<in\>\<bbb-R\>> se e solo se

    <\enumerate>
      <item><math|L> è un maggiorante: <math|\<forall\>a\<in\>A, a\<leq\>L>;

      <item>nessun numero più piccolo lo è:
      <math|\<forall\>\<varepsilon\>\<gtr\>0 \<exists\>a\<in\>A,
      L-\<varepsilon\>\<less\>a\<leq\>L>.
    </enumerate>
  </itemize>

  Se per un certo <math|\<varepsilon\>\<gtr\>0> nessun elemento superasse
  <math|L-\<varepsilon\>>, allora <math|L-\<varepsilon\>> sarebbe un
  maggiorante più piccolo di <math|L>, contro la minimalità. Simmetricamente,
  <math|inf A=\<#2113\>\<in\>\<bbb-R\>> se <math|\<#2113\>> è un minorante e
  <math|\<forall\>\<varepsilon\>\<gtr\>0 \<exists\>a\<in\>A,
  a\<less\>\<#2113\>+\<varepsilon\>>; e <math|inf A=-\<infty\>> se
  <math|\<forall\>M \<exists\>a\<in\>A, a\<less\>M>.

  <figura|<image|analisi-1-assets/sup-eps.pdf|150.0mm|27.5mm||>|Il supremo
  <math|L> sta a destra di tutto l'insieme, ma ogni finestra
  <math|(L-\<varepsilon\>,L]>, per quanto stretta, contiene punti di
  <math|A>. È la prima comparsa di <math|\<varepsilon\>>, che regnerà nei
  limiti.>

  <\attenzione|L'insieme vuoto>
    Ogni numero è maggiorante e minorante di <math|\<varnothing\>> (la frase
    <math|\<forall\>a\<in\>\<varnothing\>, a\<leq\>M> è vera senza
    controesempi). Con le formule generali verrebbe <math|sup
    \<varnothing\>=-\<infty\>> e <math|inf \<varnothing\>=+\<infty\>>, una
    situazione paradossale: per questo supremo e inferiore si usano per
    insiemi non vuoti. Le stesse attenzioni servono altrove: c'è un'unica
    funzione <math|\<varnothing\>\<rightarrow\>A> per ogni <math|A>, e le
    funzioni da un insieme di <math|2> elementi a uno di <math|5> sono
    <math|5<rsup|2>=25>.
  </attenzione>

  <\guidato|I naturali non sono limitati>
    Dimostra che <math|sup \<bbb-N\>=+\<infty\>>, cioè
    <math|\<forall\>L\<in\>\<bbb-R\> \<exists\>n\<in\>\<bbb-N\>, n\<gtr\>L>.

    <em|Idea.> Per assurdo: se ci fosse un supremo reale, la
    caratterizzazione con <math|\<varepsilon\>> ci darebbe un naturale
    vicinissimo a lui, e il successivo lo supererebbe.

    <em|Conto.> Supponiamo <math|sup \<bbb-N\>=L\<in\>\<bbb-R\>>. Con
    <math|\<varepsilon\>=<frac|1|2>> esiste <math|n\<in\>\<bbb-N\>> con
    <math|L-<frac|1|2>\<less\>n\<leq\>L>. Sommando <math|1>:
    <math|n+1\<gtr\>L+<frac|1|2>\<gtr\>L>. Ma <math|n+1\<in\>\<bbb-N\>>, e
    supera il maggiorante <math|L>: contraddizione.

    <em|Controllo.> Il risultato non segue dai soli assiomi di campo
    ordinato: esistono campi ordinati in cui le somme <math|1+1+\<cdots\>+1>
    restano limitate. Serve la completezza. (Anche fatti come
    <math|-<frac|1|2>+1=<frac|1|2>\<gtr\> 0> andrebbero dedotti dagli assiomi
    in una fondazione completa.)
  </guidato>

  La completezza distingue <math|\<bbb-R\>> da <math|\<bbb-Q\>>, separa
  insiemi ordinati, dà supremi e inferiori, fa esistere <math|<sqrt|2>>, e
  sarà la base di tutti i limiti.

  <\officina|5. Il supremo: maggiorante e nessuno più in basso>
    Per dimostrare <math|sup A=L> servono sempre due lavori:

    <\enumerate>
      <item><em|<math|L> sta sopra>: prendi <math|a\<in\>A> qualsiasi e
      mostra <math|a\<leq\>L>.

      <item><em|Nessuno più in basso>: prendi <math|\<varepsilon\>\<gtr\>0>
      qualsiasi e trova un <math|a\<in\>A> con
      <math|a\<gtr\>L-\<varepsilon\>>. Puoi far dipendere <math|a> da
      <math|\<varepsilon\>>.
    </enumerate>

    Per l'unicità di un oggetto (massimo, supremo, limite) lo schema è:
    prendi due candidati e mostra che ciascuno è <math|\<leq\>> dell'altro;
    conclude l'antisimmetria.
  </officina>

  <\verifica|4>
    <strong|(a)> Trova sup, inf, max, min di
    <math|A={1-<frac|1|n>:n\<geq\>1}>. <strong|(b)> Nega \S<math|L> è un
    maggiorante di <math|A>\T. <strong|(c)> Perché nella dimostrazione di
    <math|sup \<bbb-N\>=+\<infty\>> va bene qualunque
    <math|\<varepsilon\>\<less\>1>?
  </verifica>

  <chapter|Funzioni reali e grafici>

  <\inbreve>
    Il grafico trasforma domande sulle funzioni in domande geometriche:
    quante volte una retta orizzontale taglia una curva, dove la curva sta
    sopra una retta, come si sposta un disegno. Impariamo a leggere simmetrie
    e monotonia, a costruire grafici nuovi da quelli noti, e a trasformare
    equazioni senza perdere o inventare soluzioni.
  </inbreve>

  <section|Simmetrie e periodicità>

  Una <strong|funzione reale> è <math|f:A\<rightarrow\>\<bbb-R\>> con
  <math|A\<subseteq\>\<bbb-R\>>. Il suo grafico è
  <math|<math-up|Graf>(f)={(x,f(x)):x\<in\>A}\<subseteq\>\<bbb-R\><rsup|2>>.

  <\itemize>
    <item><math|f> è <strong|pari> se <math|f(-x)=f(x)> per ogni <math|x>: il
    grafico è simmetrico rispetto all'asse <math|y>.

    <item><math|f> è <strong|dispari> se <math|f(-x)=-f(x)>: il grafico è
    simmetrico rispetto all'origine (ruotato di <math|180<rsup|\<circ\>>>
    resta uguale).

    <item><math|f> è <strong|periodica> di periodo <math|T\<gtr\>0> se
    <math|f(x+T)=f(x)> per ogni <math|x>: il grafico si ripete traslando un
    tratto lungo <math|T>.
  </itemize>

  Pari e dispari richiedono un dominio simmetrico: se <math|x> sta nel
  dominio, deve starci <math|-x>. Il periodo non è unico (se <math|T> lo è,
  lo sono <math|2T,3T,\<ldots\>>); quando esiste un periodo positivo più
  piccolo di tutti si chiama <strong|periodo minimo>. Se <math|f> e <math|g>
  hanno lo stesso periodo <math|T>, anche <math|f+g> lo ha; con periodi
  diversi la somma può non essere periodica (gli esempi rigorosi richiedono
  strumenti che non abbiamo ancora).

  Se conosciamo <math|f> solo per <math|x\<geq\>0>, possiamo completarla:
  riflettendo rispetto all'asse <math|y> (imponendo <math|f(-x)=f(x)>)
  otteniamo una funzione pari; riflettendo rispetto all'origine
  (<math|f(-x)=-f(x)>) una dispari.

  <figura|<image|analisi-1-assets/simmetrie.pdf|155.0mm|55.0mm||>|A sinistra
  una funzione pari: lo specchio è l'asse <math|y>. A destra una dispari: il
  punto <math|(x,f(x))> ha il gemello <math|(-x,-f(x))>.>

  Per verificare che <math|f> è pari o dispari basta un calcolo per ogni
  <math|x>. Per smentirlo basta un caso: se <math|f(1)\<neq\>f(-1)>, <math|f>
  non è pari; se anche <math|f(1)\<neq\>-f(-1)>, non è dispari. Esibire un
  periodo è facile; dimostrare che una funzione non è periodica di solito è
  più difficile.

  <section|Monotonia>

  Per ogni <math|x\<less\>y> del dominio, <math|f> è

  <\itemize>
    <item><strong|debolmente crescente> se <math|f(x)\<leq\>f(y)>;
    <strong|strettamente crescente> se <math|f(x)\<less\>f(y)>;

    <item><strong|debolmente decrescente> se <math|f(x)\<geq\>f(y)>;
    <strong|strettamente decrescente> se <math|f(x)\<gtr\>f(y)>.
  </itemize>

  \SMonotona\T significa una delle quattro; quando serve, dì quale. Una
  funzione strettamente monotona è iniettiva: se
  <math|x<rsub|1>\<neq\>x<rsub|2>>, uno dei due è più piccolo, diciamo
  <math|x<rsub|1>\<less\>x<rsub|2>>, e allora
  <math|f(x<rsub|1>)\<less\>f(x<rsub|2>)> (o <math|\<gtr\>>), quindi
  <math|f(x<rsub|1>)\<neq\>f(x<rsub|2>)>. La monotonia debole non basta: una
  funzione può essere costante su un tratto.

  <section|Potenze e radici>

  Per <math|k\<geq\>1> intero, <math|x<rsup|k>> si comporta in modo diverso
  secondo la parità di <math|k>.

  <strong|<math|k> pari.> <math|(-x)<rsup|k>=x<rsup|k>>: la funzione è pari.
  Su <math|\<bbb-R\>\<rightarrow\>\<bbb-R\>> non è iniettiva
  (<math|(-3)<rsup|2>=3<rsup|2>>), non è suriettiva
  (<math|x<rsup|k>\<geq\>0>), ha immagine <math|[0,+\<infty\>)>, decresce
  strettamente su <math|(-\<infty\>,0]> e cresce strettamente su
  <math|[0,+\<infty\>)>. Ristretta a <math|[0,+\<infty\>)\<rightarrow\>[0,+\<infty\>)>
  è biiettiva, e la sua inversa è la radice
  <math|<sqrt|x|k>:[0,+\<infty\>)\<rightarrow\>[0,+\<infty\>)>: si prende la
  radice solo di numeri <math|\<geq\>0> e il risultato è <math|\<geq\>0>.

  Perché cresce strettamente? Per <math|k=2>, se <math|0\<leq\>x\<less\>y>:
  moltiplicando <math|x\<less\>y> per <math|x\<geq\>0> si ha
  <math|x<rsup|2>\<leq\>x*y>; moltiplicando per <math|y\<gtr\>0> si ha
  <math|x*y\<less\>y<rsup|2>>; quindi <math|x<rsup|2>\<less\>y<rsup|2>>. Le
  potenze pari più alte si trattano con le stesse proprietà dell'ordine.

  <strong|<math|k> dispari.> <math|(-x)<rsup|k>=-x<rsup|k>>: la funzione è
  dispari, strettamente crescente e biiettiva da <math|\<bbb-R\>> a
  <math|\<bbb-R\>>. La radice <math|<sqrt|x|k>:\<bbb-R\>\<rightarrow\>\<bbb-R\>>
  è definita ovunque: <math|<sqrt|-27|3>=-3>, mentre <math|<sqrt|-27|4>> non
  è un numero reale.

  La parte delicata è la suriettività: dire che <math|x\<mapsto\>x<rsup|2>>
  da <math|[0,+\<infty\>)> in sé è suriettiva vuol dire che ogni
  <math|y\<geq\>0> ha una radice, anche <math|y=2>. Su <math|\<bbb-Q\>> è
  falso; su <math|\<bbb-R\>> è vero per la completezza (capitolo 4). Le
  potenze si definiscono con il prodotto; le radici nascono come loro
  inverse, e la loro esistenza è un fatto di completezza.

  Nel primo quadrante tutte le potenze passano per <math|(0,0)> e
  <math|(1,1)>. Per <math|0\<less\>x\<less\>1> aumentare l'esponente abbassa
  il valore (<math|x<rsup|6>\<less\>x<rsup|4>\<less\>x<rsup|2>>); per
  <math|x\<gtr\>1> lo alza.

  <figura|<image|analisi-1-assets/potenze.pdf|155.0mm|57.5mm||>|A sinistra
  <math|x<rsup|2>>, <math|x<rsup|4>>, <math|x<rsup|6>>: fra <math|0> e
  <math|1> l'esponente più alto sta più in basso, oltre <math|1> più in alto.
  A destra <math|x<rsup|3>> e <math|x<rsup|5>>, simmetriche rispetto
  all'origine, per <math|(-1,-1)>, <math|(0,0)>, <math|(1,1)>.>

  <strong|Grafico dell'inversa.> Se <math|(a,b)> sta sul grafico di <math|f>,
  cioè <math|b=f(a)>, allora <math|a=f<rsup|-1>(b)>: il punto <math|(b,a)>
  sta sul grafico di <math|f<rsup|-1>>. E <math|(b,a)> è il simmetrico di
  <math|(a,b)> rispetto alla bisettrice <math|y=x>. Il grafico dell'inversa è
  il riflesso di quello di <math|f> nella bisettrice: così <math|<sqrt|x>>
  nasce dal ramo destro della parabola, <math|<sqrt|x|3>> da
  <math|x<rsup|3>>.

  <figura|<image|analisi-1-assets/inversa.pdf|105.0mm|75.0mm||>|Il ramo
  <math|y=x<rsup|2>>, <math|x\<geq\>0>, e il suo riflesso <math|y=<sqrt|x>>:
  ogni punto <math|(a,b)> ha il gemello <math|(b,a)> dall'altra parte della
  bisettrice.>

  <section|Equazioni e disequazioni con il grafico>

  Risolvere <math|f(x)=\<lambda\>> vuol dire intersecare il grafico con la
  retta orizzontale <math|y=\<lambda\>>: le soluzioni sono le ascisse dei
  punti comuni.

  <\itemize>
    <item><em|Suriettiva>: ogni retta <math|y=\<lambda\>>, con
    <math|\<lambda\>> nell'insieme di arrivo, taglia il grafico almeno una
    volta.

    <item><em|Iniettiva>: ogni retta orizzontale taglia il grafico al più una
    volta (<strong|test della retta orizzontale>). Due intersezioni distinte
    bastano a smentirla.
  </itemize>

  Per <math|f(x)\<leq\>\<lambda\>>: si disegnano grafico e retta, si prendono
  i punti del grafico sotto o sulla retta, si proiettano sull'asse <math|x>.
  Per esempio <math|x<rsup|2>\<leq\>4>: la parabola incontra <math|y=4> in
  <math|x=\<pm\>2> e sta sotto fra le due intersezioni, quindi
  <math|x\<in\>[-2,2]>.

  <section|Valore assoluto e trasformazioni>

  <math|\|x\|=x> se <math|x\<geq\>0>, <math|\|x\|=-x> se <math|x\<less\>0>;
  in <math|0> le due formule danno lo stesso valore. Il grafico è una \SV\T.
  Come funzione <math|\<bbb-R\>\<rightarrow\>\<bbb-R\>> è pari, non
  iniettiva, non suriettiva; è suriettiva su <math|[0,+\<infty\>)>; decresce
  strettamente su <math|(-\<infty\>,0]> e cresce strettamente su
  <math|[0,+\<infty\>)>, dove coincide con l'identità. Non ha senso scrivere
  <math|\|x\|:\<bbb-R\>\<rightarrow\>(-\<infty\>,0)>: una funzione deve
  mandare ogni punto <em|dentro> l'insieme di arrivo.

  Dal grafico di <math|f>:

  <\itemize>
    <item><math|f(x)+a>: traslazione verticale, in alto di <math|a> se
    <math|a\<gtr\>0>, in basso di <math|\|a\|> se <math|a\<less\>0>;

    <item><math|f(x+a)>: traslazione orizzontale, <em|a sinistra> di <math|a>
    se <math|a\<gtr\>0>. Se <math|f> si annulla in <math|3>, <math|f(x+3)> si
    annulla dove <math|x+3=3>, cioè in <math|0>;

    <item><math|f(-x)>: riflessione rispetto all'asse <math|y>;

    <item><math|\|f(x)\|>: la parte sotto l'asse <math|x> si ribalta sopra;

    <item><math|f(\|x\|)>: si tiene la parte con <math|x\<geq\>0> e la si
    riflette rispetto all'asse <math|y>; il risultato è sempre pari.
  </itemize>

  <figura|<image|analisi-1-assets/trasformazioni.pdf|105.0mm|67.5mm||>|Da
  <math|x<rsup|2>-4> a <math|\|x<rsup|2>-4\|>: la parte negativa
  (tratteggiata) si ribalta sopra l'asse. Il vertice <math|(0,-4)> diventa
  <math|(0,4)>.>

  <\guidato|Quante soluzioni? (lezione)>
    Conta le soluzioni di <math|\|x<rsup|2>-2026\|=\<lambda\>> al variare di
    <math|\<lambda\>\<in\>\<bbb-R\>>.

    <em|Idea.> Il grafico è quello della figura precedente con <math|2026> al
    posto di <math|4>: una W con le punte basse in <math|x=\<pm\><sqrt|2026>>
    e la gobba centrale alta <math|2026>. Facciamo scorrere la retta
    <math|y=\<lambda\>>.

    <em|Conto.> <math|\<lambda\>\<less\>0>: nessuna soluzione (il valore
    assoluto non è mai negativo). <math|\<lambda\>=0>: <math|x<rsup|2>=2026>,
    due soluzioni <math|\<pm\><sqrt|2026>>.
    <math|0\<less\>\<lambda\>\<less\>2026>: quattro intersezioni, due sulla
    gobba e due sui rami esterni. <math|\<lambda\>=2026>: tre (<math|x=0> e
    due esterne). <math|\<lambda\>\<gtr\>2026>: due, solo sui rami esterni.

    <em|Controllo.> Con <math|\<lambda\>=2026> l'equazione diventa
    <math|x<rsup|2>-2026=\<pm\>2026>, cioè <math|x<rsup|2>=4052> oppure
    <math|x<rsup|2>=0>: tre soluzioni, come previsto. Allo stesso modo
    <math|(x-3)<rsup|2>=\<lambda\>> (parabola con vertice <math|(3,0)>) ha
    <math|0>, <math|1>, <math|2> soluzioni per <math|\<lambda\>\<less\>0>,
    <math|\<lambda\>=0>, <math|\<lambda\>\<gtr\>0>, e queste sono
    <math|x=3\<pm\><sqrt|\<lambda\>>>.
  </guidato>

  <figura|<image|analisi-1-assets/livelli.pdf|130.0mm|62.5mm||>|Il grafico di
  <math|\|x<rsup|2>-c\|> tagliato da rette orizzontali a quote diverse:
  <math|0>, <math|2>, <math|4>, <math|3>, <math|2> intersezioni.>

  <section|Trasformare un'equazione senza sbagliare>

  <\guidato|Una radice contro una retta (lezione)>
    Risolvi <math|<sqrt|x+6>\<gtr\>x>.

    <em|Idea.> Dominio, poi grafico: <math|<sqrt|x+6>> è <math|<sqrt|x>>
    traslata a sinistra di <math|6>; la confrontiamo con la retta <math|y=x>.

    <em|Conto.> Dominio: <math|x\<geq\>-6>. Intersezioni:
    <math|<sqrt|x+6>=x>. Il primo membro è <math|\<geq\>0>, quindi serve
    <math|x\<geq\>0>. Elevando al quadrato, <math|x+6=x<rsup|2>>, cioè
    <math|(x-3)(x+2)=0>: candidati <math|x=3> e <math|x=-2>. Verifica:
    <math|<sqrt|9>=3> va bene; <math|<sqrt|4>=2\<neq\>-2> no. L'unica
    intersezione è <math|x=3>, e a sinistra di <math|3> la radice sta sopra
    la retta.

    <em|Controllo.> La soluzione è <math|[-6,3)>. Prova <math|x=0>:
    <math|<sqrt|6>\<gtr\>0> sì; <math|x=4>: <math|<sqrt|10>\<gtr\>4> no.
  </guidato>

  <figura|<image|analisi-1-assets/radice-retta.pdf|130.0mm|70.0mm||>|<math|y=<sqrt|x+6>>
  sta sopra <math|y=x> per <math|-6\<leq\>x\<less\>3>. Il candidato estraneo
  <math|x=-2> corrisponde al ramo \Sfantasma\T (tratteggiato) della parabola
  <math|y<rsup|2>=x+6>, che non appartiene al grafico della radice.>

  Elevare al quadrato è un'implicazione: <math|a=b\<Rightarrow\>a<rsup|2>=b<rsup|2>>.
  Il viceversa è falso, perché può essere <math|a=-b>. Per questo i candidati
  vanno sempre ricontrollati nell'equazione di partenza.

  <\attenzione|<math|<sqrt|x<rsup|2>>> non è <math|x>>
    La radice restituisce sempre un valore non negativo:
    <math|<sqrt|x<rsup|2>>=\|x\|> per ogni <math|x\<in\>\<bbb-R\>>, e vale
    <math|x> solo se <math|x\<geq\>0>. In generale
    <math|<sqrt|x<rsup|2k>|2k>=\|x\|> e <math|<sqrt|x<rsup|2k>>=\|x\|<rsup|k>>.
  </attenzione>

  <strong|Togliere una funzione da entrambi i membri.> Se <math|f> è
  iniettiva, <math|f(u)=f(v)\<Rightarrow\>u=v>: è ciò che permette di
  \Sapplicare il logaritmo\T o di confrontare esponenti. Con le
  disuguaglianze conta il verso: se <math|f> è strettamente crescente,
  <math|f(u)\<less\>f(v)\<Leftrightarrow\>u\<less\>v>; se è strettamente
  decrescente, <math|f(u)\<less\>f(v)\<Leftrightarrow\>u\<gtr\>v>. Con una
  funzione solo debolmente crescente non si può concludere.

  Ogni passaggio deve rispettare i domini: logaritmi di argomenti
  <math|\<gtr\>0>, radici pari di argomenti <math|\<geq\>0>, denominatori
  <math|\<neq\>0>, e l'iniettività vale solo dove la funzione è davvero
  iniettiva. Da <math|x<rsup|2>=y<rsup|2>> si deduce <math|x=y> solo se si sa
  che <math|x,y\<geq\>0>.

  <section|Immagine e controimmagine sul grafico>

  Per l'immagine <math|f(E)> si parte da <math|E> sull'asse <math|x>, si
  guarda il tratto di grafico sopra <math|E> e lo si proietta sull'asse
  <math|y>. Per la controimmagine <math|f<rsup|-1>(D)> si parte da <math|D>
  sull'asse <math|y>, si prende il tratto di grafico fra le rette orizzontali
  corrispondenti e lo si proietta sull'asse <math|x>.

  <\guidato|Il grafico di <math|\|x<rsup|2>-4\|> (lezione)>
    Con <math|f(x)=\|x<rsup|2>-4\|> calcola <math|f([1,4])> e
    <math|f<rsup|-1>([-2,1])>.

    <em|Idea.> Il grafico si costruisce da <math|x<rsup|2>>: giù di <math|4>,
    poi valore assoluto. Zeri in <math|\<pm\>2>, <math|f(0)=4>.

    <em|Conto.> Su <math|[1,4]>: <math|f(1)=3>, <math|f(2)=0>,
    <math|f(4)=12>. La funzione scende da <math|3> a <math|0> e poi sale fino
    a <math|12>, quindi prende tutti i valori fra <math|0> e <math|12>:
    <math|f([1,4])=[0,12]>.

    Per la controimmagine, <math|f\<geq\>0>, quindi conta solo <math|[0,1]>:
    <math|\|x<rsup|2>-4\|\<leq\>1\<Leftrightarrow\>3\<leq\>x<rsup|2>\<leq\>5\<Leftrightarrow\><sqrt|3>\<leq\>\|x\|\<leq\><sqrt|5>>.
    Risultato: <math|[-<sqrt|5>,-<sqrt|3>]\<cup\>[<sqrt|3>,<sqrt|5>]>.

    <em|Controllo.> Sostituire solo gli estremi darebbe <math|[3,12]>,
    sbagliato: il minimo interno <math|0> si perderebbe. La controimmagine ha
    due pezzi perché <math|f> non è iniettiva.
  </guidato>

  <figura|<image|analisi-1-assets/immagine.pdf|160.0mm|72.5mm||>|A sinistra
  l'immagine di <math|[1,4]>: il tratto di grafico sopra l'intervallo,
  proiettato sull'asse <math|y>, copre <math|[0,12]>. A destra la
  controimmagine di <math|[-2,1]>: la striscia orizzontale
  <math|0\<leq\>y\<leq\>1> taglia il grafico in due tratti.>

  <section|Esponenziale e logaritmo: un richiamo>

  Le lezioni successive useranno liberamente esponenziali e logaritmi; alla
  fine della lezione del 30 settembre il docente ha anticipato che la loro
  costruzione rigorosa è delicata e sarà fatta in seguito. Raccogliamo qui,
  come promemoria (è un'integrazione di questo libro), i fatti che useremo.
  Per <math|a\<gtr\>0> la funzione <math|a<rsup|x>> è definita su
  <math|\<bbb-R\>>, è positiva e soddisfa
  <math|a<rsup|x+y>=a<rsup|x>a<rsup|y>>, <math|(a<rsup|x>)<rsup|y>=a<rsup|x*y>>,
  <math|a<rsup|0>=1>; è strettamente crescente se <math|a\<gtr\>1>,
  strettamente decrescente se <math|0\<less\>a\<less\>1>, e da
  <math|\<bbb-R\>> a <math|(0,+\<infty\>)> è biiettiva. La sua inversa è
  <math|log<rsub|a>:(0,+\<infty\>)\<rightarrow\>\<bbb-R\>>, con
  <math|log<rsub|a>(x*y)=log<rsub|a>x+log<rsub|a>y> e
  <math|log<rsub|a>(x<rsup|y>)=y log<rsub|a>x>. La base preferita sarà il
  numero <math|e> del capitolo 8, e <math|log> senza base indicherà
  <math|log<rsub|e>>. Utile per le potenze con base ed esponente variabili:
  <math|A<rsup|B>=e<rsup|B log A>> per <math|A\<gtr\>0>.

  L'idea del docente è che l'esponenziale deve estendere le potenze
  rispettando <math|a<rsup|x+y>=a<rsup|x>a<rsup|y>> e la monotonia; ma
  estendere una funzione dai razionali ai reali si può fare in molti modi
  patologici, e servono condizioni in più: per esempio che almeno un
  rettangolo del semipiano <math|y\<gtr\>0> non sia attraversato dal grafico.

  <\officina|6. Implicazione o equivalenza?>
    Quando trasformi un'equazione o una disequazione, chiediti per ogni
    passaggio se vale <math|\<Leftrightarrow\>> oppure solo
    <math|\<Rightarrow\>>.

    <\itemize>
      <item>Sommare, moltiplicare per un numero <math|\<neq\>0>, applicare
      una funzione iniettiva sul suo dominio: <math|\<Leftrightarrow\>>.

      <item>Elevare al quadrato, moltiplicare per una quantità che può
      annullarsi: solo <math|\<Rightarrow\>>. Le soluzioni trovate sono
      <em|candidate>: vanno verificate.

      <item>Applicare a una disuguaglianza una funzione strettamente
      crescente conserva il verso; una strettamente decrescente lo inverte.

      <item>Prima di tutto, scrivi il dominio.
    </itemize>
  </officina>

  <\verifica|5>
    <strong|(a)> Quante soluzioni ha <math|\|x\|-1=\<lambda\>>, al variare di
    <math|\<lambda\>>? <strong|(b)> <math|f(x)=x<rsup|3>+x> è pari, dispari o
    nessuna delle due? <strong|(c)> Risolvi <math|<sqrt|x+2>=x>.
  </verifica>

  <chapter|Trigonometria e funzioni inverse>

  <\inbreve>
    Seno, coseno e tangente nascono da un punto che gira su una
    circonferenza. Sono periodiche, quindi non iniettive: per invertirle
    bisogna scegliere un intervallo. Tutto il capitolo ruota attorno a una
    domanda: <em|in quale intervallo vive il risultato?>
  </inbreve>

  <section|La circonferenza trigonometrica>

  La presentazione è geometrica e operativa, solo semi-rigorosa: una
  definizione completa richiederebbe di formalizzare arco, lunghezza e area.
  La <strong|circonferenza trigonometrica> è <math|x<rsup|2>+y<rsup|2>=1>.
  Partiamo da <math|A=(1,0)> e percorriamo un arco di lunghezza
  <math|\<alpha\>>, in senso antiorario se <math|\<alpha\>\<gtr\>0>, orario
  se <math|\<alpha\>\<less\>0>: arriviamo in un punto <math|P>. Poiché il
  raggio è <math|1>, la misura in radianti coincide con la lunghezza
  dell'arco; equivalentemente il settore <math|O*A*P> ha area
  <math|<frac|\<alpha\>|2>> (un settore di raggio <math|r> e angolo
  <math|\<alpha\>> ha area <math|<frac|1|2>r<rsup|2>\<alpha\>>). Ogni
  <math|\<alpha\>\<in\>\<bbb-R\>> va bene: dopo <math|2\<pi\>> si torna al
  punto di partenza.

  Le coordinate di <math|P> sono, per definizione, <math|P=(cos \<alpha\>,sin
  \<alpha\>)>. Da <math|x<rsup|2>+y<rsup|2>=1>:

  <\equation*>
    sin<rsup|2>\<alpha\>+cos<rsup|2>\<alpha\>=1.
  </equation*>

  I segni dipendono dal quadrante: nel primo seno e coseno sono positivi; nel
  secondo <math|sin\<gtr\>0>, <math|cos\<less\>0>; nel terzo entrambi
  negativi; nel quarto <math|sin\<less\>0>, <math|cos\<gtr\>0>.

  La <strong|tangente> è <math|tan \<alpha\>=<frac|sin \<alpha\>|cos
  \<alpha\>>> quando <math|cos \<alpha\>\<neq\>0>. Geometricamente:
  prolunghiamo <math|O*P> fino alla retta <math|x=1>, tangente alla
  circonferenza in <math|A>, e chiamiamo <math|Q> l'intersezione; <math|tan
  \<alpha\>> è la lunghezza orientata di <math|A*Q> (negativa se <math|Q> sta
  sotto <math|A>). La costruzione fallisce quando <math|O*P> è verticale,
  cioè per <math|\<alpha\>=<frac|\<pi\>|2>+k\<pi\>>, <math|k\<in\>\<bbb-Z\>>.

  <figura|<image|analisi-1-assets/circonferenza.pdf|105.0mm|82.5mm||>|Il
  punto <math|P> all'angolo <math|\<alpha\>> ha coordinate <math|(cos
  \<alpha\>,sin \<alpha\>)>. Prolungando <math|O*P> fino alla retta
  <math|x=1> si legge <math|tan \<alpha\>> come altezza di <math|Q>.>

  <section|Simmetrie, periodi, grafici>

  Cambiare <math|\<alpha\>> in <math|-\<alpha\>> riflette <math|P> rispetto
  all'asse <math|x>: la <math|x> resta, la <math|y> cambia segno. Quindi

  <\equation*>
    sin(-\<alpha\>)=-sin \<alpha\>,<space|2em>cos(-\<alpha\>)=cos
    \<alpha\>,<space|2em>tan(-\<alpha\>)=-tan \<alpha\>:
  </equation*>

  seno e tangente sono dispari, il coseno è pari. Dopo un giro si torna
  indietro: seno e coseno hanno periodo minimo <math|2\<pi\>>. Aggiungere
  <math|\<pi\>> porta <math|P> nel punto opposto, cambiando segno a seno e
  coseno insieme:

  <\equation*>
    tan(\<alpha\>+\<pi\>)=<frac|-sin \<alpha\>|-cos \<alpha\>>=tan \<alpha\>.
  </equation*>

  La tangente ha periodo <math|\<pi\>>, ed è il minimo: i suoi zeri sono
  esattamente <math|k\<pi\>>, distanti <math|\<pi\>>.

  Valori da ricordare: <math|sin> vale <math|0,1,0,-1,0> in
  <math|0,<frac|\<pi\>|2>,\<pi\>,<frac|3\<pi\>|2>,2\<pi\>>; <math|cos> vale
  <math|1,0,-1,0,1>. La tangente ha asintoti verticali in
  <math|<frac|\<pi\>|2>+k\<pi\>> ed è strettamente crescente su ogni
  intervallo <math|(-<frac|\<pi\>|2>+k\<pi\>,<frac|\<pi\>|2>+k\<pi\>)>.

  <figura|<image|analisi-1-assets/trig-grafici.pdf|160.0mm|96.2mm||>|Seno
  (linea piena) e coseno (tratteggiato) oscillano fra <math|-1> e <math|1>
  con periodo <math|2\<pi\>>. Sotto, la tangente: un ramo crescente ogni
  <math|\<pi\>>, separato dal successivo da un asintoto.>

  <section|Le funzioni inverse>

  Una funzione periodica non è iniettiva. Per invertirla si restringe il
  dominio a un intervallo dove è iniettiva e conserva tutta l'immagine.

  <\itemize>
    <item><math|sin:[-<frac|\<pi\>|2>,<frac|\<pi\>|2>]\<rightarrow\>[-1,1]> è
    strettamente crescente e suriettiva. L'inversa è l'<strong|arcoseno>,
    <math|arcsin:[-1,1]\<rightarrow\>[-<frac|\<pi\>|2>,<frac|\<pi\>|2>]>:
    <math|arcsin x> è l'unico angolo di <math|[-<frac|\<pi\>|2>,<frac|\<pi\>|2>]>
    con seno <math|x>.

    <item><math|cos:[0,\<pi\>]\<rightarrow\>[-1,1]> è strettamente
    decrescente e suriettiva. L'inversa è l'<strong|arcocoseno>,
    <math|arccos:[-1,1]\<rightarrow\>[0,\<pi\>]>: non restituisce mai valori
    negativi.

    <item><math|tan:(-<frac|\<pi\>|2>,<frac|\<pi\>|2>)\<rightarrow\>\<bbb-R\>>
    è strettamente crescente e suriettiva. L'inversa è
    l'<strong|arcotangente>, <math|arctan:\<bbb-R\>\<rightarrow\>(-<frac|\<pi\>|2>,<frac|\<pi\>|2>)>;
    gli estremi sono esclusi perché la tangente non vi assume valori finiti.
  </itemize>

  I grafici delle inverse sono i riflessi dei rami scelti nella bisettrice
  <math|y=x>; gli asintoti verticali della tangente diventano gli asintoti
  orizzontali <math|y=\<pm\><frac|\<pi\>|2>> dell'arcotangente.

  <figura|<image|analisi-1-assets/inverse-trig.pdf|160.0mm|57.5mm||>|Da
  sinistra: <math|arcsin> (da <math|[-1,1]> a
  <math|[-<frac|\<pi\>|2>,<frac|\<pi\>|2>]>), <math|arccos> (da <math|[-1,1]>
  a <math|[0,\<pi\>]>), <math|arctan> (da <math|\<bbb-R\>> a
  <math|(-<frac|\<pi\>|2>,<frac|\<pi\>|2>)>, con due asintoti orizzontali).>

  Sulla circonferenza: <math|arcsin \<lambda\>> si trova tagliando con la
  retta orizzontale <math|y=\<lambda\>> e scegliendo il punto della metà
  destra; <math|arccos \<lambda\>> tagliando con la retta verticale
  <math|x=\<lambda\>> e scegliendo il punto della metà superiore;
  <math|arctan \<lambda\>> segnando l'altezza <math|\<lambda\>> sulla retta
  tangente <math|x=1> e congiungendo con l'origine.

  <section|Comporre con le inverse>

  Se <math|f:A\<rightarrow\>B> è biiettiva e <math|g=f<rsup|-1>>, allora
  <math|g(f(a))=a> per <math|a\<in\>A> e <math|f(g(b))=b> per
  <math|b\<in\>B>: due identità su due insiemi diversi. Quindi

  <\equation*>
    arcsin(sin x)=x <text| per >x\<in\>[-<frac|\<pi\>|2>,<frac|\<pi\>|2>],<space|2em>sin(arcsin
    x)=x <text| per >x\<in\>[-1,1],
  </equation*>

  e analogamente <math|arccos(cos x)=x> solo per <math|x\<in\>[0,\<pi\>]>,
  <math|arctan(tan x)=x> solo per <math|x\<in\>(-<frac|\<pi\>|2>,<frac|\<pi\>|2>)>,
  mentre <math|cos(arccos x)=x> su <math|[-1,1]> e <math|tan(arctan x)=x> su
  <math|\<bbb-R\>>.

  <\guidato|<math|arcsin(sin 2)> e <math|arccos(cos 4)> (lezione)>
    Calcola i due valori.

    <em|Idea.> <math|2> e <math|4> sono fuori dagli intervalli principali;
    cerchiamo l'angolo <em|dentro> l'intervallo che ha lo stesso seno (o
    coseno).

    <em|Conto.> L'angolo <math|2> sta nel secondo quadrante
    (<math|<frac|\<pi\>|2>\<approx\>1,57\<less\>2\<less\>\<pi\>>).
    <math|\<pi\>-2> ha lo stesso seno e sta in
    <math|[-<frac|\<pi\>|2>,<frac|\<pi\>|2>]> (vale circa <math|1,14>).
    Quindi <math|arcsin(sin 2)=\<pi\>-2>.

    L'angolo <math|4> sta oltre <math|\<pi\>\<approx\>3,14>. L'angolo
    <math|2\<pi\>-4\<approx\>2,28> ha lo stesso coseno (è <math|-4> più un
    giro, e il coseno è pari) e sta in <math|[0,\<pi\>]>. Quindi
    <math|arccos(cos 4)=2\<pi\>-4>.

    <em|Controllo.> Non viene <math|2> né <math|4>: le inverse restituiscono
    sempre valori nei loro intervalli.
  </guidato>

  Una composizione può essere definita anche se non si semplifica:
  <math|arccos(cos x)> è definita per ogni <math|x\<in\>\<bbb-R\>> (perché
  <math|cos x\<in\>[-1,1]>), mentre <math|cos(arccos x)> solo per
  <math|x\<in\>[-1,1]>.

  Se la funzione <em|interna> è periodica di periodo <math|T>, anche la
  composta lo è: <math|f(g(x+T))=f(g(x))>. Così <math|sin<rsup|3>x=(sin
  x)<rsup|3>> ha periodo <math|2\<pi\>> (il periodo minimo potrebbe anche
  essere più piccolo). Invece <math|sin(x<rsup|2>)> e <math|sin(x<rsup|3>)>
  hanno la potenza <em|dentro> il seno: le oscillazioni si comprimono, gli
  zeri non sono equidistanti, e la periodicità si perde.

  <section|Identità con le inverse>

  <strong|Somma di arcoseno e arcocoseno.> Per <math|x\<in\>[-1,1]>,
  <math|arcsin x+arccos x=<frac|\<pi\>|2>>. Se <math|\<alpha\>=arcsin
  x\<in\>[-<frac|\<pi\>|2>,<frac|\<pi\>|2>]>, l'angolo complementare
  <math|<frac|\<pi\>|2>-\<alpha\>> sta in <math|[0,\<pi\>]> e ha coseno
  <math|sin \<alpha\>=x>: è proprio <math|arccos x>.

  <strong|Seno dell'arcocoseno.> Sia <math|\<alpha\>=arccos x>: allora
  <math|cos \<alpha\>=x> e <math|sin<rsup|2>\<alpha\>=1-x<rsup|2>>. Poiché
  <math|\<alpha\>\<in\>[0,\<pi\>]>, il seno è <math|\<geq\>0>, e si sceglie
  la radice positiva:

  <\equation*>
    sin(arccos x)=<sqrt|1-x<rsup|2>>,<space|2em>cos(arcsin
    x)=<sqrt|1-x<rsup|2>><space|2em>(x\<in\>[-1,1]).
  </equation*>

  La seconda vale perché <math|arcsin x\<in\>[-<frac|\<pi\>|2>,<frac|\<pi\>|2>]>,
  dove il coseno è <math|\<geq\>0>. Senza sapere l'intervallo, il segno
  resterebbe ignoto.

  <\guidato|<math|arctan x+arctan <frac|1|x>> (lezione)>
    Mostra che vale <math|<frac|\<pi\>|2>> per <math|x\<gtr\>0> e
    <math|-<frac|\<pi\>|2>> per <math|x\<less\>0>.

    <em|Idea.> Il candidato per <math|arctan <frac|1|x>> è l'angolo
    complementare; bisogna controllare che stia nell'intervallo giusto.

    <em|Conto.> Sia <math|\<alpha\>=arctan x>, quindi <math|tan \<alpha\>=x>.
    Se <math|x\<gtr\>0>, <math|\<alpha\>\<in\>(0,<frac|\<pi\>|2>)> e

    <\equation*>
      tan(<frac|\<pi\>|2>-\<alpha\>)=<frac|cos \<alpha\>|sin
      \<alpha\>>=<frac|1|tan \<alpha\>>=<frac|1|x>.
    </equation*>

    Inoltre <math|<frac|\<pi\>|2>-\<alpha\>\<in\>(0,<frac|\<pi\>|2>)>, che
    sta nell'intervallo principale: dunque <math|arctan
    <frac|1|x>=<frac|\<pi\>|2>-\<alpha\>>, e la somma vale
    <math|<frac|\<pi\>|2>>. Se <math|x\<less\>0>,
    <math|\<alpha\>\<in\>(-<frac|\<pi\>|2>,0)> e
    <math|<frac|\<pi\>|2>-\<alpha\>> cade fuori, in
    <math|(<frac|\<pi\>|2>,\<pi\>)>; togliendo <math|\<pi\>> (la tangente ha
    periodo <math|\<pi\>>) si torna dentro: <math|arctan
    <frac|1|x>=-<frac|\<pi\>|2>-\<alpha\>>, e la somma vale
    <math|-<frac|\<pi\>|2>>.

    <em|Controllo.> Con <math|x=1>: <math|<frac|\<pi\>|4>+<frac|\<pi\>|4>=<frac|\<pi\>|2>>.
    Con <math|x=-1>: <math|-<frac|\<pi\>|4>-<frac|\<pi\>|4>=-<frac|\<pi\>|2>>.
  </guidato>

  <strong|Un dente di sega.> <math|arccos(sin x)> è definita su
  <math|\<bbb-R\>> e ha periodo <math|2\<pi\>>. Usando <math|sin
  x=cos(<frac|\<pi\>|2>-x)> e scegliendo l'angolo in <math|[0,\<pi\>]>:

  <\equation*>
    arccos(sin x)=<choice|<tformat|<table|<row|<cell|<frac|\<pi\>|2>-x,>|<cell|-<frac|\<pi\>|2>\<leq\>x\<leq\><frac|\<pi\>|2>,>>|<row|<cell|x-<frac|\<pi\>|2>,>|<cell|<frac|\<pi\>|2>\<leq\>x\<leq\><frac|3\<pi\>|2>,>>>>>
  </equation*>

  e poi si ripete. In particolare <math|arccos(sin 2)=2-<frac|\<pi\>|2>>.

  <figura|<image|analisi-1-assets/dente.pdf|155.0mm|42.5mm||>|Il grafico di
  <math|arccos(sin x)>: tratti di retta con pendenza <math|-1> e <math|+1>
  fra <math|0> e <math|\<pi\>>, ripetuti con periodo <math|2\<pi\>>.>

  <\officina|7. Controllare l'intervallo principale>
    Le identità con le funzioni inverse si dimostrano sempre in due passi.

    <\enumerate>
      <item><em|Trova un candidato>: un angolo con il seno (coseno, tangente)
      giusto. Di solito viene da un'identità trigonometrica.

      <item><em|Controlla che stia nell'intervallo principale> dell'inversa.
      Se non ci sta, spostalo di un periodo o usa una simmetria finché ci
      entra.
    </enumerate>

    Il secondo passo è quello che si dimentica. Non basta che <math|tan
    \<beta\>=<frac|1|x>> per concludere <math|\<beta\>=arctan <frac|1|x>>:
    serve anche <math|\<beta\>\<in\>(-<frac|\<pi\>|2>,<frac|\<pi\>|2>)>. È un
    caso dello schema \Sesistenza più unicità\T: l'inversa sceglie
    l'<em|unico> angolo dell'intervallo.
  </officina>

  <\verifica|6>
    <strong|(a)> Calcola <math|arcsin(sin 3)> e <math|arctan(tan 2)>.
    <strong|(b)> Per quali <math|x> vale <math|arccos(cos x)=x>? <strong|(c)>
    Calcola <math|tan(arcsin x)> per <math|x\<in\>(-1,1)>.
  </verifica>

  <chapter|Successioni e limiti>

  <\inbreve>
    Che cosa vuol dire che <math|<frac|1|n>> \Stende a <math|0>\T? La
    risposta precisa è un gioco di sfida e risposta: qualunque tolleranza tu
    fissi, da un certo indice in poi i termini la rispettano. Con questa
    definizione dimostreremo i primi limiti, smentiremo alcune intuizioni
    sbagliate e otterremo i teoremi di confronto.
  </inbreve>

  <section|Definitivamente e frequentemente>

  Sia <math|P(n)> un predicato sui naturali. <math|P(n)> vale
  <strong|definitivamente> se è vera da un certo punto in poi:

  <\equation*>
    \<exists\>n<rsub|0>\<in\>\<bbb-N\> <text| tale che
    >\<forall\>n\<geq\>n<rsub|0>, P(n).
  </equation*>

  Quello che succede prima di <math|n<rsub|0>> non conta. <math|P(n)> vale
  <strong|frequentemente> se è vera per infiniti <math|n>, cioè

  <\equation*>
    \<forall\>n<rsub|0>\<in\>\<bbb-N\> \<exists\>n\<geq\>n<rsub|0> <text|
    tale che >P(n):
  </equation*>

  per quanto si vada avanti, se ne trova ancora una; gli indici non devono
  essere consecutivi.

  <section|Successioni>

  Una <strong|successione> reale è, a rigore, una funzione
  <math|\<bbb-N\>\<rightarrow\>\<bbb-R\>>, e si scrive <math|a<rsub|n>>
  invece di <math|f(n)>. Conviene una definizione più elastica: basta che
  <math|a<rsub|n>> sia definita definitivamente. Così <math|<frac|1|n-4>>
  (definita per <math|n\<geq\>5>) e <math|<sqrt|n-2025>> (per
  <math|n\<geq\>2025>) sono successioni; <math|<sqrt|2025-n>> no, perché è
  definita solo per un numero finito di indici.

  Una successione si può vedere in tre modi: come <em|grafico>, i punti
  <math|(n,a<rsub|n>)> nel piano; come <em|fotografia>, i valori segnati su
  una retta con l'indice accanto; come <em|video>, un punto che sta un
  secondo in <math|a<rsub|1>>, poi in <math|a<rsub|2>>, e così via. Non conta
  solo l'insieme dei valori: conta l'ordine in cui vengono percorsi.

  <figura|<image|analisi-1-assets/tre-viste.pdf|160.0mm|52.5mm||>|La
  successione <math|a<rsub|n>=<frac|1|n>> come grafico (a sinistra) e come
  fotografia sulla retta (a destra): i valori si affollano vicino a
  <math|0>.>

  <section|Le definizioni di limite>

  Per <math|n\<rightarrow\>+\<infty\>> ci sono quattro esiti possibili: un
  limite reale <math|\<#2113\>>, <math|+\<infty\>>, <math|-\<infty\>>, oppure
  il limite non esiste.

  <\itemize>
    <item><math|a<rsub|n>\<rightarrow\>+\<infty\>> se
    <math|\<forall\>M\<in\>\<bbb-R\>, a<rsub|n>\<geq\>M> definitivamente,
    cioè <math|\<forall\>M \<exists\>n<rsub|0> \<forall\>n\<geq\>n<rsub|0>,
    a<rsub|n>\<geq\>M>. La soglia <math|M> è grande quanto vuoi;
    <math|n<rsub|0>> dipende da <math|M>.

    <item><math|a<rsub|n>\<rightarrow\>-\<infty\>> se
    <math|\<forall\>M\<in\>\<bbb-R\>, a<rsub|n>\<leq\>M> definitivamente.

    <item><math|a<rsub|n>\<rightarrow\>\<#2113\>\<in\>\<bbb-R\>> se
    <math|\<forall\>\<varepsilon\>\<gtr\>0,
    \<#2113\>-\<varepsilon\>\<leq\>a<rsub|n>\<leq\>\<#2113\>+\<varepsilon\>>
    definitivamente, cioè

    <\equation*>
      \<forall\>\<varepsilon\>\<gtr\>0 \<exists\>n<rsub|0>\<in\>\<bbb-N\>
      \<forall\>n\<geq\>n<rsub|0>, \|a<rsub|n>-\<#2113\>\|\<leq\>\<varepsilon\>.
    </equation*>
  </itemize>

  <math|\<varepsilon\>> si può scegliere vicinissimo a <math|0>: la distanza
  da <math|\<#2113\>> diventa definitivamente piccola quanto si vuole.
  Sostituire qualche <math|\<leq\>> con <math|\<less\>> (per esempio
  <math|\|a<rsub|n>-\<#2113\>\|\<less\>\<varepsilon\>>) non cambia il
  concetto.

  <figura|<image|analisi-1-assets/striscia.pdf|155.0mm|57.5mm||>|La
  definizione di <math|a<rsub|n>\<rightarrow\>\<#2113\>> in figura: fissata
  la striscia di semiampiezza <math|\<varepsilon\>> attorno a
  <math|\<#2113\>>, da <math|n<rsub|0>> in poi tutti i punti ci stanno
  dentro. Una striscia più stretta chiederà, in generale, un <math|n<rsub|0>>
  più grande.>

  <math|a<rsub|n>\<rightarrow\>\<#2113\><rsup|+>> significa che i termini si
  avvicinano a <math|\<#2113\>> da sopra:
  <math|\<forall\>\<varepsilon\>\<gtr\>0,
  \<#2113\>\<less\>a<rsub|n>\<leq\>\<#2113\>+\<varepsilon\>> definitivamente.
  Analogamente <math|a<rsub|n>\<rightarrow\>\<#2113\><rsup|->> con
  <math|\<#2113\>-\<varepsilon\>\<leq\>a<rsub|n>\<less\>\<#2113\>>.

  <section|I primi limiti>

  Intuitivamente <math|n<rsup|2>+27\<rightarrow\>+\<infty\>>,
  <math|3-n<rsup|3>\<rightarrow\>-\<infty\>>,
  <math|<frac|1|n-5>\<rightarrow\>0>, mentre
  <math|(-1)<rsup|n>=1,-1,1,-1,\<ldots\>> non ha limite. Dimostriamolo.

  <\guidato|<math|n<rsup|2>\<rightarrow\>+\<infty\>> e
  <math|<frac|1|n>\<rightarrow\>0<rsup|+>>>
    <em|Idea.> L'avversario ci dà la sfida (<math|M> oppure
    <math|\<varepsilon\>>); noi rispondiamo con un <math|n<rsub|0>>.

    <em|Conto.> Sia <math|M\<in\>\<bbb-R\>>. Se <math|M\<leq\>0>,
    <math|n<rsup|2>\<geq\>M> per ogni <math|n>. Se <math|M\<gtr\>0>,
    prendiamo un intero <math|n<rsub|0>\<geq\><sqrt|M>>: per
    <math|n\<geq\>n<rsub|0>> vale <math|n<rsup|2>\<geq\>n<rsub|0><rsup|2>\<geq\>M>.
    (In alternativa, con <math|n<rsub|0>\<geq\>max{1,M}>:
    <math|n<rsup|2>\<geq\>n<rsub|0><rsup|2>\<geq\>n<rsub|0>\<geq\>M>.)

    Sia <math|\<varepsilon\>\<gtr\>0>. Per <math|n\<geq\>1>,
    <math|<frac|1|n>\<leq\>\<varepsilon\>\<Leftrightarrow\>n\<geq\><frac|1|\<varepsilon\>>>.
    Prendiamo un intero <math|n<rsub|0>\<geq\>max{1,<frac|1|\<varepsilon\>>}>:
    per <math|n\<geq\>n<rsub|0>> vale <math|0\<less\><frac|1|n>\<leq\>\<varepsilon\>>.

    <em|Controllo.> Con <math|\<varepsilon\>=0,01> basta
    <math|n<rsub|0>=100>: <math|<frac|1|100>=0,01\<leq\>\<varepsilon\>>. Con
    <math|\<varepsilon\>=0,001> serve <math|n<rsub|0>=1000>: la risposta
    dipende dalla sfida.
  </guidato>

  <strong|Perché <math|(-1)<rsup|n>> non ha limite.> Non tende a
  <math|+\<infty\>>: non è mai definitivamente <math|\<geq\>2025>. Non tende
  a <math|-\<infty\>>: non è mai definitivamente <math|\<leq\>-37>. E nessun
  <math|\<#2113\>> reale funziona: se <math|\<#2113\>\<gtr\>1> o
  <math|\<#2113\>\<less\>-1>, un intervallo abbastanza stretto attorno a
  <math|\<#2113\>> non contiene alcun termine; se
  <math|-1\<less\>\<#2113\>\<less\>1>, un intervallo stretto non contiene né
  <math|1> né <math|-1>; se <math|\<#2113\>=1>, con <math|\<varepsilon\>=1> i
  termini uguali a <math|-1> restano fuori da <math|[0,2]>, e simmetricamente
  per <math|\<#2113\>=-1>. Il punto è che <math|1> e <math|-1> compaiono
  <em|frequentemente>.

  <section|Intuizioni sbagliate>

  <\itemize>
    <item><em|Divergere a <math|+\<infty\>> non vuol dire crescere
    definitivamente.> <math|0,2,1,3,2,4,3,5,\<ldots\>> tende a
    <math|+\<infty\>> ma scende a ogni passo pari.

    <item><em|Tendere a <math|0> non vuol dire arrivare da un lato.>
    <math|<frac|(-1)<rsup|n>|n>\<rightarrow\>0> cambiando segno a ogni passo.

    <item><em|Tendere a <math|0<rsup|+>> non vuol dire decrescere
    definitivamente>: si può arrivare da sopra con piccole oscillazioni.

    <item><em|Limitata non vuol dire convergente.> <math|0,1,0,1,\<ldots\>>
    sta in <math|[0,1]> ma non converge.
  </itemize>

  <figura|<image|analisi-1-assets/oscilla.pdf|130.0mm|50.0mm||>|La
  successione <math|0,2,1,3,2,4,\<ldots\>>: va a <math|+\<infty\>> pur
  scendendo infinite volte. Ogni soglia <math|M> viene superata
  definitivamente.>

  <section|Tre conseguenze della definizione>

  <strong|Se <math|a<rsub|n>\<rightarrow\>+\<infty\>>, la successione è
  limitata inferiormente.> Con <math|M=2025> c'è <math|n<rsub|0>> tale che
  <math|a<rsub|n>\<geq\>2025> per <math|n\<geq\>n<rsub|0>>. Prima di
  <math|n<rsub|0>> restano solo finiti termini:<math|L=min{2025,a<rsub|0>,\<ldots\>,a<rsub|n<rsub|0>-1>}>
  sta sotto tutti.

  <strong|Ogni successione convergente è limitata.> Se
  <math|a<rsub|n>\<rightarrow\>\<#2113\>>, con <math|\<varepsilon\>=5> si ha
  <math|\<#2113\>-5\<leq\>a<rsub|n>\<leq\>\<#2113\>+5> per
  <math|n\<geq\>n<rsub|0>>; allora <math|A=min{\<#2113\>-5,a<rsub|0>,\<ldots\>,a<rsub|n<rsub|0>-1>}>
  e <math|B=max{\<#2113\>+5,a<rsub|0>,\<ldots\>,a<rsub|n<rsub|0>-1>}>
  controllano tutto. Il viceversa è falso: <math|0,1,0,1,\<ldots\>>.

  <strong|Permanenza del segno.> Se <math|a<rsub|n>\<rightarrow\>\<#2113\>\<gtr\>0>,
  allora <math|a<rsub|n>\<gtr\>0> definitivamente. Con
  <math|\<varepsilon\>=<frac|\<#2113\>|2>>: definitivamente
  <math|<frac|\<#2113\>|2>\<leq\>a<rsub|n>\<leq\><frac|3\<#2113\>|2>>, e
  <math|<frac|\<#2113\>|2>\<gtr\>0>. Più in generale, se
  <math|a<rsub|n>\<rightarrow\><sqrt|17>>, allora
  <math|4\<leq\>a<rsub|n>\<leq\>5> definitivamente: basta un
  <math|\<varepsilon\>> così piccolo che <math|4\<leq\><sqrt|17>-\<varepsilon\>>
  e <math|<sqrt|17>+\<varepsilon\>\<leq\>5>.

  <section|I teoremi di confronto>

  <strong|Confronto con un limite infinito.> Se
  <math|a<rsub|n>\<leq\>b<rsub|n>> definitivamente, allora
  <math|a<rsub|n>\<rightarrow\>+\<infty\>\<Rightarrow\>b<rsub|n>\<rightarrow\>+\<infty\>>
  e <math|b<rsub|n>\<rightarrow\>-\<infty\>\<Rightarrow\>a<rsub|n>\<rightarrow\>-\<infty\>>.

  <em|Dimostrazione.> <math|a<rsub|n>\<leq\>b<rsub|n>> per
  <math|n\<geq\>n<rsub|0>>. Fissato <math|M>, <math|a<rsub|n>\<geq\>M> per
  <math|n\<geq\>n<rsub|1>>. Per <math|n\<geq\>n<rsub|2>=max{n<rsub|0>,n<rsub|1>}>
  valgono entrambe, quindi <math|b<rsub|n>\<geq\>a<rsub|n>\<geq\>M>.
  <math|\<square\>>

  <\attenzione|Le disuguaglianze e i limiti finiti>
    Da <math|a<rsub|n>\<leq\>b<rsub|n>> e <math|b<rsub|n>\<rightarrow\>5> non
    si deduce il limite di <math|a<rsub|n>>: può convergere a un
    <math|\<#2113\>\<leq\>5>, andare a <math|-\<infty\>>, o non avere limite.
    E le disuguaglianze strette non passano al limite:
    <math|5-<frac|3|n>\<less\>5-<frac|1|n>> per ogni <math|n\<geq\>1>, ma
    entrambe tendono a <math|5>.
  </attenzione>

  <strong|Teorema dei carabinieri.> Se <math|a<rsub|n>\<leq\>b<rsub|n>\<leq\>c<rsub|n>>
  definitivamente e <math|a<rsub|n>\<rightarrow\>\<#2113\>>,
  <math|c<rsub|n>\<rightarrow\>\<#2113\>> con
  <math|\<#2113\>\<in\>\<bbb-R\>>, allora
  <math|b<rsub|n>\<rightarrow\>\<#2113\>>.

  <em|Dimostrazione.> Fissato <math|\<varepsilon\>\<gtr\>0>:
  <math|\<#2113\>-\<varepsilon\>\<leq\>a<rsub|n>> per
  <math|n\<geq\>n<rsub|a>>, <math|c<rsub|n>\<leq\>\<#2113\>+\<varepsilon\>>
  per <math|n\<geq\>n<rsub|c>>, <math|a<rsub|n>\<leq\>b<rsub|n>\<leq\>c<rsub|n>>
  per <math|n\<geq\>n<rsub|0>>. Per <math|n\<geq\>max{n<rsub|a>,n<rsub|c>,n<rsub|0>}>:

  <\equation*>
    \<#2113\>-\<varepsilon\>\<leq\>a<rsub|n>\<leq\>b<rsub|n>\<leq\>c<rsub|n>\<leq\>\<#2113\>+\<varepsilon\>.<space|2em>\<square\>
  </equation*>

  Delle quattro disuguaglianze date dalle due definizioni ne servono solo
  due: <math|\<#2113\>-\<varepsilon\>\<leq\>a<rsub|n>> e
  <math|c<rsub|n>\<leq\>\<#2113\>+\<varepsilon\>>.

  <figura|<image|analisi-1-assets/carabinieri.pdf|155.0mm|55.0mm||>|I due
  carabinieri <math|a<rsub|n>> e <math|c<rsub|n>> convergono allo stesso
  <math|\<#2113\>>; il sorvegliato <math|b<rsub|n>>, stretto fra loro, non ha
  scampo.>

  <\officina|8. Sfida e risposta: dimostrare un limite>
    Una definizione di limite è un gioco <math|\<forall\> \<exists\>
    \<forall\>>: l'avversario sceglie la sfida (<math|\<varepsilon\>\<gtr\>0>
    o <math|M>), tu rispondi con un indice <math|n<rsub|0>>, e poi la
    disuguaglianza deve valere per <em|tutti> gli <math|n\<geq\>n<rsub|0>>.

    <\enumerate>
      <item>Scrivi \SFissato <math|\<varepsilon\>\<gtr\>0>\T (non sceglierlo
      tu).

      <item>In brutta copia risolvi la disuguaglianza desiderata in <math|n>
      e trova un <math|n<rsub|0>> che funziona; può dipendere da
      <math|\<varepsilon\>>.

      <item>Se hai più informazioni \Sdefinitive\T, ognuna con il suo indice,
      prendi il massimo degli indici: da lì valgono tutte.

      <item>Per i casi limite (per esempio <math|M\<leq\>0>) basta spesso
      osservare che la disuguaglianza è vera sempre.
    </enumerate>
  </officina>

  <\verifica|7>
    <strong|(a)> Scrivi la definizione di
    <math|a<rsub|n>\<rightarrow\>3<rsup|->>. <strong|(b)> Dimostra con la
    definizione che <math|<frac|n|n+1>\<rightarrow\>1>. <strong|(c)> Vero o
    falso: se <math|a<rsub|n>\<less\>1> per ogni <math|n> e
    <math|a<rsub|n>\<rightarrow\>\<#2113\>>, allora
    <math|\<#2113\>\<less\>1>.
  </verifica>

  <chapter|Monotonia, il numero <math|e> e l'algebra dei limiti>

  <\inbreve>
    Una successione monotona non può oscillare: o converge o diverge. Questo
    teorema, figlio della completezza, ci regala il numero <math|e>. Poi
    impariamo a calcolare limiti di somme e prodotti, e a riconoscere le
    forme in cui i limiti dei pezzi non bastano.
  </inbreve>

  <section|Limitate e monotone>

  <math|(a<rsub|n>)> è <strong|limitata superiormente> se <math|\<exists\>L,
  a<rsub|n>\<leq\>L> per ogni <math|n>; <strong|inferiormente> se
  <math|\<exists\>L, a<rsub|n>\<geq\>L>; <strong|limitata> se ha entrambe le
  proprietà, cioè <math|\<exists\>L, \|a<rsub|n>\|\<leq\>L> per ogni
  <math|n>.

  È <strong|strettamente crescente> se <math|a<rsub|n+1>\<gtr\>a<rsub|n>> per
  ogni <math|n>, <strong|debolmente crescente> se
  <math|a<rsub|n+1>\<geq\>a<rsub|n>>; <strong|strettamente> o
  <strong|debolmente decrescente> con <math|\<less\>> o <math|\<leq\>>. Per
  transitività, confrontare termini consecutivi equivale a confrontare
  termini qualsiasi: per esempio, debolmente crescente vuol dire
  <math|m\<gtr\>n\<Rightarrow\>a<rsub|m>\<geq\>a<rsub|n>> (nei casi deboli va
  bene anche <math|m\<geq\>n>). Una successione debolmente crescente è
  limitata inferiormente da <math|a<rsub|0>>; una debolmente decrescente è
  limitata superiormente da <math|a<rsub|0>>.

  <section|Il teorema sulle successioni monotone>

  <strong|Teorema.> Se <math|(a<rsub|n>)> è debolmente crescente, allora
  <math|a<rsub|n>\<rightarrow\>\<#2113\>> con

  <\equation*>
    \<#2113\>=sup{a<rsub|n>:n\<in\>\<bbb-N\>}\<in\>\<bbb-R\>\<cup\>{+\<infty\>}.
  </equation*>

  Se è debolmente decrescente, <math|a<rsub|n>\<rightarrow\>inf{a<rsub|n>}\<in\>\<bbb-R\>\<cup\>{-\<infty\>}>.

  <em|Dimostrazione (caso crescente).> Usiamo la caratterizzazione del
  supremo (capitolo 4).

  <em|Caso <math|\<#2113\>=+\<infty\>>.> Fissato <math|M>, l'insieme dei
  termini non è limitato, quindi esiste <math|n<rsub|0>> con
  <math|a<rsub|n<rsub|0>>\<geq\>M>. Per monotonia
  <math|a<rsub|n>\<geq\>a<rsub|n<rsub|0>>\<geq\>M> per ogni
  <math|n\<geq\>n<rsub|0>>.

  <em|Caso <math|\<#2113\>\<in\>\<bbb-R\>>.> Fissato
  <math|\<varepsilon\>\<gtr\>0>, esiste <math|n<rsub|0>> con
  <math|a<rsub|n<rsub|0>>\<geq\>\<#2113\>-\<varepsilon\>>; per monotonia
  <math|a<rsub|n>\<geq\>\<#2113\>-\<varepsilon\>> per
  <math|n\<geq\>n<rsub|0>>. La disuguaglianza dall'altra parte vale per tutti
  gli <math|n>, perché <math|\<#2113\>> è un maggiorante:
  <math|a<rsub|n>\<leq\>\<#2113\>\<leq\>\<#2113\>+\<varepsilon\>>.
  <math|\<square\>>

  <strong|Corollario.> Crescente e limitata superiormente
  <math|\<Rightarrow\>> converge a un limite reale; decrescente e limitata
  inferiormente <math|\<Rightarrow\>> converge.

  <figura|<image|analisi-1-assets/monotona.pdf|150.0mm|52.5mm||>|Una
  successione crescente e limitata non ha scelta: sale verso il proprio
  supremo <math|\<#2113\>>. Una volta superata la quota
  <math|\<#2113\>-\<varepsilon\>>, la monotonia la tiene lì sopra per
  sempre.>

  <strong|Da che lato?> Se <math|(a<rsub|n>)> è <em|debolmente> crescente e
  limitata, non si può dire in generale <math|a<rsub|n>\<rightarrow\>\<#2113\><rsup|->>:
  potrebbe essere <math|a<rsub|n>=\<#2113\>> definitivamente (una volta
  raggiunto <math|\<#2113\>>, i termini successivi sono
  <math|\<geq\>\<#2113\>> per monotonia e <math|\<leq\>\<#2113\>> perché
  <math|\<#2113\>> è il supremo). Se è <em|strettamente> crescente, invece,
  <math|a<rsub|n>\<rightarrow\>\<#2113\><rsup|->>: se fosse
  <math|a<rsub|n>=\<#2113\>>, si avrebbe <math|a<rsub|n+1>\<gtr\>\<#2113\>>,
  contro il fatto che <math|\<#2113\>> è un maggiorante.

  <section|Il numero di Nepero>

  Sia <math|e<rsub|n>=(1+<frac|1|n>)<rsup|n>> per <math|n\<geq\>1>.

  <strong|Teorema.> <math|(e<rsub|n>)> è crescente e limitata superiormente;
  il suo limite si chiama <math|e>, e <math|2\<less\>e\<less\>3>
  (<math|e=2,71828\<ldots\>>).

  Il protagonista è Bernoulli: <math|(1+x)<rsup|n>\<geq\>1+n*x> per
  <math|x\<geq\>-1>.

  <strong|Fatto 1: <math|e<rsub|n>\<geq\>2>.> Bernoulli con
  <math|x=<frac|1|n>>: <math|(1+<frac|1|n>)<rsup|n>\<geq\>1+1=2>. (Non serve
  davvero: segue dalla monotonia, <math|e<rsub|n>\<geq\>e<rsub|1>=2>.)

  <strong|Fatto 2: <math|(e<rsub|n>)> è crescente.> Per <math|n\<geq\>2>
  riportiamo tutto all'esponente comune <math|n>:

  <\eqnarray*>
    <tformat|<table|<row|<cell|e<rsub|n>\<geq\>e<rsub|n-1>>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|<frac|n+1|n>|)><rsup|n>\<geq\><around*|(|<frac|n|n-1>|)><rsup|n-1>=<around*|(|<frac|n|n-1>|)><rsup|n>\<cdot\><frac|n-1|n>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|<frac|n+1|n>\<cdot\><frac|n-1|n>|)><rsup|n>\<geq\><frac|n-1|n><space|1em>\<Leftrightarrow\><space|1em><around*|(|1-<frac|1|n<rsup|2>>|)><rsup|n>\<geq\>1-<frac|1|n>.>>>>
  </eqnarray*>

  L'ultima è Bernoulli con <math|x=-<frac|1|n<rsup|2>>\<geq\>-1>:
  <math|(1-<frac|1|n<rsup|2>>)<rsup|n>\<geq\>1-n\<cdot\><frac|1|n<rsup|2>>=1-<frac|1|n>>.

  <strong|Fatto 3: <math|e<rsub|n>\<less\>3>.> In brutta copia: col binomio
  di Newton

  <\equation*>
    e<rsub|n>=<big|sum><rsub|k=0><rsup|n><binom|n|k><frac|1|n<rsup|k>>=1+1+<frac|n(n-1)|2!>\<cdot\><frac|1|n<rsup|2>>+<frac|n(n-1)(n-2)|3!>\<cdot\><frac|1|n<rsup|3>>+\<cdots\>
  </equation*>

  e ogni rapporto <math|<frac|n(n-1)\<cdots\>(n-k+1)|n<rsup|k>>> è
  <math|\<leq\>1>. Servono tre attrezzi: <math|<binom|n|k><frac|1|n<rsup|k>>\<leq\><frac|1|k!>>;
  <math|k!\<geq\>2<rsup|k-1>> (facile induzione);
  <math|<big|sum><rsub|k=0><rsup|n-1><frac|1|2<rsup|k>>=2-<frac|1|2<rsup|n-1>>>
  (somma geometrica). In bella copia:

  <\eqnarray*>
    <tformat|<table|<row|<cell|e<rsub|n>>|<cell|=>|<cell|1+<big|sum><rsub|k=1><rsup|n><binom|n|k><frac|1|n<rsup|k>>\<leq\>1+<big|sum><rsub|k=1><rsup|n><frac|1|k!>\<leq\>1+<big|sum><rsub|k=1><rsup|n><frac|1|2<rsup|k-1>>>>|<row|<cell|>|<cell|=>|<cell|1+<big|sum><rsub|k=0><rsup|n-1><frac|1|2<rsup|k>>=3-<frac|1|2<rsup|n-1>>\<less\>3.>>>>
  </eqnarray*>

  <strong|Perché le disuguaglianze strette.> Dai tre fatti segue
  <math|2\<leq\>e\<leq\>3>. Ma <math|e<rsub|n>\<less\>3> per ogni <math|n>
  non basta a escludere <math|e=3> (le disuguaglianze strette non passano al
  limite): bisogna tenersi un piccolo avanzo. Ecco una scelta concreta. Per
  <math|k=3> si ha <math|<frac|1|3!>=<frac|1|6>\<less\><frac|1|4>=<frac|1|2<rsup|2>>>,
  quindi per <math|n\<geq\>3> nella seconda stima si perde almeno
  <math|<frac|1|4>-<frac|1|6>=<frac|1|12>>, e
  <math|e<rsub|n>\<leq\>3-<frac|1|12>>; passando al limite
  <math|e\<leq\>3-<frac|1|12>\<less\>3>. Dall'altra parte
  <math|e<rsub|2>=<frac|9|4>> e la successione cresce, quindi
  <math|e\<geq\><frac|9|4>\<gtr\>2>.

  <figura|<image|analisi-1-assets/nepero.pdf|140.0mm|55.0mm||>|I termini
  <math|e<rsub|n>=(1+<frac|1|n>)<rsup|n>> per <math|n=1,\<ldots\>,12>:
  crescono, ma restano sotto <math|3>. Il loro supremo è
  <math|e\<approx\>2,718>.>

  <section|La retta estesa e le forme indeterminate>

  Poniamo <math|<wide|\<bbb-R\>|\<bar\>>=\<bbb-R\>\<cup\>{+\<infty\>,-\<infty\>}>.
  Scrivere <math|a<rsub|n>\<rightarrow\>\<#2113\>\<in\><wide|\<bbb-R\>|\<bar\>>>
  vuol dire che il limite esiste, finito o infinito. Le operazioni si
  estendono in modo ragionevole:

  <\equation*>
    7+\<infty\>=+\<infty\>,<space|1em>7-\<infty\>=-\<infty\>,<space|1em>+\<infty\>+\<infty\>=+\<infty\>,<space|1em>5\<cdot\>(+\<infty\>)=+\<infty\>,<space|1em>-7\<cdot\>(-\<infty\>)=+\<infty\>,<space|1em><frac|18|+\<infty\>>=0<rsup|+>.
  </equation*>

  Non hanno un valore: <math|+\<infty\>-\<infty\>>,
  <math|0\<cdot\>(\<pm\>\<infty\>)>, <math|<frac|\<pm\>\<infty\>|\<pm\>\<infty\>>>,
  <math|<frac|0|0>>, <math|<frac|7|0>>. L'ultima diventa accettabile se si
  conosce il segno: <math|<frac|7|0<rsup|+>>=+\<infty\>>,
  <math|<frac|7|0<rsup|->>=-\<infty\>>.

  <strong|Teoremi algebrici.> Se <math|a<rsub|n>\<rightarrow\>\<#2113\><rsub|1>>
  e <math|b<rsub|n>\<rightarrow\>\<#2113\><rsub|2>> in
  <math|<wide|\<bbb-R\>|\<bar\>>>, allora somma, differenza, prodotto e
  quoziente tendono a <math|\<#2113\><rsub|1>+\<#2113\><rsub|2>>,
  <math|\<#2113\><rsub|1>-\<#2113\><rsub|2>>,
  <math|\<#2113\><rsub|1>\<#2113\><rsub|2>>,
  <math|<frac|\<#2113\><rsub|1>|\<#2113\><rsub|2>>>, <em|tranne nei casi
  problematici>.

  <\attenzione|Achtung! Forma indeterminata non vuol dire \Snon esiste\T>
    Nelle forme indeterminate il limite non si deduce <em|soltanto> dai
    limiti dei pezzi; non significa che non esista. Con
    <math|a<rsub|n>=2n\<rightarrow\>+\<infty\>> e
    <math|b<rsub|n>\<rightarrow\>+\<infty\>>:

    <\center>
      <tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.8em>|<cwith|1|-1|1|-1|cell-rsep|0.8em>|<cwith|1|1|1|-1|cell-bborder|0.5pt>|<table|<row|<cell|<math|b<rsub|n>>>|<cell|<math|a<rsub|n>-b<rsub|n>>>|<cell|limite>>|<row|<cell|<math|n>>|<cell|<math|n>>|<cell|<math|+\<infty\>>>>|<row|<cell|<math|3n>>|<cell|<math|-n>>|<cell|<math|-\<infty\>>>>|<row|<cell|<math|2n-42+<frac|1|n>>>|<cell|<math|42-<frac|1|n>>>|<cell|<math|42>>>|<row|<cell|<math|2n+(-1)<rsup|n>>>|<cell|<math|-(-1)<rsup|n>>>|<cell|non
      esiste>>>>>
    </center>

    Stessa forma <math|+\<infty\>-\<infty\>>, quattro esiti diversi.
  </attenzione>

  <section|Tre dimostrazioni con brutta e bella copia>

  <strong|Somma, caso finito.> Se <math|a<rsub|n>\<rightarrow\>\<#2113\><rsub|1>>,
  <math|b<rsub|n>\<rightarrow\>\<#2113\><rsub|2>>, allora
  <math|a<rsub|n>+b<rsub|n>\<rightarrow\>\<#2113\><rsub|1>+\<#2113\><rsub|2>>.
  <em|Brutta copia>: per la disuguaglianza triangolare

  <\equation*>
    \|(a<rsub|n>+b<rsub|n>)-(\<#2113\><rsub|1>+\<#2113\><rsub|2>)\|\<leq\>\|a<rsub|n>-\<#2113\><rsub|1>\|+\|b<rsub|n>-\<#2113\><rsub|2>\|,
  </equation*>

  e basta rendere ciascun pezzo <math|\<leq\><frac|\<varepsilon\>|2>>.
  <em|Bella copia>: fissato <math|\<varepsilon\>\<gtr\>0>, la definizione con
  <math|<frac|\<varepsilon\>|2>> dà <math|n<rsub|a>> e <math|n<rsub|b>>; per
  <math|n\<geq\>max{n<rsub|a>,n<rsub|b>}> la somma è
  <math|\<leq\>\<varepsilon\>>.

  <strong|Somma con un termine a <math|+\<infty\>>.> Se
  <math|a<rsub|n>\<rightarrow\>+\<infty\>> e <math|b<rsub|n>\<geq\>B> per
  ogni <math|n>, allora <math|a<rsub|n>+b<rsub|n>\<rightarrow\>+\<infty\>>.
  (L'ipotesi vale se <math|b<rsub|n>> ha limite reale o tende a
  <math|+\<infty\>>: copre <math|\<#2113\>+\<infty\>> e
  <math|+\<infty\>+\<infty\>>.) <em|Brutta copia>: da
  <math|a<rsub|n>\<geq\>M> verrebbe <math|a<rsub|n>+b<rsub|n>\<geq\>M+B>, non
  <math|\<geq\>M>: conviene spostare la soglia. <em|Bella copia>: fissato
  <math|M>, uso la definizione con la soglia <math|M-B>: per
  <math|n\<geq\>n<rsub|0>>, <math|a<rsub|n>+b<rsub|n>\<geq\>(M-B)+B=M>.

  <strong|Prodotto, caso finito.> Se <math|a<rsub|n>\<rightarrow\>\<#2113\><rsub|1>>,
  <math|b<rsub|n>\<rightarrow\>\<#2113\><rsub|2>>, allora
  <math|a<rsub|n>b<rsub|n>\<rightarrow\>\<#2113\><rsub|1>\<#2113\><rsub|2>>.
  <em|Brutta copia>: aggiungo e tolgo il termine misto
  <math|a<rsub|n>\<#2113\><rsub|2>>:

  <\equation*>
    \|a<rsub|n>b<rsub|n>-\<#2113\><rsub|1>\<#2113\><rsub|2>\|=\|a<rsub|n>(b<rsub|n>-\<#2113\><rsub|2>)+\<#2113\><rsub|2>(a<rsub|n>-\<#2113\><rsub|1>)\|\<leq\>\|a<rsub|n>\|\<cdot\>\|b<rsub|n>-\<#2113\><rsub|2>\|+\|\<#2113\><rsub|2>\|\<cdot\>\|a<rsub|n>-\<#2113\><rsub|1>\|.
  </equation*>

  Nel primo addendo <math|\|a<rsub|n>\|> non è enorme (una convergente è
  limitata) e l'altro fattore è piccolo; nel secondo
  <math|\|\<#2113\><rsub|2>\|> è fisso. <em|Bella copia>: sia
  <math|\|a<rsub|n>\|\<leq\>A> per ogni <math|n>. Fissato
  <math|\<varepsilon\>\<gtr\>0>, uso la definizione per <math|b<rsub|n>> con
  <math|<frac|\<varepsilon\>|2A+25>> e per <math|a<rsub|n>> con
  <math|<frac|\<varepsilon\>|2\|\<#2113\><rsub|2>\|+37>>. Per <math|n> oltre
  entrambi gli indici,

  <\equation*>
    \|a<rsub|n>b<rsub|n>-\<#2113\><rsub|1>\<#2113\><rsub|2>\|\<leq\>A<frac|\<varepsilon\>|2A+25>+\|\<#2113\><rsub|2>\|<frac|\<varepsilon\>|2\|\<#2113\><rsub|2>\|+37>\<leq\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>.
  </equation*>

  Le costanti <math|25> e <math|37> (qualunque numero positivo va bene)
  evitano di dividere per <math|0> quando <math|A=0> o
  <math|\<#2113\><rsub|2>=0>; con <math|<frac|\<varepsilon\>|2A>> e
  <math|<frac|\<varepsilon\>|2\|\<#2113\><rsub|2>\|>> il conto sarebbe lo
  stesso, ma rischioso.

  <section|Esempi>

  <\guidato|Chi comanda si raccoglie (lezione)>
    Calcola <math|lim<rsub|n\<rightarrow\>+\<infty\>><frac|n<rsup|2>+3n+1|2n<rsup|2>-7>>
    e <math|lim<rsub|n\<rightarrow\>+\<infty\>><frac|n<rsup|2>+arctan
    n|n+arctan(n<rsup|2>)>>.

    <em|Idea.> Raccogli il termine dominante sopra e sotto: resta una
    frazione di pezzi con limite noto.

    <em|Conto.>

    <\equation*>
      <frac|n<rsup|2>(1+<frac|3|n>+<frac|1|n<rsup|2>>)|n<rsup|2>(2-<frac|7|n<rsup|2>>)>\<rightarrow\><frac|1+0+0|2-0>=<frac|1|2>.
    </equation*>

    Nel secondo, <math|<frac|n<rsup|2>(1+<frac|arctan
    n|n<rsup|2>>)|n(1+<frac|arctan(n<rsup|2>)|n>)>=n\<cdot\><frac|1+<frac|arctan
    n|n<rsup|2>>|1+<frac|arctan(n<rsup|2>)|n>>>. Poiché <math|0\<leq\>arctan
    x\<leq\><frac|\<pi\>|2>> per <math|x\<geq\>0>, i due quozienti stanno fra
    <math|0> e <math|<frac|\<pi\>|2n>> (o <math|<frac|\<pi\>|2n<rsup|2>>>) e
    tendono a <math|0> per i carabinieri. La frazione tende a <math|1>, il
    limite è <math|(+\<infty\>)\<cdot\>1=+\<infty\>>.

    <em|Controllo.> Con <math|n=1000> la prima frazione vale circa
    <math|0,5015>.
  </guidato>

  <strong|Un pezzo oscillante.> <math|n<rsup|2>-n cos n> è una forma
  <math|+\<infty\>-\<infty\>> con un coseno ballerino. Raccogliendo:
  <math|n(n-cos n)>; poiché <math|cos n\<leq\>1>, <math|n-cos
  n\<geq\>n-1\<rightarrow\>+\<infty\>>, quindi <math|n-cos
  n\<rightarrow\>+\<infty\>> per confronto, e il prodotto va a
  <math|(+\<infty\>)(+\<infty\>)=+\<infty\>>.

  <strong|Un mostro dentro il seno.> <math|<frac|sin(<text|Mostro>)|n>\<rightarrow\>0>
  qualunque sia il Mostro: <math|-<frac|1|n>\<leq\><frac|sin(<text|Mostro>)|n>\<leq\><frac|1|n>>,
  e i carabinieri concludono. In particolare <math|<frac|sin
  n|n>\<rightarrow\>0>.

  <\officina|9. Brutta copia, bella copia; aggiungi e togli>
    Nelle dimostrazioni con <math|\<varepsilon\>> si lavora due volte.

    <\itemize>
      <item><em|Brutta copia>: parti da ciò che vuoi
      (<math|\|\<ldots\>\|\<leq\>\<varepsilon\>>) e lavora all'indietro:
      spezza, stima, scopri quali tolleranze servono ai pezzi
      (<math|<frac|\<varepsilon\>|2>>, una soglia spostata
      <math|M-B>\<ldots\>).

      <item><em|Bella copia>: riscrivi in avanti. \SFissato
      <math|\<varepsilon\>\<gtr\>0>; uso la definizione con <math|\<ldots\>>;
      per <math|n\<geq\>max{\<ldots\>}> vale\<ldots\>\T.

      <item><em|Aggiungi e togli>: per confrontare <math|a<rsub|n>b<rsub|n>>
      con <math|\<#2113\><rsub|1>\<#2113\><rsub|2>>, inserisci un termine
      misto che separa le due differenze. Lo rivedremo con le derivate del
      prodotto.

      <item>Mai dividere per qualcosa che può essere <math|0>: aggiungi una
      costante positiva al denominatore.
    </itemize>
  </officina>

  <\verifica|8>
    <strong|(a)> Una successione crescente ha sempre limite? Converge sempre?
    <strong|(b)> Dimostra che, se <math|a<rsub|n>\<rightarrow\>\<#2113\>> e
    <math|\<lambda\>\<in\>\<bbb-R\>>, allora
    <math|\<lambda\>a<rsub|n>\<rightarrow\>\<lambda\>\<#2113\>>. <strong|(c)>
    Calcola <math|lim<rsub|n\<rightarrow\>+\<infty\>><frac|3n<rsup|3>-n|1-n<rsup|3>>>.
  </verifica>

  <chapter|Radici, rapporti e gerarchia degli infiniti>

  <\inbreve>
    Chi vince fra <math|3<rsup|n>> e <math|n<rsup|78>>? Fra <math|n!> e
    <math|3<rsup|n>>? Per rispondere confrontiamo una successione con una
    progressione geometrica <math|q<rsup|n>>, guardando la sua radice
    <math|n>-esima o il rapporto fra termini consecutivi. La soglia decisiva
    è sempre <math|1>.
  </inbreve>

  <section|Potenze e radici con Bernoulli>

  <strong|<math|2<rsup|n>\<rightarrow\>+\<infty\>>.> Si vorrebbe scegliere
  <math|n<rsub|0>\<geq\>log<rsub|2>M>, ma sarebbe circolare: per costruire il
  logaritmo serve già sapere che l'esponenziale diventa grande quanto si
  vuole. Usiamo Bernoulli con <math|x=1>:
  <math|2<rsup|n>=(1+1)<rsup|n>\<geq\>1+n\<rightarrow\>+\<infty\>>, e il
  confronto conclude. Più in generale, se <math|a\<gtr\>1>, scrivendo
  <math|a=1+(a-1)>:

  <\equation*>
    a<rsup|n>\<geq\>1+n(a-1)\<rightarrow\>+\<infty\>.
  </equation*>

  <strong|<math|<sqrt|2|n>\<rightarrow\>1>.> Da Bernoulli, per
  <math|x\<geq\>0>, <math|(1+x)<rsup|n>\<geq\>1+n*x>, cioè
  <math|1+x\<geq\><sqrt|1+n*x|n>>. Con <math|x=<frac|1|n>>:

  <\equation*>
    1\<leq\><sqrt|2|n>\<leq\>1+<frac|1|n>,
  </equation*>

  e i carabinieri danno <math|<sqrt|2|n>\<rightarrow\>1>. Per
  <math|a\<geq\>1> si usa <math|x=<frac|a-1|n>>:
  <math|1\<leq\><sqrt|a|n>\<leq\>1+<frac|a-1|n>>. Per
  <math|0\<less\>a\<less\>1>, <math|a=<frac|1|b>> con <math|b\<gtr\>1> e
  <math|<sqrt|a|n>=<frac|1|<sqrt|b|n>>\<rightarrow\>1>.

  <\attenzione|Ragionamento circolare>
    Non si può scrivere <math|<sqrt|2|n>=2<rsup|1/n>\<rightarrow\>2<rsup|0>=1>:
    la continuità dell'esponenziale non è ancora stata costruita, e anzi
    questo limite servirà proprio a costruirla (capitolo 10).
  </attenzione>

  Riassumendo, per ogni <math|a\<gtr\>0>, <math|<sqrt|a|n>\<rightarrow\>1>, e

  <\equation*>
    a<rsup|n>\<rightarrow\><choice|<tformat|<table|<row|<cell|+\<infty\>,>|<cell|a\<gtr\>1,>>|<row|<cell|1,>|<cell|a=1,>>|<row|<cell|0,>|<cell|0\<leq\>a\<less\>1.>>>>>
  </equation*>

  (Per <math|0\<less\>a\<less\>1>: <math|a<rsup|n>=<frac|1|b<rsup|n>>\<rightarrow\>0>.)

  <strong|<math|<sqrt|n|n>\<rightarrow\>1>.> Serve un Bernoulli più preciso,
  che tiene il termine quadratico del binomio: per <math|x\<geq\>0>,
  <math|(1+x)<rsup|n>\<geq\><binom|n|2>x<rsup|2>=<frac|n(n-1)|2>x<rsup|2>>.
  Con <math|x=<sqrt|<frac|2|n-1>>> il secondo membro vale esattamente
  <math|n>, e prendendo la radice <math|n>-esima

  <\equation*>
    1\<leq\><sqrt|n|n>\<leq\>1+<sqrt|<frac|2|n-1>>\<rightarrow\>1.
  </equation*>

  <section|Il criterio della radice>

  Sia <math|a<rsub|n>\<geq\>0> definitivamente e
  <math|<sqrt|a<rsub|n>|n>\<rightarrow\>\<#2113\>\<in\>[0,+\<infty\>]>.
  Allora

  <\itemize>
    <item>se <math|\<#2113\>\<gtr\>1>, <math|a<rsub|n>\<rightarrow\>+\<infty\>>;

    <item>se <math|\<#2113\>\<less\>1>, <math|a<rsub|n>\<rightarrow\>0>;

    <item>se <math|\<#2113\>=1>, il criterio non dice nulla.
  </itemize>

  <em|Dimostrazione.> Se <math|1\<less\>\<#2113\>\<less\>+\<infty\>>, sia
  <math|q=<frac|\<#2113\>+1|2>>, che sta fra <math|1> e <math|\<#2113\>>.
  Definitivamente <math|<sqrt|a<rsub|n>|n>\<geq\>q>, cioè
  <math|a<rsub|n>\<geq\>q<rsup|n>\<rightarrow\>+\<infty\>>. (Se
  <math|\<#2113\>=+\<infty\>> va bene qualunque <math|q\<gtr\>1>.) Se
  <math|\<#2113\>\<less\>1>, lo stesso <math|q> sta fra <math|\<#2113\>> e
  <math|1>: definitivamente <math|0\<leq\>a<rsub|n>\<leq\>q<rsup|n>\<rightarrow\>0>,
  e i carabinieri concludono. <math|\<square\>>

  <figura|<image|analisi-1-assets/geometrica.pdf|155.0mm|52.5mm||>|L'idea dei
  due criteri: se la radice <math|n>-esima (o il rapporto) sta
  definitivamente sopra un <math|q\<gtr\>1>, la successione sta sopra una
  geometrica che esplode; se sta sotto un <math|q\<less\>1>, sta sotto una
  geometrica che si spegne.>

  <section|Il criterio del rapporto>

  Sia <math|a<rsub|n>\<gtr\>0> definitivamente e
  <math|<frac|a<rsub|n+1>|a<rsub|n>>\<rightarrow\>\<#2113\>\<in\>[0,+\<infty\>]>.
  Le conclusioni sono le stesse: <math|\<#2113\>\<gtr\>1\<Rightarrow\>a<rsub|n>\<rightarrow\>+\<infty\>>,
  <math|\<#2113\>\<less\>1\<Rightarrow\>a<rsub|n>\<rightarrow\>0>,
  <math|\<#2113\>=1>: nulla.

  <em|Dimostrazione.> Se <math|1\<less\>\<#2113\>\<less\>+\<infty\>>, con
  <math|q=<frac|\<#2113\>+1|2>\<gtr\>1> si ha, per <math|n\<geq\>n<rsub|0>>,
  <math|a<rsub|n+1>\<geq\>q a<rsub|n>> (si moltiplica per
  <math|a<rsub|n>\<gtr\>0>). Iterando, <math|a<rsub|n<rsub|0>+k>\<geq\>q<rsup|k>a<rsub|n<rsub|0>>>,
  cioè

  <\equation*>
    a<rsub|n>\<geq\>q<rsup|n-n<rsub|0>>a<rsub|n<rsub|0>>=q<rsup|n>\<cdot\>(q<rsup|-n<rsub|0>>a<rsub|n<rsub|0>>),
  </equation*>

  una costante positiva per <math|q<rsup|n>\<rightarrow\>+\<infty\>>. Se
  <math|\<#2113\>\<less\>1>, con <math|q=<frac|\<#2113\>+1|2>\<less\>1> si
  ottiene <math|0\<leq\>a<rsub|n>\<leq\>q<rsup|n-n<rsub|0>>a<rsub|n<rsub|0>>\<rightarrow\>0>.
  <math|\<square\>>

  Non serve conoscere il limite: basta un <math|q\<gtr\>1> superato
  definitivamente dalla radice (o dal rapporto) per avere
  <math|a<rsub|n>\<rightarrow\>+\<infty\>>, e un <math|q\<in\>(0,1)> mai
  superato definitivamente per avere <math|a<rsub|n>\<rightarrow\>0>.

  <section|Dal rapporto alla radice>

  <strong|Teorema.> Se <math|a<rsub|n>\<gtr\>0> definitivamente e
  <math|<frac|a<rsub|n+1>|a<rsub|n>>\<rightarrow\>\<#2113\>\<in\>[0,+\<infty\>]>,
  allora <math|<sqrt|a<rsub|n>|n>\<rightarrow\>\<#2113\>>.

  <em|Dimostrazione per <math|0\<less\>\<#2113\>\<less\>+\<infty\>>.> Fissato
  <math|\<varepsilon\>\<gtr\>0> con <math|\<#2113\>-<frac|\<varepsilon\>|2>\<gtr\>0>,
  definitivamente <math|\<#2113\>-<frac|\<varepsilon\>|2>\<leq\><frac|a<rsub|n+1>|a<rsub|n>>\<leq\>\<#2113\>+<frac|\<varepsilon\>|2>>.
  Iterando da un <math|n<rsub|0>>:

  <\equation*>
    (\<#2113\>-<frac|\<varepsilon\>|2>)<rsup|n-n<rsub|0>>a<rsub|n<rsub|0>>\<leq\>a<rsub|n>\<leq\>(\<#2113\>+<frac|\<varepsilon\>|2>)<rsup|n-n<rsub|0>>a<rsub|n<rsub|0>>.
  </equation*>

  Prendendo la radice <math|n>-esima, a sinistra resta
  <math|(\<#2113\>-<frac|\<varepsilon\>|2>)\<cdot\><sqrt|C<rsub|1>|n>> e a
  destra <math|(\<#2113\>+<frac|\<varepsilon\>|2>)\<cdot\><sqrt|C<rsub|2>|n>>,
  con <math|C<rsub|1>,C<rsub|2>> costanti positive; le loro radici tendono a
  <math|1>, quindi definitivamente <math|\<#2113\>-\<varepsilon\>\<leq\><sqrt|a<rsub|n>|n>\<leq\>\<#2113\>+\<varepsilon\>>.
  I casi <math|\<#2113\>=0> e <math|\<#2113\>=+\<infty\>> si trattano con
  stime da un lato solo. <math|\<square\>>

  Il teorema vale anche per <math|\<#2113\>=1>, dove il criterio del rapporto
  tace. Il viceversa è falso: per <math|1,2,1,2,\<ldots\>> i rapporti
  alternano <math|2> e <math|<frac|1|2>>, ma
  <math|1\<leq\><sqrt|a<rsub|n>|n>\<leq\><sqrt|2|n>>, quindi la radice tende
  a <math|1>.

  <section|La gerarchia degli infiniti>

  <\guidato|Esponenziale, potenza, fattoriale (lezione)>
    Mostra che <math|<frac|3<rsup|n>|n<rsup|78>>\<rightarrow\>+\<infty\>>,
    <math|<frac|n!|3<rsup|n>>\<rightarrow\>+\<infty\>>,
    <math|<frac|n<rsup|n>|n!>\<rightarrow\>+\<infty\>>.

    <em|Idea.> In tutti e tre il rapporto fra termini consecutivi si
    semplifica molto.

    <em|Conto.>

    <\equation*>
      <frac|3<rsup|n+1>|(n+1)<rsup|78>>\<cdot\><frac|n<rsup|78>|3<rsup|n>>=3<around*|(|<frac|n|n+1>|)><rsup|78>\<rightarrow\>3\<gtr\>1,<space|2em><frac|(n+1)!|3<rsup|n+1>>\<cdot\><frac|3<rsup|n>|n!>=<frac|n+1|3>\<rightarrow\>+\<infty\>,
    </equation*>

    <\equation*>
      <frac|(n+1)<rsup|n+1>|(n+1)!>\<cdot\><frac|n!|n<rsup|n>>=<frac|(n+1)<rsup|n>|n<rsup|n>>=<around*|(|1+<frac|1|n>|)><rsup|n>\<rightarrow\>e\<gtr\>1.
    </equation*>

    Il criterio del rapporto conclude nei tre casi.

    <em|Controllo.> L'esponente <math|78> non ha nulla di speciale: un
    esponenziale di base <math|\<gtr\>1> batte ogni potenza fissata di
    <math|n>. In ordine di forza: potenze <math|\<less\>> esponenziali
    <math|\<less\>> fattoriale <math|\<less\>n<rsup|n>>.
  </guidato>

  <strong|<math|<frac|<sqrt|n!|n>|n>\<rightarrow\><frac|1|e>>.> Scriviamo
  <math|<frac|<sqrt|n!|n>|n>=<sqrt|<frac|n!|n<rsup|n>>|n>>. Con
  <math|a<rsub|n>=<frac|n!|n<rsup|n>>> il rapporto è
  <math|<around*|(|<frac|n|n+1>|)><rsup|n>=<frac|1|(1+<frac|1|n>)<rsup|n>>\<rightarrow\><frac|1|e>>,
  e il teorema rapporto<math|\<Rightarrow\>>radice conclude. Allo stesso modo
  <math|<sqrt|n|n>\<rightarrow\>1> (rapporto
  <math|<frac|n+1|n>\<rightarrow\>1>) e <math|<sqrt|n!|n>\<rightarrow\>+\<infty\>>
  (rapporto <math|n+1\<rightarrow\>+\<infty\>>).

  <strong|Altri esempi dalla lezione.>

  <\itemize>
    <item><math|<frac|3<rsup|n<rsup|2>>|n<rsup|n>>\<rightarrow\>+\<infty\>>:
    la radice <math|n>-esima è <math|<frac|3<rsup|n>|n>\<rightarrow\>+\<infty\>>.

    <item><math|<frac|(2n)!|n<rsup|n>>\<rightarrow\>+\<infty\>>: il rapporto
    è <math|<frac|(2n+2)(2n+1)n<rsup|n>|(n+1)<rsup|n+1>>=<frac|2(2n+1)|(1+<frac|1|n>)<rsup|n>>\<rightarrow\>+\<infty\>>.
    Oppure: <math|(2n)!=n!\<cdot\>(n+1)\<cdots\>(2n)\<geq\>n!\<cdot\>n<rsup|n>>,
    quindi <math|<frac|(2n)!|n<rsup|n>>\<geq\>n!\<rightarrow\>+\<infty\>>.

    <item><math|<sqrt|<binom|3n|n>|n>\<rightarrow\><frac|27|4>>: il rapporto
    <math|<frac|(3n+3)(3n+2)(3n+1)|(2n+2)(2n+1)(n+1)>> tende a
    <math|<frac|27|4>>, e si usa il teorema
    rapporto<math|\<Rightarrow\>>radice.
  </itemize>

  <section|Radici di polinomi e somme>

  <math|<sqrt|n<rsup|4>+3n<rsup|3>-7n+25|n>\<rightarrow\>1>. Raccogliendo
  <math|n<rsup|4>>, il primo fattore è <math|(<sqrt|n|n>)<rsup|4>\<rightarrow\>1>;
  il secondo è la radice <math|n>-esima di
  <math|1+<frac|3|n>-<frac|7|n<rsup|3>>+<frac|25|n<rsup|4>>>, che tende a
  <math|1> e quindi sta definitivamente fra <math|<frac|1|2>> e <math|27>: la
  sua radice sta fra <math|<sqrt|1/2|n>> e <math|<sqrt|27|n>>, entrambi
  <math|\<rightarrow\>1>.

  <\guidato|Un esponenziale dentro la radice (lezione)>
    Calcola <math|lim<rsub|n\<rightarrow\>+\<infty\>><sqrt|7<rsup|n>-n<rsup|7>+n<rsup|5>cos(n!)|n>>.

    <em|Idea.> Chi comanda dentro la radice è <math|7<rsup|n>>: lo
    raccogliamo.

    <em|Conto.> <math|<sqrt|7<rsup|n>-n<rsup|7>+n<rsup|5>cos(n!)|n>=7<sqrt|1-<frac|n<rsup|7>|7<rsup|n>>+<frac|n<rsup|5>cos(n!)|7<rsup|n>>|n>>.
    Per la gerarchia <math|<frac|n<rsup|7>|7<rsup|n>>\<rightarrow\>0> e
    <math|<around*|\||<frac|n<rsup|5>cos(n!)|7<rsup|n>>|\|>\<leq\><frac|n<rsup|5>|7<rsup|n>>\<rightarrow\>0>.
    Il radicando tende a <math|1> ed è definitivamente fra <math|<frac|1|2>>
    e <math|2>, quindi la sua radice <math|n>-esima tende a <math|1>. Il
    limite è <math|7>.

    <em|Controllo.> In una somma di esponenziali la radice <math|n>-esima
    \Svede\T solo la base più grande.
  </guidato>

  <strong|Schema operativo.> Per una successione positiva difficile: (1)
  prova <math|<sqrt|a<rsub|n>|n>>; (2) se è complicata, prova il rapporto
  <math|<frac|a<rsub|n+1>|a<rsub|n>>>; (3) se il rapporto ha limite, usalo
  anche per la radice; (4) confronta il limite con <math|1>. Sopra <math|1>
  si esplode, sotto <math|1> ci si spegne, e <math|1> è un caso di equilibrio
  che da solo non decide.

  <\officina|10. Confronto con una geometrica>
    Per mostrare che <math|a<rsub|n>\<rightarrow\>+\<infty\>> (o
    <math|\<rightarrow\>0>) senza calcolarla, si cerca una progressione
    geometrica che la domina dal basso (o dall'alto).

    <\enumerate>
      <item>Calcola il limite <math|\<#2113\>> della radice o del rapporto.

      <item>Scegli un <math|q> <em|strettamente fra> <math|\<#2113\>> e
      <math|1>: <math|q=<frac|\<#2113\>+1|2>> funziona sempre se
      <math|\<#2113\>> è finito.

      <item>Per la definizione di limite, definitivamente la radice (o il
      rapporto) sta dalla parte giusta di <math|q>.

      <item>Itera (per il rapporto) o eleva alla <math|n> (per la radice):
      ottieni <math|a<rsub|n>\<geq\>C q<rsup|n>> oppure
      <math|a<rsub|n>\<leq\>C q<rsup|n>>.
    </enumerate>

    Il trucco \Smetti un numero fra <math|\<#2113\>> e la soglia\T è lo
    stesso della permanenza del segno.
  </officina>

  <\verifica|9>
    <strong|(a)> Perché il criterio del rapporto non decide
    <math|a<rsub|n>=n> e <math|a<rsub|n>=<frac|1|n>>? <strong|(b)> Calcola
    <math|lim<rsub|n\<rightarrow\>+\<infty\>><frac|n<rsup|10>|2<rsup|n>>>.
    <strong|(c)> Calcola <math|lim<rsub|n\<rightarrow\>+\<infty\>><sqrt|3<rsup|n>+5<rsup|n>|n>>.
  </verifica>

  <chapter|Limiti di funzioni e continuità>

  <\inbreve>
    Passiamo dalle successioni alle funzioni: <math|x> non salta più da un
    intero all'altro, ma si avvicina a un punto, o a <math|\<pm\>\<infty\>>,
    in modo continuo. Le definizioni restano un gioco di sfida e risposta; la
    risposta ora si chiama <math|k> o <math|\<delta\>>. Da qui nasce la
    continuità.
  </inbreve>

  <section|La sfida e la risposta>

  Sia <math|D\<subseteq\>\<bbb-R\>> non vuoto e
  <math|f:D\<rightarrow\>\<bbb-R\>>. Vogliamo definire <math|lim f(x)> per
  <math|x\<rightarrow\>+\<infty\>>, <math|x\<rightarrow\>-\<infty\>>,
  <math|x\<rightarrow\>x<rsub|0>>, <math|x\<rightarrow\>x<rsub|0><rsup|+>>,
  <math|x\<rightarrow\>x<rsub|0><rsup|->>. Ogni limite ha quattro esiti:
  <math|\<#2113\>\<in\>\<bbb-R\>>, <math|+\<infty\>>, <math|-\<infty\>>,
  oppure non esiste. In tutte le definizioni <math|M> ed
  <math|\<varepsilon\>> sono la <em|sfida> (interessano <math|M> enormi ed
  <math|\<varepsilon\>> piccolissimi), <math|k> e <math|\<delta\>> la
  <em|risposta>, che dipende dalla sfida.

  <section|Limiti all'infinito>

  Per <math|x\<rightarrow\>+\<infty\>> serve che <math|D> non sia limitato
  superiormente.

  <\itemize>
    <item><math|lim<rsub|x\<rightarrow\>+\<infty\>>f(x)=+\<infty\>> se
    <math|\<forall\>M\<in\>\<bbb-R\> \<exists\>k\<in\>\<bbb-R\>>:
    <math|f(x)\<geq\>M> per ogni <math|x\<in\>D\<cap\>[k,+\<infty\>)>. Più
    <math|M> è alto, più <math|k> va a destra.

    <item><math|lim<rsub|x\<rightarrow\>+\<infty\>>f(x)=-\<infty\>> se
    <math|\<forall\>M \<exists\>k>: <math|f(x)\<leq\>M> per
    <math|x\<in\>D\<cap\>[k,+\<infty\>)>.

    <item><math|lim<rsub|x\<rightarrow\>+\<infty\>>f(x)=\<#2113\>\<in\>\<bbb-R\>>
    se <math|\<forall\>\<varepsilon\>\<gtr\>0 \<exists\>k>:
    <math|\|f(x)-\<#2113\>\|\<leq\>\<varepsilon\>> per
    <math|x\<in\>D\<cap\>[k,+\<infty\>)>. Da <math|k> in poi il grafico resta
    nella striscia fra <math|\<#2113\>-\<varepsilon\>> e
    <math|\<#2113\>+\<varepsilon\>>.
  </itemize>

  Per <math|x\<rightarrow\>-\<infty\>> (con <math|inf D=-\<infty\>>) le
  definizioni sono speculari, con <math|D\<cap\>(-\<infty\>,k]>. Le varianti
  per eccesso e per difetto sono come per le successioni: per esempio
  <math|lim<rsub|x\<rightarrow\>-\<infty\>>f(x)=\<#2113\><rsup|+>> se
  <math|\<forall\>\<varepsilon\>\<gtr\>0 \<exists\>k
  \<forall\>x\<in\>D\<cap\>(-\<infty\>,k],
  \<#2113\>\<less\>f(x)\<leq\>\<#2113\>+\<varepsilon\>>.

  Alcuni dettagli sono <em|obbligatori>: <math|\<varepsilon\>\<gtr\>0>
  stretto, e la disuguaglianza stretta <math|\<#2113\>\<less\>f(x)> che
  distingue <math|\<#2113\><rsup|+>> da <math|\<#2113\>>. Altri sono
  <em|trattabili>, cioè intercambiabili: intervallo chiuso o aperto in
  <math|k>, <math|\<leq\>> o <math|\<less\>> dal lato di
  <math|\<#2113\>\<pm\>\<varepsilon\>>.

  <section|Limiti in un punto>

  Per parlare di <math|x\<rightarrow\>x<rsub|0>> serve che <math|x<rsub|0>>
  sia un <strong|punto di accumulazione> di <math|D>:

  <\equation*>
    \<forall\>\<delta\>\<gtr\>0, <space|1em>(D\<cap\>[x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>])\<setminus\>{x<rsub|0>}\<neq\>\<varnothing\>:
  </equation*>

  in ogni intervallo centrato in <math|x<rsub|0>> c'è un punto di <math|D>
  diverso da <math|x<rsub|0>>. Non si chiede che <math|x<rsub|0>\<in\>D>; e
  un punto <strong|isolato> di <math|D> sta in <math|D> ma non è di
  accumulazione.

  <figura|<image|analisi-1-assets/accumulazione.pdf|140.0mm|26.2mm||>|<math|D=(0,1]\<cup\>{2}>.
  Il punto <math|0> non sta in <math|D> ma è di accumulazione: ogni
  intervallo attorno a lui pesca punti di <math|D>. Il punto <math|2> sta in
  <math|D> ma è isolato.>

  Sia <math|I<rsub|\<delta\>>=(D\<cap\>[x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>])\<setminus\>{x<rsub|0>}>
  l'intorno bucato.

  <\itemize>
    <item><math|lim<rsub|x\<rightarrow\>x<rsub|0>>f(x)=+\<infty\>> se
    <math|\<forall\>M \<exists\>\<delta\>\<gtr\>0>: <math|f(x)\<geq\>M> per
    ogni <math|x\<in\>I<rsub|\<delta\>>>; analogamente <math|-\<infty\>>.

    <item><math|lim<rsub|x\<rightarrow\>x<rsub|0>>f(x)=\<#2113\>\<in\>\<bbb-R\>>
    se

    <\equation*>
      \<forall\>\<varepsilon\>\<gtr\>0 \<exists\>\<delta\>\<gtr\>0 <text|
      tale che >\|f(x)-\<#2113\>\|\<leq\>\<varepsilon\> <text| per ogni
      >x\<in\>I<rsub|\<delta\>>.
    </equation*>
  </itemize>

  Più <math|\<varepsilon\>> è piccolo, più <math|\<delta\>> deve essere
  piccolo.

  <figura|<image|analisi-1-assets/epsilon-delta.pdf|130.0mm|72.5mm||>|Fissata
  la striscia orizzontale di semiampiezza <math|\<varepsilon\>> attorno a
  <math|\<#2113\>>, si cerca una striscia verticale di semiampiezza
  <math|\<delta\>> attorno a <math|x<rsub|0>> in cui il grafico (tranne al
  più il punto <math|x<rsub|0>>) resta nel rettangolo. Il valore in
  <math|x<rsub|0>> non conta.>

  <\immagine|Il limite è una previsione>
    Quanto vale <math|f(x<rsub|0>)>? Non importa: <math|x<rsub|0>> è escluso
    dall'intorno, e potrebbe anche non stare nel dominio. Il limite è una
    <em|previsione> di ciò che dovrebbe succedere in <math|x<rsub|0>>
    guardando ciò che succede lì vicino.
  </immagine>

  I limiti destri e sinistri usano solo i punti da un lato:
  <math|D\<cap\>(x<rsub|0>,x<rsub|0>+\<delta\>]> per il destro,
  <math|D\<cap\>[x<rsub|0>-\<delta\>,x<rsub|0>)> per il sinistro. Combinando
  le varianti:

  <\itemize>
    <item><math|lim<rsub|x\<rightarrow\>7<rsup|+>>f(x)=-\<infty\>>:
    <math|\<forall\>M \<exists\>\<delta\>\<gtr\>0
    \<forall\>x\<in\>D\<cap\>(7,7+\<delta\>], f(x)\<leq\>M>.

    <item><math|lim<rsub|x\<rightarrow\>-\<infty\>>f(x)=7<rsup|+>>:
    <math|\<forall\>\<varepsilon\>\<gtr\>0 \<exists\>k
    \<forall\>x\<in\>D\<cap\>(-\<infty\>,k],
    7\<less\>f(x)\<leq\>7+\<varepsilon\>>.

    <item><math|lim<rsub|x\<rightarrow\>8<rsup|->>f(x)=10<rsup|+>>:
    <math|\<forall\>\<varepsilon\>\<gtr\>0 \<exists\>\<delta\>\<gtr\>0
    \<forall\>x\<in\>D\<cap\>[8-\<delta\>,8),
    10\<less\>f(x)\<leq\>10+\<varepsilon\>>.
  </itemize>

  <section|Continuità>

  Sia <math|x<rsub|0>\<in\>D>. <math|f> è <strong|continua in
  <math|x<rsub|0>>> se <math|lim<rsub|x\<rightarrow\>x<rsub|0>>f(x)=f(x<rsub|0>)>:
  la previsione coincide con il valore. È continua in <math|D> se lo è in
  ogni punto. Esplicitamente (ora si può includere <math|x<rsub|0>>, dove la
  differenza è <math|0>):

  <\equation*>
    \<forall\>\<varepsilon\>\<gtr\>0 \<exists\>\<delta\>\<gtr\>0
    \<forall\>x\<in\>D\<cap\>[x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>],
    <space|1em>\|f(x)-f(x<rsub|0>)\|\<leq\>\<varepsilon\>.
  </equation*>

  Nota burocratica: se <math|x<rsub|0>> è isolato in <math|D> il limite non
  ha senso, e per convenzione <math|f> è continua lì gratis.

  Gli strumenti per calcolare limiti di funzioni sono gli stessi delle
  successioni: confronto e carabinieri, teoremi algebrici, più la continuità,
  i limiti notevoli e i cambi di variabile.

  <strong|Il metateorema misterioso.> <em|Tutte le funzioni ottenute dalle
  elementari con operazioni algebriche e composizioni sono continue nei punti
  in cui non hanno problemi burocratici> (denominatori nulli, logaritmi di
  quantità <math|\<leq\>0>, \<ldots\>). Per dimostrarlo servirebbero tre
  cose: che le elementari sono continue (una dimostrazione per ciascuna), i
  teoremi algebrici, e che la composta di continue è continua. Vediamo un
  esempio del primo e del terzo passo.

  <\guidato|<math|2<rsup|x>> è continua (lezione)>
    Dimostra che <math|lim<rsub|x\<rightarrow\>x<rsub|0>>2<rsup|x>=2<rsup|x<rsub|0>>>
    per ogni <math|x<rsub|0>\<in\>\<bbb-R\>>.

    <em|Idea.> <math|\|2<rsup|x>-2<rsup|x<rsub|0>>\|=2<rsup|x<rsub|0>>\|2<rsup|x-x<rsub|0>>-1\|>:
    basta che <math|2<rsup|h>-1> sia piccolo quando <math|h=x-x<rsub|0>> è
    piccolo. Lo sappiamo lungo <math|h=<frac|1|n>>, perché
    <math|<sqrt|2|n>\<rightarrow\>1>.

    <em|Conto.> Caso <math|x\<gtr\>x<rsub|0>>. Fissato
    <math|\<varepsilon\>\<gtr\>0>, da <math|<sqrt|2|n>\<rightarrow\>1> c'è
    <math|n<rsub|0>> con <math|2<rsup|1/n>-1\<less\><frac|\<varepsilon\>|2<rsup|x<rsub|0>>>>
    per <math|n\<geq\>n<rsub|0>>. Con <math|\<delta\>=<frac|1|n<rsub|0>>> e
    la monotonia di <math|2<rsup|x>>: per <math|0\<leq\>h\<leq\>\<delta\>>,
    <math|2<rsup|h>-1\<leq\>2<rsup|1/n<rsub|0>>-1\<less\><frac|\<varepsilon\>|2<rsup|x<rsub|0>>>>.
    Il caso <math|x\<less\>x<rsub|0>> si tratta in modo analogo ponendo
    <math|x-x<rsub|0>=-h>.

    <em|Controllo.> Non è circolare: <math|<sqrt|2|n>\<rightarrow\>1> è stato
    dimostrato con Bernoulli, senza usare la continuità dell'esponenziale.
    Per questo nel capitolo 9 non scrivevamo
    <math|2<rsup|1/n>\<rightarrow\>2<rsup|0>>.
  </guidato>

  <strong|La composta di continue è continua.> Siano <math|f> continua in
  <math|x<rsub|0>> e <math|g> continua in <math|f(x<rsub|0>)>. Allora
  <math|g\<circ\>f> è continua in <math|x<rsub|0>>. <em|Idea>: <math|x>
  vicino a <math|x<rsub|0>> \<Rightarrow\> <math|f(x)> vicino a
  <math|f(x<rsub|0>)> \<Rightarrow\> <math|g(f(x))> vicino a
  <math|g(f(x<rsub|0>))>.

  <\enumerate>
    <item>Sia <math|\<varepsilon\>\<gtr\>0>.

    <item>Per la continuità di <math|g> esiste
    <math|\<delta\><rsub|1>\<gtr\>0> con <math|\|g(y)-g(f(x<rsub|0>))\|\<leq\>\<varepsilon\>>
    per ogni <math|y\<in\>[f(x<rsub|0>)-\<delta\><rsub|1>,f(x<rsub|0>)+\<delta\><rsub|1>]>.

    <item>Uso la continuità di <math|f> con <math|\<delta\><rsub|1>> <em|al
    posto di <math|\<varepsilon\>>>: c'è <math|\<delta\><rsub|2>\<gtr\>0> con
    <math|\|f(x)-f(x<rsub|0>)\|\<leq\>\<delta\><rsub|1>> per
    <math|\|x-x<rsub|0>\|\<leq\>\<delta\><rsub|2>>.

    <item><math|\<delta\><rsub|2>> è il <math|\<delta\>> cercato: per quegli
    <math|x>, <math|y=f(x)> sta nell'intervallo del punto 2, quindi
    <math|\|g(f(x))-g(f(x<rsub|0>))\|\<leq\>\<varepsilon\>>.
    <math|\<square\>>
  </enumerate>

  <figura|<image|analisi-1-assets/composizione-cont.pdf|150.0mm|42.5mm||>|La
  catena delle tolleranze: la sfida <math|\<varepsilon\>> su <math|g> diventa
  la sfida <math|\<delta\><rsub|1>> su <math|f>, che risponde con
  <math|\<delta\><rsub|2>>.>

  <section|Il cambio di variabile>

  Operativamente, per calcolare <math|lim<rsub|x\<rightarrow\>x<rsub|0>>g(f(x))>:
  pongo <math|y=f(x)>, osservo che <math|y\<rightarrow\>f(x<rsub|0>)> quando
  <math|x\<rightarrow\>x<rsub|0>>, e calcolo
  <math|lim<rsub|y\<rightarrow\>f(x<rsub|0>)>g(y)>. Per esempio
  <math|lim<rsub|x\<rightarrow\>0><frac|sin(cos x)|cos x>>: non è una forma
  indeterminata, la funzione è continua in <math|0> e il limite è
  <math|<frac|sin 1|1>=sin 1>. Oppure: pongo <math|y=cos x\<rightarrow\>1> e
  calcolo <math|lim<rsub|y\<rightarrow\>1><frac|sin y|y>=sin 1>.

  <\officina|11. Il cambio di variabile>
    Uno schema da scrivere sempre per intero: \Spongo <math|y=\<ldots\>>;
    quando <math|x\<rightarrow\>\<ldots\>> si ha
    <math|y\<rightarrow\>\<ldots\>>; il limite diventa
    <math|lim<rsub|y\<rightarrow\>\<ldots\>>\<ldots\>>\T.

    <\itemize>
      <item>Il nuovo punto di arrivo va calcolato, non indovinato.

      <item>Se il limite in <math|y> è un limite in un punto (non un valore),
      serve che <math|y\<neq\>> quel punto vicino a <math|x<rsub|0>>: il
      limite non vede il valore nel punto. (Il lemma preciso è nel capitolo
      11.)

      <item>È la versione pratica della continuità della composta: la sfida
      passa da una funzione all'altra.
    </itemize>
  </officina>

  <\verifica|10>
    <strong|(a)> Scrivi la definizione di
    <math|lim<rsub|x\<rightarrow\>2<rsup|->>f(x)=+\<infty\>>. <strong|(b)>
    Sia <math|D=\<bbb-N\>>. Esiste <math|lim<rsub|x\<rightarrow\>3>f(x)> per
    qualche <math|f:\<bbb-N\>\<rightarrow\>\<bbb-R\>>? E
    <math|lim<rsub|x\<rightarrow\>+\<infty\>>>? <strong|(c)> Dimostra con
    <math|\<varepsilon\>>\<#2013\><math|\<delta\>> che <math|f(x)=3x+1> è
    continua in ogni punto.
  </verifica>

  <chapter|I limiti notevoli>

  <\inbreve>
    Quasi tutte le forme <math|<frac|0|0>> che incontreremo si riducono a
    pochi limiti fondamentali. Li enunciamo, li dimostriamo partendo da due
    \Spadri\T (il seno e il numero <math|e>), e impariamo il gesto che li
    rende utili: moltiplicare e dividere per la quantità giusta, poi cambiare
    variabile.
  </inbreve>

  <section|L'albero genealogico>

  In tutto il capitolo <math|log> è il logaritmo naturale e gli angoli sono
  in radianti.

  <\itemize>
    <item><em|Padri>: <math|lim<rsub|x\<rightarrow\>0><frac|sin x|x>=1>,
    <space|1em><math|lim<rsub|x\<rightarrow\>+\<infty\>><around*|(|1+<frac|1|x>|)><rsup|x>=e>.

    <item><em|Figli>: <math|lim<rsub|x\<rightarrow\>0><frac|1-cos
    x|x<rsup|2>>=<frac|1|2>>, <space|1em><math|lim<rsub|x\<rightarrow\>0><frac|e<rsup|x>-1|x>=1>,
    <space|1em><math|lim<rsub|x\<rightarrow\>0><frac|log(1+x)|x>=1>.

    <item><em|Nipoti>: <math|lim<rsub|x\<rightarrow\>0><frac|tan
    x|x>=lim<rsub|x\<rightarrow\>0><frac|arctan
    x|x>=lim<rsub|x\<rightarrow\>0><frac|arcsin x|x>=1>,
    <space|1em><math|lim<rsub|x\<rightarrow\>0><frac|a<rsup|x>-1|x>=log a>
    (<math|a\<gtr\>0>).

    <item><em|Il limite dimenticato>: <math|lim<rsub|x\<rightarrow\>0<rsup|+>>x
    log x=0>.
  </itemize>

  Sono tutte forme <math|<frac|0|0>>, tranne quello di <math|e> (forma
  <math|1<rsup|\<infty\>>>) e il dimenticato (forma
  <math|0\<cdot\>\<infty\>>).

  <section|Il padre trigonometrico>

  <math|<frac|sin x|x>> è pari (<math|<frac|sin(-x)|-x>=<frac|sin x|x>>),
  quindi basta <math|x\<rightarrow\>0<rsup|+>>. Per
  <math|0\<less\>x\<less\><frac|\<pi\>|2>> vale

  <\equation*>
    sin x\<leq\>x\<leq\>tan x.
  </equation*>

  Sulla circonferenza unitaria, con <math|S=(1,0)>, <math|P=(cos x,sin x)>,
  <math|P<rprime|'>> simmetrico di <math|P> rispetto all'asse orizzontale e
  <math|Q> sulla tangente in <math|S>: la corda <math|P*P<rprime|'>> è lunga
  <math|2sin x> ed è più corta dell'arco, lungo <math|2x>; il settore
  <math|O*S*P>, di area <math|<frac|x|2>>, sta dentro il triangolo
  <math|O*S*Q>, di area <math|<frac|tan x|2>>.

  <figura|<image|analisi-1-assets/seno-x-tan.pdf|155.0mm|70.0mm||>|A
  sinistra: la corda <math|P*P<rprime|'>> (lunga <math|2sin x>) è più corta
  dell'arco (lungo <math|2x>). A destra: il settore grigio (area
  <math|<frac|x|2>>) sta dentro il triangolo <math|O*S*Q> (area
  <math|<frac|tan x|2>>).>

  Dividendo per <math|sin x\<gtr\>0>: <math|1\<leq\><frac|x|sin
  x>\<leq\><frac|1|cos x>>. Per la continuità del coseno <math|<frac|1|cos
  x>\<rightarrow\>1>, i carabinieri danno <math|<frac|x|sin
  x>\<rightarrow\>1> e, passando al reciproco, <math|<frac|sin
  x|x>\<rightarrow\>1>.

  <strong|I figli e i nipoti trigonometrici.> Moltiplicando e dividendo per
  <math|1+cos x>:

  <\equation*>
    <frac|1-cos x|x<rsup|2>>=<frac|sin<rsup|2>x|x<rsup|2>(1+cos
    x)>=<around*|(|<frac|sin x|x>|)><rsup|2><frac|1|1+cos
    x>\<rightarrow\><frac|1|2>.
  </equation*>

  Poi <math|<frac|tan x|x>=<frac|sin x|x>\<cdot\><frac|1|cos
  x>\<rightarrow\>1>. Per l'arcotangente pongo <math|y=arctan x>: <math|x=tan
  y>, <math|y\<rightarrow\>0>, e <math|<frac|arctan x|x>=<frac|y|tan
  y>\<rightarrow\>1>. Allo stesso modo, con <math|y=arcsin x>,
  <math|<frac|arcsin x|x>=<frac|y|sin y>\<rightarrow\>1>.

  <section|Dalle successioni alle funzioni>

  <strong|Lemma dei gradini.> Sia <math|sup D=+\<infty\>> e supponiamo che,
  per ogni <math|n> abbastanza grande, <math|f(x)=a<rsub|n>> per ogni
  <math|x\<in\>D\<cap\>[n,n+1)>. Se <math|a<rsub|n>\<rightarrow\>\<#2113\>\<in\><wide|\<bbb-R\>|\<bar\>>>,
  allora <math|lim<rsub|x\<rightarrow\>+\<infty\>>f(x)=\<#2113\>>. Quello che
  <math|a<rsub|n>> fa per <math|n> grande, <math|f> lo fa per <math|x>
  grande: dato <math|\<varepsilon\>>, si prende un intero <math|N> oltre il
  quale valgono la formula a gradini e <math|\|a<rsub|n>-\<#2113\>\|\<leq\>\<varepsilon\>>;
  ogni <math|x\<geq\>N> cade in un gradino <math|[n,n+1)> con
  <math|n\<geq\>N>.

  <figura|<image|analisi-1-assets/gradini.pdf|140.0mm|65.0mm||>|Per
  <math|x\<in\>[n,n+1)> la funzione <math|(1+<frac|1|x>)<rsup|x>> sta fra due
  gradini, <math|(1+<frac|1|n+1>)<rsup|n>> e <math|(1+<frac|1|n>)<rsup|n+1>>,
  che tendono entrambi a <math|e>.>

  <strong|Il padre esponenziale.> Per <math|x\<in\>[n,n+1)>,
  <math|n\<geq\>1>, confrontando basi (maggiori di <math|1>) ed esponenti:

  <\equation*>
    <around*|(|1+<frac|1|n+1>|)><rsup|n>\<leq\><around*|(|1+<frac|1|x>|)><rsup|x>\<leq\><around*|(|1+<frac|1|n>|)><rsup|n+1>.
  </equation*>

  A destra <math|(1+<frac|1|n>)<rsup|n>\<cdot\>(1+<frac|1|n>)\<rightarrow\>e\<cdot\>1>;
  a sinistra <math|(1+<frac|1|n+1>)<rsup|n+1>\<cdot\>(1+<frac|1|n+1>)<rsup|-1>\<rightarrow\>e\<cdot\>1>.
  Lemma dei gradini e carabinieri: <math|lim<rsub|x\<rightarrow\>+\<infty\>>(1+<frac|1|x>)<rsup|x>=e>.

  Per <math|x\<rightarrow\>-\<infty\>> pongo
  <math|y=-x\<rightarrow\>+\<infty\>>; per <math|y\<gtr\>1>

  <\equation*>
    <around*|(|1+<frac|1|x>|)><rsup|x>=<around*|(|1-<frac|1|y>|)><rsup|-y>=<around*|(|<frac|y|y-1>|)><rsup|y>=<around*|(|1+<frac|1|y-1>|)><rsup|y-1><around*|(|1+<frac|1|y-1>|)>\<rightarrow\>e\<cdot\>1.
  </equation*>

  Con <math|y=<frac|1|x>> i due limiti diventano
  <math|lim<rsub|y\<rightarrow\>0<rsup|\<pm\>>>(1+y)<rsup|1/y>=e>, quindi
  <math|lim<rsub|y\<rightarrow\>0>(1+y)<rsup|1/y>=e>.

  <strong|I figli esponenziali.> Il logaritmo è continuo in <math|e>:
  applicandolo,

  <\equation*>
    log<around*|(|(1+y)<rsup|1/y>|)>=<frac|log(1+y)|y>\<rightarrow\>log e=1.
  </equation*>

  Per l'esponenziale pongo <math|y=log(1+x)>, cioè <math|x=e<rsup|y>-1>;
  <math|x\<rightarrow\>0\<Leftrightarrow\>y\<rightarrow\>0>, e
  <math|<frac|y|e<rsup|y>-1>\<rightarrow\>1>, quindi
  <math|<frac|e<rsup|x>-1|x>\<rightarrow\>1>. Per una base <math|a\<gtr\>0>,
  <math|a\<neq\>1>: <math|a<rsup|x>=e<rsup|x log a>> e

  <\equation*>
    <frac|a<rsup|x>-1|x>=<frac|e<rsup|x log a>-1|x log a>\<cdot\>log
    a\<rightarrow\>log a.
  </equation*>

  Se <math|a=1> il rapporto è <math|0=log 1> per ogni <math|x\<neq\>0>, e il
  risultato vale ancora.

  <strong|Il limite dimenticato.> Per <math|x\<rightarrow\>0<rsup|+>> pongo
  <math|y=log x\<rightarrow\>-\<infty\>> e poi
  <math|z=-y\<rightarrow\>+\<infty\>>: <math|x log
  x=e<rsup|y>y=-<frac|z|e<rsup|z>>\<rightarrow\>0>, perché l'esponenziale
  batte la potenza. Più in generale <math|x<rsup|a>\|log
  x\|<rsup|b>\<rightarrow\>0> per ogni <math|a,b\<gtr\>0>: con <math|z=-log
  x> diventa <math|<frac|z<rsup|b>|e<rsup|a*z>>>.

  Anche il lemma dei gradini serve per la gerarchia: per
  <math|x\<in\>[n,n+1)>, <math|<frac|3<rsup|x>|x<rsup|27>>\<geq\><frac|3<rsup|n>|(n+1)<rsup|27>>\<rightarrow\>+\<infty\>>,
  quindi <math|lim<rsub|x\<rightarrow\>+\<infty\>><frac|3<rsup|x>|x<rsup|27>>=+\<infty\>>.

  <section|Dalle funzioni alle successioni>

  <strong|Lemma.> Se (1) <math|a<rsub|n>\<in\>D> definitivamente e, quando
  <math|x<rsub|0>\<in\>\<bbb-R\>>, <math|a<rsub|n>\<neq\>x<rsub|0>>; (2)
  <math|a<rsub|n>\<rightarrow\>x<rsub|0>\<in\><wide|\<bbb-R\>|\<bar\>>>; (3)
  <math|lim<rsub|x\<rightarrow\>x<rsub|0>>f(x)=\<#2113\>\<in\><wide|\<bbb-R\>|\<bar\>>>;
  allora <math|f(a<rsub|n>)\<rightarrow\>\<#2113\>>.

  <em|Dimostrazione (<math|x<rsub|0>,\<#2113\>\<in\>\<bbb-R\>>).> Dato
  <math|\<varepsilon\>\<gtr\>0>, c'è <math|\<delta\>\<gtr\>0> con
  <math|\|f(x)-\<#2113\>\|\<leq\>\<varepsilon\>> per <math|x\<in\>D>,
  <math|0\<less\>\|x-x<rsub|0>\|\<leq\>\<delta\>>. Definitivamente
  <math|\|a<rsub|n>-x<rsub|0>\|\<leq\>\<delta\>>, e per l'ipotesi (1)
  <math|a<rsub|n>\<in\>D>, <math|a<rsub|n>\<neq\>x<rsub|0>>: quindi
  <math|\|f(a<rsub|n>)-\<#2113\>\|\<leq\>\<varepsilon\>>. <math|\<square\>>
  L'esclusione di <math|x<rsub|0>> serve perché il limite non impone nulla a
  <math|f(x<rsub|0>)>. Per un limite destro o sinistro, <math|a<rsub|n>> deve
  arrivare dal lato giusto.

  Per esempio, con <math|x=<frac|1|n>\<rightarrow\>0>: <math|n
  sin<frac|1|n>=<frac|sin(1/n)|1/n>\<rightarrow\>1>.

  <\guidato|Successioni con i limiti notevoli (lezione)>
    Calcola i limiti di <math|n<rsup|2>(cos<frac|2|n>-1)>,
    <math|n[log(n+33)-log(n+7)]>, <math|n(<sqrt|20|n>-1)>,
    <math|n(<sqrt|7|n>-<sqrt|5|n>)>.

    <em|Idea.> In ognuno c'è una quantità piccola: facciamola comparire
    esattamente come nel limite notevole.

    <em|Conto.> <math|n<rsup|2>(cos<frac|2|n>-1)=4\<cdot\><frac|cos(2/n)-1|(2/n)<rsup|2>>\<rightarrow\>4\<cdot\>(-<frac|1|2>)=-2>.

    <math|n log<frac|n+33|n+7>=n log(1+<frac|26|n+7>)=<frac|log(1+<frac|26|n+7>)|<frac|26|n+7>>\<cdot\><frac|26n|n+7>\<rightarrow\>1\<cdot\>26=26>.

    <math|n(<sqrt|20|n>-1)=<frac|20<rsup|1/n>-1|1/n>\<rightarrow\>log 20>; e
    aggiungendo e togliendo <math|1>, <math|n(<sqrt|7|n>-<sqrt|5|n>)=n(<sqrt|7|n>-1)-n(<sqrt|5|n>-1)\<rightarrow\>log
    7-log 5=log<frac|7|5>>.

    <em|Controllo.> Con <math|n=1000>: <math|1000
    log<frac|1033|1007>\<approx\>25,5>, e cresce verso <math|26>.
  </guidato>

  <strong|Base ed esponente variabili.> Si usa <math|A<rsup|B>=e<rsup|B log
  A>> (<math|A\<gtr\>0>). Per esempio <math|<sqrt|n|n>=e<rsup|<frac|log
  n|n>>>, e per <math|n\<gtr\>1>

  <\equation*>
    <frac|n|log n>(<sqrt|n|n>-1)=<frac|e<rsup|<frac|log n|n>>-1|<frac|log
    n|n>>\<rightarrow\>1,
  </equation*>

  perché la quantità piccola <math|<frac|log n|n>> tende a <math|0>
  (gerarchia).

  <section|Esercizi sui limiti di funzioni>

  <\guidato|Cinque pezzi, un limite (lezione)>
    Calcola <math|lim<rsub|x\<rightarrow\>0><frac|sin(2x+x<rsup|2>)+e<rsup|x>-cos
    x|arctan(3x)+arcsin(x<rsup|2>)>>.

    <em|Idea.> Forma <math|<frac|0|0>>. Al numeratore scriviamo
    <math|e<rsup|x>-cos x=(e<rsup|x>-1)+(1-cos x)>, poi dividiamo sopra e
    sotto per <math|x>.

    <em|Conto.> <math|<frac|sin(2x+x<rsup|2>)|x>=<frac|sin(2x+x<rsup|2>)|2x+x<rsup|2>>(2+x)\<rightarrow\>2>;
    <math|<frac|e<rsup|x>-1|x>\<rightarrow\>1>; <math|<frac|1-cos
    x|x>=<frac|1-cos x|x<rsup|2>>\<cdot\>x\<rightarrow\>0>;
    <math|<frac|arctan(3x)|x>=3<frac|arctan(3x)|3x>\<rightarrow\>3>;
    <math|<frac|arcsin(x<rsup|2>)|x>=<frac|arcsin(x<rsup|2>)|x<rsup|2>>\<cdot\>x\<rightarrow\>0>.

    Il denominatore diviso per <math|x> tende a <math|3\<neq\>0>, quindi il
    limite è <math|<frac|2+1+0|3+0>=1>.

    <em|Controllo.> Con <math|x=0,001> il rapporto vale circa <math|1,0003>.
  </guidato>

  <strong|Una forma <math|1<rsup|\<infty\>>>.>
  <math|lim<rsub|x\<rightarrow\>0>(cos x)<rsup|1/sin<rsup|2>x>>: vicino a
  <math|0>, <math|cos x\<gtr\>0> e <math|sin x\<neq\>0>, quindi la potenza è
  <math|exp<around*|(|<frac|log(cos x)|sin<rsup|2>x>|)>>. L'esponente:

  <\equation*>
    <frac|log(1+(cos x-1))|cos x-1>\<cdot\><frac|cos
    x-1|x<rsup|2>>\<cdot\><frac|x<rsup|2>|sin<rsup|2>x>\<rightarrow\>1\<cdot\><around*|(|-<frac|1|2>|)>\<cdot\>1=-<frac|1|2>,
  </equation*>

  dove il primo fattore usa <math|y=cos x-1\<rightarrow\>0> (e <math|cos
  x\<neq\>1> per <math|0\<less\>\|x\|\<less\>2\<pi\>>). Per la continuità
  dell'esponenziale il limite è <math|e<rsup|-1/2>=<frac|1|<sqrt|e>>>.

  <strong|Argomento o esponente?> <math|lim<rsub|x\<rightarrow\>0><frac|1-cos<rsup|2>(x<rsup|3>)|1-cos<rsup|3>(x<rsup|2>)>>:
  qui <math|cos<rsup|2>(x<rsup|3>)=[cos(x<rsup|3>)]<rsup|2>>. Con
  <math|1-A<rsup|2>=(1-A)(1+A)> e <math|1-B<rsup|3>=(1-B)(1+B+B<rsup|2>)> il
  rapporto diventa

  <\equation*>
    <frac|1-cos(x<rsup|3>)|x<rsup|6>>\<cdot\><frac|x<rsup|4>|1-cos(x<rsup|2>)>\<cdot\>x<rsup|2>\<cdot\><frac|1+cos(x<rsup|3>)|1+cos(x<rsup|2>)+cos<rsup|2>(x<rsup|2>)>\<rightarrow\><frac|1|2>\<cdot\>2\<cdot\>0\<cdot\><frac|2|3>=0.
  </equation*>

  Moltiplicato per <math|cos<frac|1|x<rsup|2>>>, che non ha limite ma è
  limitato, tende ancora a <math|0>: <math|0\<leq\>\|R(x)cos<frac|1|x<rsup|2>>\|\<leq\>\|R(x)\|\<rightarrow\>0>.
  È il <em|trucco del valore assoluto>: <math|f(x)\<rightarrow\>0\<Leftrightarrow\>\|f(x)\|\<rightarrow\>0>.

  <\attenzione|Un limite notevole vale solo dove vale>
    <math|lim<rsub|x\<rightarrow\>+\<infty\>><frac|log(1+3<rsup|x>)|x>>: la
    riscrittura <math|<frac|log(1+3<rsup|x>)|3<rsup|x>>\<cdot\><frac|3<rsup|x>|x>>
    è corretta, ma <math|<frac|log(1+y)|y>\<rightarrow\>1> richiede
    <math|y\<rightarrow\>0>, e qui <math|y=3<rsup|x>\<rightarrow\>+\<infty\>>.
    La strada giusta raccoglie chi comanda dentro il logaritmo:

    <\equation*>
      <frac|log(3<rsup|x>(1+3<rsup|-x>))|x>=log
      3+<frac|log(1+3<rsup|-x>)|x>\<rightarrow\>log 3.
    </equation*>
  </attenzione>

  <\officina|12. Moltiplica e dividi, poi cambia variabile>
    Per una forma <math|<frac|0|0>> con funzioni elementari:

    <\enumerate>
      <item>Individua le quantità piccole: l'argomento di <math|sin>, di
      <math|log(1+\<#22C5\>)>, l'esponente di
      <math|e<rsup|\<#22C5\>>-1>\<ldots\>

      <item>Moltiplica e dividi per ciascuna, in modo che compaia
      <em|esattamente> la forma notevole (<math|<frac|sin
      \<square\>|\<square\>>> con lo stesso <math|\<square\>> sopra e sotto).

      <item>Per ogni fattore, cambio di variabile: \Spongo
      <math|y=\<square\>>, <math|y\<rightarrow\>0>\T.

      <item>Controlla che il nuovo argomento tenda davvero al punto del
      limite notevole.
    </enumerate>
  </officina>

  <\verifica|11>
    <strong|(a)> Calcola <math|lim<rsub|x\<rightarrow\>0><frac|tan(5x)|log(1+2x)>>.
    <strong|(b)> Calcola <math|lim<rsub|n\<rightarrow\>+\<infty\>><around*|(|1+<frac|3|n>|)><rsup|n>>.
    <strong|(c)> Perché non si può usare <math|<frac|sin x|x>\<rightarrow\>1>
    per calcolare <math|lim<rsub|x\<rightarrow\>+\<infty\>><frac|sin x|x>>?
    Quanto vale?
  </verifica>

  <chapter|Limiti che non esistono e altre tecniche>

  <\inbreve>
    Come si dimostra che un limite <em|non> esiste? Negare la definizione è
    faticoso; molto meglio trovare due strade che portano in posti diversi.
    Poi raccogliamo le tecniche per le forme più frequenti: razionalizzare,
    stimare somme con tanti termini, studiare un parametro.
  </inbreve>

  <section|Sottosuccessioni>

  Una <strong|sottosuccessione> si ottiene tenendo solo alcuni termini,
  nell'ordine originale. Formalmente: se <math|(n<rsub|k>)<rsub|k\<in\>\<bbb-N\>>>
  è una successione <em|strettamente crescente> di naturali, la
  sottosuccessione è <math|k\<mapsto\>a<rsub|n<rsub|k>>>. Esempi:
  <math|a<rsub|2k>> (indici pari: <math|a<rsub|0>,a<rsub|2>,a<rsub|4>,\<ldots\>>),
  <math|a<rsub|2k+1>> (dispari), <math|a<rsub|k<rsup|2>>>
  (<math|a<rsub|0>,a<rsub|1>,a<rsub|4>,a<rsub|9>,\<ldots\>>). Una definizione
  più generale chiede solo <math|n<rsub|k>\<rightarrow\>+\<infty\>>.

  <figura|<image|analisi-1-assets/sottosucc.pdf|140.0mm|37.5mm||>|La
  sottosuccessione degli indici pari di <math|(-1)<rsup|n>>: si scelgono
  alcuni termini (cerchiati) senza cambiarne l'ordine. Qui la scelta isola il
  valore <math|1>.>

  <strong|Teorema.> Se <math|a<rsub|n>\<rightarrow\>\<#2113\>\<in\><wide|\<bbb-R\>|\<bar\>>>,
  ogni sottosuccessione tende allo stesso <math|\<#2113\>>.

  <em|Idea.> Quello che <math|a<rsub|n>> fa definitivamente, lo fa
  definitivamente anche <math|a<rsub|n<rsub|k>>>. Il punto chiave è
  <math|n<rsub|k>\<geq\>k> per ogni <math|k>, per induzione:
  <math|n<rsub|0>\<geq\>0>, e da <math|n<rsub|k>\<geq\>k> segue
  <math|n<rsub|k+1>\<gtr\>n<rsub|k>\<geq\>k>, cioè
  <math|n<rsub|k+1>\<geq\>k+1>. Allora, se <math|a<rsub|n>\<geq\>M> per
  <math|n\<geq\>n<rsub|0>>, per <math|k\<geq\>n<rsub|0>> si ha
  <math|n<rsub|k>\<geq\>k\<geq\>n<rsub|0>> e quindi
  <math|a<rsub|n<rsub|k>>\<geq\>M>. Lo stesso vale per
  <math|a<rsub|n>\<leq\>M> e per <math|\|a<rsub|n>-\<#2113\>\|\<leq\>\<varepsilon\>>.

  Se <math|(a<rsub|n>)> non ha limite, le sottosuccessioni possono averlo o
  no. Per <math|a<rsub|n>=(-1)<rsup|n>>: <math|a<rsub|2k>=1\<rightarrow\>1>,
  <math|a<rsub|2k+1>=-1\<rightarrow\>-1>; <math|a<rsub|k<rsup|2>>> non ha
  limite (<math|k<rsup|2>> ha la stessa parità di <math|k>);
  <math|a<rsub|k!>\<rightarrow\>1> (<math|k!> è pari per <math|k\<geq\>2>).

  <section|Dimostrare che un limite non esiste>

  <strong|Criterio.> Se due sottosuccessioni hanno limiti diversi,
  <math|(a<rsub|n>)> non ha limite. Infatti, se fosse
  <math|a<rsub|n>\<rightarrow\>\<#2113\>>, tutte le sottosuccessioni
  tenderebbero a <math|\<#2113\>>. (In realtà è un \Sse e solo se\T, ma qui
  serve solo questa direzione.)

  Perché è comodo? La negazione diretta di
  \S<math|\<exists\>\<#2113\>\<in\>\<bbb-R\> \<forall\>\<varepsilon\>\<gtr\>0
  \<exists\>n<rsub|0> \<forall\>n\<geq\>n<rsub|0>,
  \|\<#2113\>-a<rsub|n>\|\<leq\>\<varepsilon\>>\T è

  <\equation*>
    \<forall\>\<#2113\>\<in\>\<bbb-R\> \<exists\>\<varepsilon\>\<gtr\>0
    \<forall\>n<rsub|0> \<exists\>n\<geq\>n<rsub|0>,
    \|\<#2113\>-a<rsub|n>\|\<gtr\>\<varepsilon\>,
  </equation*>

  dove <math|\<forall\>n<rsub|0> \<exists\>n\<geq\>n<rsub|0>> è il
  \Sfrequentemente\T; e poi bisognerebbe escludere a parte
  <math|\<pm\>\<infty\>>. Due sottosuccessioni fanno tutto in due righe.

  <\guidato|Tre successioni (lezione)>
    Studia <math|n<rsup|3>+(-1)<rsup|n>n<rsup|5>>,
    <math|n<rsup|5>+(-1)<rsup|n>n<rsup|3>>, <math|sin(<frac|\<pi\>|7>n)>.

    <em|Idea.> Separare pari e dispari, oppure cercare indici dove il seno ha
    valori facili.

    <em|Conto.> <math|a<rsub|2k>=(2k)<rsup|3>+(2k)<rsup|5>\<rightarrow\>+\<infty\>>,
    <math|a<rsub|2k+1>=(2k+1)<rsup|3>-(2k+1)<rsup|5>\<rightarrow\>-\<infty\>>
    (raccogliendo <math|k<rsup|5>>): il primo limite non esiste.

    Nel secondo il termine oscillante è dominato:
    <math|n<rsup|5>(1+<frac|(-1)<rsup|n>|n<rsup|2>>)\<rightarrow\>+\<infty\>>,
    perché <math|-<frac|1|n<rsup|2>>\<leq\><frac|(-1)<rsup|n>|n<rsup|2>>\<leq\><frac|1|n<rsup|2>>>
    e il secondo fattore tende a <math|1>.

    Nel terzo cerchiamo in brutta copia: <math|sin=0> quando
    <math|<frac|\<pi\>|7>n=2k\<pi\>>, cioè <math|n=14k>; <math|sin=1>
    chiederebbe <math|2n=14k+7>, impossibile (pari contro dispari);
    <math|sin=sin<frac|\<pi\>|7>> quando <math|n=1+14k>. In bella copia:
    <math|a<rsub|14k>=sin(2k\<pi\>)=0\<rightarrow\>0> e
    <math|a<rsub|14k+1>=sin(<frac|\<pi\>|7>+2k\<pi\>)=sin<frac|\<pi\>|7>\<neq\>0>.
    Il limite non esiste.

    <em|Controllo.> Nel secondo caso le sottosuccessioni pari e dispari vanno
    entrambe a <math|+\<infty\>>: nessuna contraddizione, coerente con il
    limite <math|+\<infty\>>.
  </guidato>

  <strong|Per le funzioni.> Per dimostrare che
  <math|lim<rsub|x\<rightarrow\><text|CANE>>f(x)> non esiste (dove CANE è
  <math|+\<infty\>>, <math|-\<infty\>>, <math|x<rsub|0>>,
  <math|x<rsub|0><rsup|\<pm\>>>) bastano due successioni
  <math|a<rsub|n>,b<rsub|n>\<rightarrow\><text|CANE>> con
  <math|f(a<rsub|n>)\<rightarrow\>\<#2113\><rsub|1>> e
  <math|f(b<rsub|n>)\<rightarrow\>\<#2113\><rsub|2>\<neq\>\<#2113\><rsub|1>>.
  È il lemma funzioni<math|\<rightarrow\>>successioni del capitolo 11: se il
  limite esistesse, <math|f(a<rsub|n>)> e <math|f(b<rsub|n>)> tenderebbero
  entrambe a lui. Le successioni devono stare nel dominio, essere diverse da
  <math|x<rsub|0>> e arrivare dal lato giusto.

  <\itemize>
    <item><math|lim<rsub|x\<rightarrow\>+\<infty\>>sin x> non esiste:
    <math|a<rsub|n>=2\<pi\>n> dà <math|sin a<rsub|n>=0>,
    <math|b<rsub|n>=<frac|\<pi\>|2>+2\<pi\>n> dà <math|sin b<rsub|n>=1>.

    <item><math|lim<rsub|x\<rightarrow\>0<rsup|+>>cos<frac|1|x<rsup|2>>> non
    esiste: <math|a<rsub|n>=<frac|1|<sqrt|2n\<pi\>>>\<rightarrow\>0<rsup|+>>
    dà <math|cos(2n\<pi\>)=1>; <math|b<rsub|n>=<frac|1|<sqrt|2n\<pi\>+\<pi\>/2>>\<rightarrow\>0<rsup|+>>
    dà <math|cos(2n\<pi\>+<frac|\<pi\>|2>)=0>.

    <item><math|lim<rsub|x\<rightarrow\>+\<infty\>>x(2+sin x)=+\<infty\>>:
    qui esiste, perché <math|2+sin x\<geq\>1> e quindi <math|x(2+sin
    x)\<geq\>x> per <math|x\<gtr\>0>.

    <item><math|lim<rsub|x\<rightarrow\>+\<infty\>>x(1+sin x)> non esiste:
    <math|a<rsub|n>=\<pi\>n> dà <math|f(a<rsub|n>)=\<pi\>n\<rightarrow\>+\<infty\>>;
    <math|b<rsub|n>=<frac|3\<pi\>|2>+2n\<pi\>> dà <math|f(b<rsub|n>)=0>. (Per
    <math|x\<rightarrow\>-\<infty\>> si userebbero <math|-\<pi\>n> e
    <math|<frac|3\<pi\>|2>-2n\<pi\>>.)

    <item><math|(2+cos(<frac|\<pi\>|22>n))<rsup|n>> non ha limite:
    <math|a<rsub|44k>=3<rsup|44k>\<rightarrow\>+\<infty\>>,
    <math|a<rsub|44k+22>=(2+cos(\<pi\>+2k\<pi\>))<rsup|44k+22>=1>.

    <item><math|lim<rsub|x\<rightarrow\>+\<infty\>>sin
    x\<cdot\>sin<frac|1|x>=0>: per <math|x\<gtr\><frac|1|\<pi\>>> si ha
    <math|sin<frac|1|x>\<gtr\>0>, quindi <math|-sin<frac|1|x>\<leq\>sin x
    sin<frac|1|x>\<leq\>sin<frac|1|x>>, e i carabinieri concludono.
  </itemize>

  <figura|<image|analisi-1-assets/oscillazione.pdf|150.0mm|50.0mm||>|<math|cos<frac|1|x<rsup|2>>>
  vicino a <math|0<rsup|+>>: oscilla sempre più in fretta fra <math|-1> e
  <math|1>. I punti <math|a<rsub|n>> (dove vale <math|1>) e <math|b<rsub|n>>
  (dove vale <math|0>) si accumulano entrambi in <math|0>.>

  <section|Razionalizzare>

  Per le forme <math|+\<infty\>-\<infty\>> con radici:
  <math|<sqrt|A>-<sqrt|B>=<frac|A-B|<sqrt|A>+<sqrt|B>>>.

  <\itemize>
    <item><math|<sqrt|n+7>-<sqrt|n+4>=<frac|3|<sqrt|n+7>+<sqrt|n+4>>\<rightarrow\><frac|3|+\<infty\>>=0>.

    <item><math|<sqrt|n<rsup|2>+7n+4>-n=<frac|7n+4|<sqrt|n<rsup|2>+7n+4>+n>=<frac|7+<frac|4|n>|<sqrt|1+<frac|7|n>+<frac|4|n<rsup|2>>>+1>\<rightarrow\><frac|7|2>>.
  </itemize>

  <\attenzione|\S<math|<sqrt|n<rsup|2>>-n=n-n=0>\T>
    Sostituire <math|<sqrt|n<rsup|2>+7n+4>> con <math|<sqrt|n<rsup|2>>> dà
    <math|0>, ma il limite è <math|<frac|7|2>>. Nel primo esempio lo stesso
    errore avrebbe dato il risultato giusto <em|per caso>. Il termine
    dominante dentro una radice non si può buttare via quando la parte
    principale si cancella.
  </attenzione>

  Per le radici cubiche si usa <math|a<rsup|3>-b<rsup|3>=(a-b)(a<rsup|2>+a*b+b<rsup|2>)>
  con <math|a=<sqrt|A|3>>, <math|b=<sqrt|B|3>>: si moltiplica e divide per
  <math|<sqrt|A<rsup|2>|3>+<sqrt|A*B|3>+<sqrt|B<rsup|2>|3>>. Con
  <math|A=n<rsup|3>+7n<rsup|2>+4> e <math|B=n<rsup|3>>:

  <\equation*>
    <sqrt|n<rsup|3>+7n<rsup|2>+4|3>-n=<frac|7n<rsup|2>+4|<sqrt|A<rsup|2>|3>+<sqrt|n<rsup|3>A|3>+n<rsup|2>>\<rightarrow\><frac|7|3>,
  </equation*>

  perché, raccogliendo <math|n<rsup|2>>, sopra resta
  <math|7+<frac|4|n<rsup|2>>\<rightarrow\>7> e sotto tre addendi che tendono
  a <math|1>.

  Non sempre serve razionalizzare: in <math|<sqrt|n+5>-<sqrt|2n+7|3>> comanda
  <math|<sqrt|n>>, e raccogliendolo

  <\equation*>
    <sqrt|n><around*|(|<sqrt|1+<frac|5|n>>-<frac|1|<sqrt|n|6>><sqrt|2+<frac|7|n>|3>|)>\<rightarrow\>(+\<infty\>)(1-0)=+\<infty\>.
  </equation*>

  <section|Somme con sempre più termini>

  Se il numero di addendi cresce con <math|n>, una stima utile è

  <\equation*>
    (<text|termine più piccolo>)\<cdot\>(<text|numero di
    termini>)\<leq\>a<rsub|n>\<leq\>(<text|termine più
    grande>)\<cdot\>(<text|numero di termini>).
  </equation*>

  <\itemize>
    <item><math|a<rsub|n>=<big|sum><rsub|k=n><rsup|2n><frac|1|k<rsup|2>>\<rightarrow\>0>:
    <math|n+1> termini, il più grande è <math|<frac|1|n<rsup|2>>>, quindi
    <math|0\<leq\>a<rsub|n>\<leq\><frac|n+1|n<rsup|2>>\<rightarrow\>0>.

    <item><math|a<rsub|n>=<big|sum><rsub|k=n><rsup|2n><frac|1|<sqrt|k>>\<rightarrow\>+\<infty\>>:
    il più piccolo è <math|<frac|1|<sqrt|2n>>>, quindi
    <math|a<rsub|n>\<geq\><frac|n+1|<sqrt|2n>>\<rightarrow\>+\<infty\>>.

    <item><math|a<rsub|n>=<big|sum><rsub|k=n><rsup|2n><frac|1|k>>: la stima
    dà <math|<frac|n+1|2n>\<leq\>a<rsub|n>\<leq\><frac|n+1|n>>, quindi un
    eventuale limite sta in <math|[<frac|1|2>,1]>. Che esista lo dice la
    monotonia: passando da <math|a<rsub|n>> ad <math|a<rsub|n+1>> si perde
    <math|<frac|1|n>> e si guadagnano <math|<frac|1|2n+1>+<frac|1|2n+2>\<leq\><frac|1|2n>+<frac|1|2n>=<frac|1|n>>.
    La successione decresce ed è limitata dal basso: converge. (Si vedrà che
    il limite è <math|log 2>.)
  </itemize>

  <\attenzione|Tanti termini piccoli non fanno per forza poco>
    Che ogni addendo tenda a <math|0> non basta: nel secondo esempio sono
    tutti infinitesimi, ma sono così tanti che la somma diverge.
  </attenzione>

  <figura|<image|analisi-1-assets/somme-stime.pdf|130.0mm|55.0mm||>|<math|<big|sum><rsub|k=n><rsup|2n><frac|1|k>>
  con <math|n=6>: le sette colonne stanno fra il rettangolo basso (altezza
  <math|<frac|1|2n>>) e quello alto (altezza <math|<frac|1|n>>).>

  <section|Un parametro>

  <\itemize>
    <item><math|<frac|n<rsup|3>+n<rsup|a>+5|n<rsup|5>+n<rsup|3>+1>> tende a
    <math|+\<infty\>> se <math|a\<gtr\>5>, a <math|1> se <math|a=5>, a
    <math|0> se <math|a\<less\>5>: diviso per <math|n<rsup|5>>, il
    denominatore tende a <math|1> e il numeratore è
    <math|n<rsup|-2>+n<rsup|a-5>+5n<rsup|-5>>.

    <item><math|(1+<frac|1|n>)<rsup|n<rsup|a>>=e<rsup|n<rsup|a>log(1+1/n)>>,
    e l'esponente è <math|n<rsup|a-1>\<cdot\><frac|log(1+1/n)|1/n>>, dove il
    secondo fattore tende a <math|1>. Il limite è <math|+\<infty\>> se
    <math|a\<gtr\>1>, <math|e> se <math|a=1>, <math|1> se <math|a\<less\>1>.
  </itemize>

  <section|Altri esercizi>

  <\attenzione|Terribile: <math|<sqrt|x<rsup|2>>=x> per
  <math|x\<rightarrow\>-\<infty\>>>
    In <math|lim<rsub|x\<rightarrow\>-\<infty\>><sqrt|x<rsup|2>+7x+2>+x> non
    si scrive \S<math|x+x\<rightarrow\>-\<infty\>>\T:
    <math|<sqrt|x<rsup|2>>=\|x\|=-x> per <math|x\<less\>0>. Si pone
    <math|y=-x\<rightarrow\>+\<infty\>> e il limite diventa
    <math|<sqrt|y<rsup|2>-7y+2>-y=<frac|-7+<frac|2|y>|<sqrt|1-<frac|7|y>+<frac|2|y<rsup|2>>>+1>\<rightarrow\>-<frac|7|2>>.
  </attenzione>

  <\guidato|Riportare il limite in <math|0> (lezione)>
    Calcola <math|lim<rsub|x\<rightarrow\><frac|3\<pi\>|2>><frac|cos
    x|2x-3\<pi\>>>.

    <em|Idea.> Pongo <math|y=x-<frac|3\<pi\>|2>\<rightarrow\>0>, così
    compaiono i limiti notevoli in <math|0>.

    <em|Conto.> <math|2x-3\<pi\>=2y> e <math|cos(<frac|3\<pi\>|2>+y)=cos<frac|3\<pi\>|2>cos
    y-sin<frac|3\<pi\>|2>sin y=0-(-1)sin y=sin y>. Il limite è
    <math|lim<rsub|y\<rightarrow\>0><frac|sin y|2y>=<frac|1|2>>.

    <em|Controllo.> Per <math|x> appena a destra di <math|<frac|3\<pi\>|2>>
    il coseno è positivo (quarto quadrante) e il denominatore è positivo: il
    limite non può essere negativo. Gli appunti originali riportano
    <math|-<frac|1|2>>, con un errore di segno.
  </guidato>

  <strong|Medie e potenze.> Per <math|a,b\<gtr\>0>,
  <math|lim<rsub|x\<rightarrow\>0<rsup|+>><around*|(|<frac|a<rsup|x>+b<rsup|x>|2>|)><rsup|1/x>=<sqrt|a*b>>
  (forma <math|1<rsup|\<infty\>>>). L'esponente è <math|<frac|1|x>log(1+t)>
  con <math|t=<frac|a<rsup|x>+b<rsup|x>|2>-1\<rightarrow\>0>; si scrive come
  <math|<frac|log(1+t)|t>\<cdot\><frac|t|x>> e, in un angolo,

  <\equation*>
    <frac|t|x>=<frac|a<rsup|x>-1|2x>+<frac|b<rsup|x>-1|2x>\<rightarrow\><frac|1|2>log
    a+<frac|1|2>log b=log<sqrt|a*b>.
  </equation*>

  (Se <math|a=b=1>, <math|t\<equiv\>0> ma l'espressione vale identicamente
  <math|1=<sqrt|a*b>>.) Per <math|x\<rightarrow\>+\<infty\>> invece \Schi
  comanda si raccoglie\T: se <math|a\<geq\>b>,
  <math|<around*|(|<frac|a<rsup|x>+b<rsup|x>|2>|)><rsup|1/x>=a<around*|(|<frac|1+(b/a)<rsup|x>|2>|)><rsup|1/x>>,
  e l'ultima base sta in <math|[<frac|1|2>,1]>, quindi la sua potenza sta fra
  <math|(<frac|1|2>)<rsup|1/x>\<rightarrow\>1> e <math|1>. Il limite è
  <math|max{a,b}>.

  <\officina|13. Due strade per dire \Snon esiste\T>
    Per dimostrare che un limite non esiste:

    <\enumerate>
      <item>In brutta copia chiediti dove la funzione (o la successione)
      prende valori facili: <math|0>, <math|1>, <math|\<pm\>\<infty\>>.

      <item>Risolvi per trovare due famiglie di punti (o di indici) che vanno
      nel punto del limite.

      <item>In bella copia calcola i due limiti e verifica che sono diversi;
      controlla dominio e lato di arrivo.
    </enumerate>

    Prima di cercare, però, prova a vedere se il termine oscillante è
    <em|dominato> (allora il limite esiste) o <em|limitato e moltiplicato per
    qualcosa che va a <math|0>> (allora il limite è <math|0>).
  </officina>

  <\verifica|12>
    <strong|(a)> Mostra che <math|cos(n\<pi\>/3)> non ha limite. <strong|(b)>
    Calcola <math|lim<rsub|n\<rightarrow\>+\<infty\>>(<sqrt|n<rsup|2>+n>-n)>.
    <strong|(c)> Calcola <math|lim<rsub|n\<rightarrow\>+\<infty\>><big|sum><rsub|k=1><rsup|n><frac|n|n<rsup|2>+k>>
    stimando la somma.
  </verifica>

  <chapter|Il linguaggio degli o piccoli>

  <\inbreve>
    I limiti notevoli dicono che <math|sin x> \Sè quasi <math|x>\T. Gli o
    piccoli dicono <em|quanto> è quasi: <math|sin x=x+o(x)>, dove <math|o(x)>
    raccoglie una spazzatura che va a zero più in fretta di <math|x>. Con
    questo linguaggio i limiti diventano conti fra polinomi.
  </inbreve>

  <section|Tre simboli>

  Sia <math|x<rsub|0>> un punto dove ha senso fare limiti
  (<math|\<pm\>\<infty\>>, <math|5>, <math|7<rsup|->>, \<ldots\>) e
  <math|f,g:D\<rightarrow\>\<bbb-R\>>.

  <strong|o piccolo.> <math|f(x)=o(g(x))> per <math|x\<rightarrow\>x<rsub|0>>
  se esiste <math|\<omega\>:D\<rightarrow\>\<bbb-R\>> con

  <\equation*>
    f(x)=g(x)\<omega\>(x)<space|2em><text|e><space|2em>lim<rsub|x\<rightarrow\>x<rsub|0>>\<omega\>(x)=0.
  </equation*>

  Brutalmente: <math|f> è <math|g> per qualcosa che tende a <math|0>. Se
  <math|g\<rightarrow\>0>, allora <math|f> va a zero \Sdi più\T: <em|<math|f>
  batte <math|g> in velocità>. Se si può dividere per <math|g> (cioè
  <math|g\<neq\>0> vicino a <math|x<rsub|0>>), la definizione equivale a

  <\equation*>
    lim<rsub|x\<rightarrow\>x<rsub|0>><frac|f(x)|g(x)>=0,
  </equation*>

  basta prendere <math|\<omega\>=<frac|f|g>>.

  <strong|Equivalenza asintotica.> <math|f\<sim\>g> se vale lo stesso con
  <math|\<omega\>\<rightarrow\>1>: <math|f> e <math|g> \Spareggiano\T, e se
  si può dividere vuol dire <math|<frac|f|g>\<rightarrow\>1>. <strong|O
  grande.> <math|f=O(g)> se <math|\<omega\>> è limitata vicino a
  <math|x<rsub|0>>: <math|f> non perde da <math|g>.

  Il primo è <em|utilissimo>, il terzo poco utile, il secondo
  <em|pericolosissimo>: vedremo perché.

  <strong|Primi esempi.> <math|x<rsup|3>=o(x)> per <math|x\<rightarrow\>0>:
  <math|x<rsup|3>=x\<cdot\>x<rsup|2>> con
  <math|\<omega\>=x<rsup|2>\<rightarrow\>0>. In generale, per
  <math|x\<rightarrow\>0>,

  <\equation*>
    x<rsup|a>=o(x<rsup|b>)<space|1em>\<Leftrightarrow\><space|1em>a\<gtr\>b,
  </equation*>

  perché <math|\<omega\>=x<rsup|a-b>\<rightarrow\>0> esattamente quando
  <math|a\<gtr\>b> (per esponenti non interi si intende
  <math|x\<rightarrow\>0<rsup|+>>). <em|Vicino a <math|0> vince la potenza
  più alta.> Anche <math|<frac|1|x<rsup|2>>=o(<frac|1|x<rsup|3>>)> per
  <math|x\<rightarrow\>0>, benché nessuna delle due vada a zero: il rapporto
  è <math|x\<rightarrow\>0>. L'o piccolo confronta velocità, non richiede
  infinitesimi. Infine <math|sin(x<rsup|2>)arctan x=o(x<rsup|2>)>:
  <math|<frac|sin(x<rsup|2>)|x<rsup|2>>\<cdot\>arctan
  x\<rightarrow\>1\<cdot\>0>.

  <figura|<image|analisi-1-assets/potenze-zero.pdf|105.0mm|62.5mm||>|Vicino a
  <math|0>, <math|x>, <math|x<rsup|2>>, <math|x<rsup|3>> vanno tutte a zero,
  ma ciascuna più in fretta della precedente: <math|x<rsup|3>=o(x<rsup|2>)> e
  <math|x<rsup|2>=o(x)>.>

  <section|Le regole di calcolo>

  Sia <math|f<rsub|1>=g\<omega\><rsub|1>>,
  <math|f<rsub|2>=g\<omega\><rsub|2>> con
  <math|\<omega\><rsub|1>,\<omega\><rsub|2>\<rightarrow\>0>. Allora:

  <\itemize>
    <item><math|f<rsub|1>\<pm\>f<rsub|2>=g(\<omega\><rsub|1>\<pm\>\<omega\><rsub|2>)>:
    <math|o(g)\<pm\>o(g)=o(g)>;

    <item><math|\<lambda\>f<rsub|1>=g(\<lambda\>\<omega\><rsub|1>)>:
    <math|\<lambda\> o(g)=o(g)> (e anche <math|=o(\<lambda\>g)>);

    <item><math|f<rsub|1>f<rsub|2>=g<rsup|2>(\<omega\><rsub|1>\<omega\><rsub|2>)>:
    <math|o(g)\<cdot\>o(g)=o(g<rsup|2>)>;

    <item><math|<frac|f<rsub|1>|f<rsub|2>>=<frac|\<omega\><rsub|1>|\<omega\><rsub|2>>>:
    forma <math|<frac|0|0>>, nulla di furbo. <math|f<rsub|1>> batte <math|g>,
    <math|f<rsub|2>> batte <math|g>, ma fra loro non si sa;

    <item>transitività: <math|f=o(g)>, <math|g=o(h)\<Rightarrow\>f=h(\<omega\><rsub|2>\<omega\><rsub|1>)=o(h)>,
    cioè <math|o(o(h))=o(h)>.
  </itemize>

  <\attenzione|Il segno = non è un uguale>
    <math|x<rsup|4>=o(x)> e <math|x<rsup|3>=o(x)> sono vere entrambe, ma
    <math|x<rsup|4>\<neq\>x<rsup|3>>. \S<math|=o(g)>\T si legge \Sappartiene
    alla classe delle funzioni trascurabili rispetto a <math|g>\T. Due
    <math|o(x)> scritti in punti diversi sono, in generale, funzioni diverse:
    per questo <math|o(x)-o(x)=o(x)>, non <math|0>.
  </attenzione>

  <strong|Quale o piccolo è più forte?> Per <math|x\<rightarrow\>0>:
  <math|sin(2x)arctan x=o(x)> (diviso per <math|x> tende a <math|0>);
  <math|sin(2x)arctan<rsup|2>x=o(x)>, e anche <math|=o(x<rsup|2>)>, ma non
  <math|=o(x<rsup|3>)> (diviso per <math|x<rsup|3>> tende a <math|2>). Dire
  <math|o(x<rsup|2>)> è <em|più forte> che dire <math|o(x)>: battere
  <math|x<rsup|2>> è più difficile, e per transitività implica battere
  <math|x>.

  <strong|Composizioni.> Sia <math|f(x)=o(x<rsup|a>)> per
  <math|x\<rightarrow\>0>, con <math|a\<gtr\>0>, cioè
  <math|f=x<rsup|a>\<omega\>>.

  <\itemize>
    <item><math|f(x<rsup|3>)=x<rsup|3a>\<omega\>(x<rsup|3>)=o(x<rsup|3a>)>,
    perché <math|\<omega\>(x<rsup|3>)\<rightarrow\>0> (cambio di variabile).

    <item><math|[f(x)]<rsup|3>=x<rsup|3a>\<omega\>(x)<rsup|3>=o(x<rsup|3a>)>.

    <item><math|f(arctan x)=x<rsup|a>\<cdot\><frac|(arctan
    x)<rsup|a>|x<rsup|a>>\<omega\>(arctan x)=o(x<rsup|a>)>, con il fattore
    centrale <math|\<rightarrow\>1>.

    <item><math|arctan(f(x))=x<rsup|a>\<cdot\><frac|arctan(f(x))|f(x)>\<cdot\><frac|f(x)|x<rsup|a>>=o(x<rsup|a>)>:
    il primo fattore <math|\<rightarrow\>1> perché
    <math|f(x)\<rightarrow\>0>, il secondo è <math|\<omega\>\<rightarrow\>0>.
    (Dove <math|f(x)=0> anche <math|arctan(f(x))=0>, e il primo fattore si
    pone uguale a <math|1>.)
  </itemize>

  Con le successioni, sempre per <math|n\<rightarrow\>+\<infty\>>:
  <math|a<rsub|n>=o(b<rsub|n>)> se <math|a<rsub|n>=b<rsub|n>\<omega\><rsub|n>>
  con <math|\<omega\><rsub|n>\<rightarrow\>0>.

  <section|I limiti notevoli diventano sviluppi>

  Per <math|x\<rightarrow\>0>, ogni limite notevole si riscrive con la
  definizione quasi equivalente:

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|1.2em>|<cwith|1|-1|1|-1|cell-rsep|1.2em>|<table|<row|<cell|sin
    x=x+o(x)>|<cell|e<rsup|x>=1+x+o(x)>>|<row|<cell|arctan
    x=x+o(x)>|<cell|log(1+x)=x+o(x)>>|<row|<cell|tan x=x+o(x)>|<cell|arcsin
    x=x+o(x)>>|<row|<cell|cos x=1+o(x)>|<cell|cos
    x=1-<frac|x<rsup|2>|2>+o(x<rsup|2>)>>|<row|<cell|(1+x)<rsup|a>=1+a*x+o(x)>|<cell|(a\<in\>\<bbb-R\>)>>>>>
  </equation*>

  Per esempio <math|sin x=x+o(x)> vuol dire <math|<frac|sin x-x|x>=<frac|sin
  x|x>-1\<rightarrow\>0>; <math|cos x=1+o(x)> vuol dire <math|<frac|cos
  x-1|x>=<frac|cos x-1|x<rsup|2>>\<cdot\>x\<rightarrow\>0>; <math|cos
  x=1-<frac|x<rsup|2>|2>+o(x<rsup|2>)> vuol dire <math|<frac|cos
  x-1|x<rsup|2>>+<frac|1|2>\<rightarrow\>0>. Il secondo sviluppo del coseno è
  più preciso: dice <em|come> <math|cos x> si stacca da <math|1>.

  Per <math|(1+x)<rsup|a>> (anche con <math|a> frazionario o negativo; per
  <math|a=0> è banale):

  <\equation*>
    <frac|(1+x)<rsup|a>-1|x>-a=<frac|e<rsup|a log(1+x)>-1|a
    log(1+x)>\<cdot\>a<frac|log(1+x)|x>-a\<rightarrow\>1\<cdot\>a\<cdot\>1-a=0.
  </equation*>

  Le stesse relazioni come equivalenze: <math|sin x\<sim\>x>,
  <math|log(1+x)\<sim\>x>, <math|e<rsup|x>\<sim\>1+x>, <math|cos x\<sim\>1>,
  <math|cos x\<sim\>1-<frac|x<rsup|2>|2>>, <math|(1+x)<rsup|a>\<sim\>1+a*x>.
  Ecco il pericolo: <math|cos x\<sim\>1> e <math|cos
  x\<sim\>1-<frac|x<rsup|2>|2>> sono entrambe vere, ma solo la seconda serve
  quando l'<math|1> si cancella. L'o piccolo tiene il conto di quanto stiamo
  buttando via; <math|\<sim\>> lo nasconde.

  <section|Esercizi>

  <\guidato|All'antica e con gli sviluppi (lezione)>
    Calcola <math|lim<rsub|x\<rightarrow\>0><frac|sin(2x)+e<rsup|3x>-cos
    x|arctan x+tan<rsup|2>x>>.

    <em|Idea.> All'antica: dividere per <math|x> e far comparire i limiti
    notevoli. Oggi: sviluppare tutto.

    <em|Conto.> All'antica, aggiungendo e togliendo <math|1>:
    <math|<frac|<frac|sin 2x|x>+<frac|e<rsup|3x>-1|x>+<frac|1-cos
    x|x<rsup|2>>\<cdot\>x|<frac|arctan x|x>+<frac|tan<rsup|2>x|x<rsup|2>>\<cdot\>x>\<rightarrow\><frac|2+3+0|1+0>=5>.

    Con gli sviluppi: <math|sin(2x)=2x+o(x)>, <math|e<rsup|3x>=1+3x+o(x)>,
    <math|cos x=1+o(x)>, <math|arctan x=x+o(x)>, <math|tan<rsup|2>x=o(x)>.
    Sostituendo e usando <math|o(x)+o(x)=o(x)>:

    <\equation*>
      <frac|5x+o(x)|x+o(x)>=<frac|5+<frac|o(x)|x>|1+<frac|o(x)|x>>\<rightarrow\>5.
    </equation*>

    <em|Controllo.> I due metodi danno lo stesso risultato. Morale: le
    funzioni strane sono <em|polinomi più spazzatura>, e l'o piccolo
    raccoglie la spazzatura.
  </guidato>

  <strong|Un secondo esempio.> <math|lim<rsub|x\<rightarrow\>0><frac|e<rsup|arctan(2x)>-<sqrt|1+x|3>|sin(5x)+log(1-x)>=<frac|5|12>>.
  Il denominatore è <math|5x+o(x)-x+o(x)=4x+o(x)>. Da
  <math|arctan(2x)=2x+o(x)> e <math|e<rsup|y>=1+y+o(y)>:
  <math|e<rsup|arctan(2x)>=1+2x+o(x)>; <math|<sqrt|1+x|3>=1+<frac|x|3>+o(x)>.
  Il numeratore è <math|<frac|5|3>x+o(x)>, e il rapporto tende a
  <math|<frac|5/3|4>=<frac|5|12>>. Con le equivalenze \Salla brutale\T si
  ottiene lo stesso numero, ma solo perché le parti principali non si
  cancellano del tutto.

  <\guidato|Le seconde linee (lezione)>
    Calcola <math|lim<rsub|n\<rightarrow\>+\<infty\>>(<sqrt|n<rsup|2>+7n-4>-n)>.

    <em|Idea.> È vero che <math|<sqrt|n<rsup|2>+7n-4>\<sim\>n>, ma le
    equivalenze non si sottraggono: \S<math|n-n=0>\T è sbagliato. Bisogna
    sviluppare oltre la parte principale.

    <em|Conto.> Raccolgo <math|n<rsup|2>> dentro la radice e uso
    <math|(1+x)<rsup|1/2>=1+<frac|x|2>+o(x)> con
    <math|x=<frac|7|n>-<frac|4|n<rsup|2>>=<frac|7|n>+o(<frac|1|n>)>:

    <\equation*>
      n<around*|(|1+<frac|7|n>+o(<tfrac|1|n>)|)><rsup|1/2>-n=n<around*|(|1+<frac|7|2n>+o(<tfrac|1|n>)-1|)>=<frac|7|2>+o(1)\<rightarrow\><frac|7|2>.
    </equation*>

    <em|Controllo.> Si è usato <math|n\<cdot\>o(<frac|1|n>)=n\<cdot\><frac|1|n>\<omega\><rsub|n>=\<omega\><rsub|n>=o(1)>,
    e <math|o(1)> è sinonimo di \Sroba che tende a <math|0>\T. Con la sola
    prima linea, <math|<sqrt|n<rsup|2>+7n-4>=n+o(n)>, verrebbe
    <math|o(n)=n\<cdot\>\<omega\><rsub|n>>: forma <math|\<infty\>\<cdot\>0>,
    \Sboh\T. La seconda linea dà lo sviluppo che serve:
    <math|<sqrt|n<rsup|2>+7n-4>=n+<frac|7|2>+o(1)>. Coincide con il risultato
    razionalizzando (capitolo 12).
  </guidato>

  <\officina|14. Polinomi più spazzatura>
    Per un limite con cancellazioni:

    <\enumerate>
      <item>Sviluppa ogni pezzo con gli o piccoli, non con <math|\<sim\>>.

      <item>Somma: i resti si fondono (<math|o(g)+o(g)=o(g)>).

      <item>Se la parte principale si cancella, torna indietro e sviluppa di
      più (le \Sseconde linee\T).

      <item>Alla fine raccogli la potenza dominante sopra e sotto: ciò che
      resta è un numero più <math|<frac|o(\<#22C5\>)|\<#22C5\>>\<rightarrow\>0>.
    </enumerate>

    Le equivalenze asintotiche vanno bene in prodotti e quozienti; in somme e
    differenze sono una trappola.
  </officina>

  <\verifica|13>
    <strong|(a)> Vero o falso, per <math|x\<rightarrow\>0>:
    <math|x<rsup|2>sin x=o(x<rsup|2>)>; <math|x+x<rsup|2>\<sim\>x>;
    <math|o(x)\<cdot\>x=o(x<rsup|2>)>. <strong|(b)> Per
    <math|x\<rightarrow\>+\<infty\>>, chi è o piccolo di chi fra
    <math|x<rsup|2>> e <math|x<rsup|3>>? <strong|(c)> Calcola
    <math|lim<rsub|x\<rightarrow\>0><frac|log(1+3x)-sin x|x>>.
  </verifica>

  <chapter|Derivate>

  <\inbreve>
    La derivata è la pendenza della retta tangente, ottenuta come limite
    delle pendenze delle secanti. Con gli o piccoli diventa anche altro: il
    miglior coefficiente per approssimare <math|f> con una retta. Le due idee
    coincidono, e insieme danno le derivate delle funzioni elementari e tutte
    le regole di calcolo.
  </inbreve>

  <section|Dalla secante alla tangente>

  Siano <math|f:D\<rightarrow\>\<bbb-R\>> e <math|x<rsub|0>> <strong|interno>
  a <math|D>: <math|(x<rsub|0>-r,x<rsub|0>+r)\<subseteq\>D> per qualche
  <math|r\<gtr\>0>. Il <strong|rapporto incrementale>

  <\equation*>
    <frac|f(x<rsub|0>+h)-f(x<rsub|0>)|h>,<space|2em>h\<in\>(-r,r)\<setminus\>{0},
  </equation*>

  è l'incremento della <math|y> diviso l'incremento della <math|x>: la
  pendenza della secante per <math|A=(x<rsub|0>,f(x<rsub|0>))> e
  <math|B=(x<rsub|0>+h,f(x<rsub|0>+h))>.

  <math|f> è <strong|derivabile in <math|x<rsub|0>>> se esiste ed è
  <em|reale>

  <\equation*>
    f<rprime|'>(x<rsub|0>)=lim<rsub|h\<rightarrow\>0><frac|f(x<rsub|0>+h)-f(x<rsub|0>)|h>,
  </equation*>

  indicato anche <math|<wide|f|\<dot\>>(x<rsub|0>)> o <math|<frac|d f|d
  x>(x<rsub|0>)>. È la pendenza della <strong|retta tangente> nel punto
  <math|(x<rsub|0>,f(x<rsub|0>))>:

  <\equation*>
    y=f(x<rsub|0>)+f<rprime|'>(x<rsub|0>)(x-x<rsub|0>).
  </equation*>

  <figura|<image|analisi-1-assets/secante.pdf|130.0mm|70.0mm||>|Quando
  <math|h\<rightarrow\>0> il punto <math|B> scivola verso <math|A> e le
  secanti (sottili) ruotano fino alla tangente (spessa). La derivata è la
  pendenza limite.>

  <section|Il differenziale>

  <math|f> è <strong|differenziabile in <math|x<rsub|0>>> se esiste
  <math|\<alpha\>\<in\>\<bbb-R\>> con

  <\equation*>
    f(x<rsub|0>+h)=f(x<rsub|0>)+\<alpha\>h+o(h)<space|2em>(h\<rightarrow\>0).
  </equation*>

  <strong|Unicità di <math|\<alpha\>>.> Se valgono due scritture, con
  <math|\<alpha\><rsub|1>> e <math|\<alpha\><rsub|2>>, sottraendo si ha
  <math|(\<alpha\><rsub|1>-\<alpha\><rsub|2>)h=o(h)>, cioè
  <math|\<alpha\><rsub|1>-\<alpha\><rsub|2>=<frac|o(h)|h>\<rightarrow\>0>; ma
  a sinistra c'è una costante, quindi <math|\<alpha\><rsub|1>=\<alpha\><rsub|2>>.

  <strong|Teorema.> <math|f> è derivabile in <math|x<rsub|0>> se e solo se è
  differenziabile, e allora <math|\<alpha\>=f<rprime|'>(x<rsub|0>)>.

  <em|Derivabile <math|\<Rightarrow\>> differenziabile.> La tesi
  <math|f(x<rsub|0>+h)-f(x<rsub|0>)-f<rprime|'>(x<rsub|0>)h=o(h)> equivale a
  <math|<frac|f(x<rsub|0>+h)-f(x<rsub|0>)|h>-f<rprime|'>(x<rsub|0>)\<rightarrow\>0>,
  che è vero.

  <em|Differenziabile <math|\<Rightarrow\>> derivabile.>
  <math|<frac|f(x<rsub|0>+h)-f(x<rsub|0>)|h>=<frac|\<alpha\>h+o(h)|h>=\<alpha\>+<frac|o(h)|h>\<rightarrow\>\<alpha\>>.
  <math|\<square\>>

  In più variabili (Analisi 2) le due nozioni smettono di essere equivalenti,
  e il differenziale si rivela la migliore.

  <figura|<image|analisi-1-assets/differenziale.pdf|130.0mm|72.5mm||>|Sulla
  verticale <math|x=x<rsub|0>+h>: <math|A*B=f(x<rsub|0>)> (costante),
  <math|B*C=\<alpha\>h> (lineare in <math|h>: se <math|h> si dimezza,
  <math|B*C> si dimezza), <math|C*D=o(h)> (lo scarto fra grafico e tangente,
  che sparisce più in fretta di <math|h>).>

  <section|Le derivate elementari, in due modi>

  Primo modo: il limite del rapporto incrementale. Secondo modo: scrivere
  <math|f(x<rsub|0>+h)=f(x<rsub|0>)+\<alpha\>h+o(h)> e leggere
  <math|\<alpha\>>.

  <\itemize>
    <item><math|(x<rsup|2>)<rprime|'>=2x<rsub|0>>:
    <math|<frac|(x<rsub|0>+h)<rsup|2>-x<rsub|0><rsup|2>|h>=2x<rsub|0>+h\<rightarrow\>2x<rsub|0>>;
    oppure <math|(x<rsub|0>+h)<rsup|2>=x<rsub|0><rsup|2>+2x<rsub|0>h+h<rsup|2>>
    con <math|h<rsup|2>=o(h)>.

    <item><math|(x<rsup|3>)<rprime|'>=3x<rsub|0><rsup|2>>:
    <math|(x<rsub|0>+h)<rsup|3>=x<rsub|0><rsup|3>+3x<rsub|0><rsup|2>h+(3x<rsub|0>h<rsup|2>+h<rsup|3>)>,
    e la parentesi è <math|o(h)>. Col binomio,
    <math|(x<rsup|n>)<rprime|'>=n*x<rsup|n-1>>.

    <item><math|(e<rsup|x>)<rprime|'>=e<rsup|x<rsub|0>>>:
    <math|e<rsup|x<rsub|0>><frac|e<rsup|h>-1|h>\<rightarrow\>e<rsup|x<rsub|0>>>;
    oppure <math|e<rsup|x<rsub|0>+h>=e<rsup|x<rsub|0>>(1+h+o(h))>.

    <item><math|(log x)<rprime|'>=<frac|1|x<rsub|0>>>
    (<math|x<rsub|0>\<gtr\>0>): <math|log(x<rsub|0>+h)=log
    x<rsub|0>+log(1+<frac|h|x<rsub|0>>)=log
    x<rsub|0>+<frac|h|x<rsub|0>>+o(h)>.

    <item><math|(sin x)<rprime|'>=cos x<rsub|0>>: con la formula di
    addizione,

    <\equation*>
      <frac|sin x<rsub|0>cos h+cos x<rsub|0>sin h-sin x<rsub|0>|h>=cos
      x<rsub|0><frac|sin h|h>+sin x<rsub|0><frac|cos
      h-1|h<rsup|2>>\<cdot\>h\<rightarrow\>cos x<rsub|0>;
    </equation*>

    oppure <math|sin(x<rsub|0>+h)=sin x<rsub|0>(1+o(h))+cos
    x<rsub|0>(h+o(h))>.
  </itemize>

  <\immagine|Tre facce della stessa medaglia>
    <math|<frac|sin h|h>\<rightarrow\>1>, <math|sin h=h+o(h)>,
    <math|(sin)<rprime|'>(0)=1>: il limite notevole, lo sviluppo e la
    derivata sono la stessa informazione scritta in tre lingue.
  </immagine>

  <strong|Derivabile <math|\<Rightarrow\>> continua.> Per <math|h\<neq\>0>,
  <math|f(x<rsub|0>+h)=f(x<rsub|0>)+<frac|f(x<rsub|0>+h)-f(x<rsub|0>)|h>\<cdot\>h\<rightarrow\>f(x<rsub|0>)+f<rprime|'>(x<rsub|0>)\<cdot\>0>.
  Con <math|x=x<rsub|0>+h>: <math|lim<rsub|x\<rightarrow\>x<rsub|0>>f(x)=f(x<rsub|0>)>.

  <section|Le regole di derivazione>

  Gli strumenti per calcolare derivate: la definizione (solo nei casi
  estremi), la tabellina delle elementari, i teoremi algebrici, la composta,
  l'inversa.

  <\equation*>
    (f\<pm\>g)<rprime|'>=f<rprime|'>\<pm\>g<rprime|'>,<space|1em>(\<lambda\>f)<rprime|'>=\<lambda\>f<rprime|'>,<space|1em>(f*g)<rprime|'>=f<rprime|'>g+f*g<rprime|'>,<space|1em><around*|(|<frac|1|f>|)><rprime|'>=-<frac|f<rprime|'>|f<rsup|2>>,<space|1em><around*|(|<frac|f|g>|)><rprime|'>=<frac|f<rprime|'>g-f*g<rprime|'>|g<rsup|2>>.
  </equation*>

  <strong|Somma.> Primo modo: il rapporto incrementale di <math|f+g> è la
  somma dei due rapporti. Secondo modo: si sommano gli sviluppi
  <math|f(x<rsub|0>+h)=f(x<rsub|0>)+f<rprime|'>(x<rsub|0>)h+o(h)> e quello di
  <math|g>.

  <strong|Prodotto.> Aggiungo e tolgo un termine misto,
  <math|f(x<rsub|0>+h)g(x<rsub|0>)>:

  <\equation*>
    <frac|p(x<rsub|0>+h)-p(x<rsub|0>)|h>=f(x<rsub|0>+h)<frac|g(x<rsub|0>+h)-g(x<rsub|0>)|h>+g(x<rsub|0>)<frac|f(x<rsub|0>+h)-f(x<rsub|0>)|h>\<rightarrow\>f(x<rsub|0>)g<rprime|'>(x<rsub|0>)+g(x<rsub|0>)f<rprime|'>(x<rsub|0>),
  </equation*>

  dove <math|f(x<rsub|0>+h)\<rightarrow\>f(x<rsub|0>)> per la continuità.
  Oppure si moltiplicano gli sviluppi: <math|f(x<rsub|0>)g(x<rsub|0>)+(f(x<rsub|0>)g<rprime|'>(x<rsub|0>)+g(x<rsub|0>)f<rprime|'>(x<rsub|0>))h+o(h)>,
  e gli altri sei termini del prodotto finiscono in <math|o(h)>.

  <strong|Reciproco.> Se <math|f(x<rsub|0>)\<neq\>0>, per la permanenza del
  segno <math|f\<neq\>0> vicino a <math|x<rsub|0>>, e

  <\equation*>
    <frac|1|h><around*|(|<frac|1|f(x<rsub|0>+h)>-<frac|1|f(x<rsub|0>)>|)>=<frac|f(x<rsub|0>)-f(x<rsub|0>+h)|h>\<cdot\><frac|1|f(x<rsub|0>+h)f(x<rsub|0>)>\<rightarrow\>-f<rprime|'>(x<rsub|0>)\<cdot\><frac|1|f(x<rsub|0>)<rsup|2>>.
  </equation*>

  Il quoziente segue scrivendo <math|<frac|f|g>=f\<cdot\><frac|1|g>>:
  <math|<frac|f<rprime|'>|g>-f<frac|g<rprime|'>|g<rsup|2>>=<frac|f<rprime|'>g-f*g<rprime|'>|g<rsup|2>>>.

  <\guidato|Tangente e potenze negative (lezione)>
    Calcola <math|(tan x)<rprime|'>> e <math|(<frac|1|x<rsup|n>>)<rprime|'>>.

    <em|Idea.> Regola del quoziente e del reciproco.

    <em|Conto.> <math|(tan x)<rprime|'>=<frac|cos x\<cdot\>cos x-(-sin x)sin
    x|cos<rsup|2>x>=<frac|cos<rsup|2>x+sin<rsup|2>x|cos<rsup|2>x>>. Dividendo
    termine a termine viene <math|1+tan<rsup|2>x>; usando
    <math|cos<rsup|2>x+sin<rsup|2>x=1> viene <math|<frac|1|cos<rsup|2>x>>.

    <math|(<frac|1|x<rsup|n>>)<rprime|'>=-<frac|n*x<rsup|n-1>|x<rsup|2n>>=-<frac|n|x<rsup|n+1>>>.

    <em|Controllo.> Con <math|n=1>: <math|(<frac|1|x>)<rprime|'>=-<frac|1|x<rsup|2>>>,
    coerente con <math|(x<rsup|n>)<rprime|'>=n*x<rsup|n-1>> per <math|n=-1>.
  </guidato>

  <strong|Funzione composta.> Se <math|f> è derivabile in <math|x<rsub|0>> e
  <math|g> in <math|f(x<rsub|0>)>:

  <\equation*>
    [g(f(x))]<rprime|'>=g<rprime|'>(f(x))\<cdot\>f<rprime|'>(x).
  </equation*>

  <em|Quasi dimostrazione.> Si moltiplica e divide per
  <math|k=f(x<rsub|0>+h)-f(x<rsub|0>)>:

  <\equation*>
    <frac|g(f(x<rsub|0>+h))-g(f(x<rsub|0>))|h>=<frac|g(f(x<rsub|0>)+k)-g(f(x<rsub|0>))|k>\<cdot\><frac|f(x<rsub|0>+h)-f(x<rsub|0>)|h>.
  </equation*>

  Per continuità <math|k\<rightarrow\>0>, quindi il primo fattore tende a
  <math|g<rprime|'>(f(x<rsub|0>))> e il secondo a
  <math|f<rprime|'>(x<rsub|0>)>. Il problema: <math|k> può annullarsi per
  <math|h\<neq\>0> arbitrariamente piccoli, e allora si divide per zero. Le
  vie d'uscita (estendere il rapporto incrementale, oppure un lemma chiamato
  negli appunti \Ssotto-sotto\T) si vedranno più avanti.

  <strong|Funzione inversa.> Se <math|g> è l'inversa di <math|f>, sotto
  opportune ipotesi

  <\equation*>
    g<rprime|'>(x)=<frac|1|f<rprime|'>(g(x))>.
  </equation*>

  <em|Non dimostrazione.> Derivando <math|f(g(x))=x> con la regola della
  composta: <math|f<rprime|'>(g(x))g<rprime|'>(x)=1>. Ma il passaggio
  <em|presuppone> che <math|g> sia derivabile, che è proprio ciò che si vuole
  provare. Come formula di calcolo funziona:

  <\itemize>
    <item><math|(log x)<rprime|'>=<frac|1|e<rsup|log x>>=<frac|1|x>>;

    <item><math|(arctan x)<rprime|'>=<frac|1|1+tan<rsup|2>(arctan
    x)>=<frac|1|1+x<rsup|2>>>;

    <item><math|(arcsin x)<rprime|'>=<frac|1|cos(arcsin
    x)>=<frac|1|<sqrt|1-x<rsup|2>>>> per <math|x\<in\>(-1,1)> (capitolo 6; in
    <math|\<pm\>1> il denominatore si annulla).
  </itemize>

  <section|Esempi di calcolo>

  <math|(cos(x<rsup|3>))<rprime|'>=-sin(x<rsup|3>)\<cdot\>3x<rsup|2>>, mentre
  <math|(cos<rsup|3>x)<rprime|'>=3cos<rsup|2>x\<cdot\>(-sin x)>: attenzione a
  dove sta la potenza.

  Con base ed esponente variabili si passa all'esponenziale. Dove <math|sin
  x\<gtr\>0>:

  <\equation*>
    (sin x)<rsup|cos x>=e<rsup|cos x log(sin x)>,<space|2em>[(sin x)<rsup|cos
    x>]<rprime|'>=(sin x)<rsup|cos x><around*|(|-sin x log(sin
    x)+<frac|cos<rsup|2>x|sin x>|)>.
  </equation*>

  Allo stesso modo <math|(a<rsup|x>)<rprime|'>=(e<rsup|x log
  a>)<rprime|'>=a<rsup|x>log a> e, per <math|x\<gtr\>0>,
  <math|(x<rsup|a>)<rprime|'>=(e<rsup|a log x>)<rprime|'>=e<rsup|a log
  x><frac|a|x>=a*x<rsup|a-1>>.

  <\officina|15. Due definizioni equivalenti>
    Quando un concetto ha due definizioni (derivabile e differenziabile; o
    piccolo con <math|\<omega\>> o con il rapporto), per dimostrare che
    coincidono:

    <\enumerate>
      <item>scrivi ipotesi e tesi di ciascuna direzione separatamente;

      <item>riduci la tesi alla forma dell'ipotesi (qui:
      \S<math|\<ldots\>=o(h)>\T diventa \Srapporto meno costante
      <math|\<rightarrow\>0>\T);

      <item>dimostra anche che l'oggetto è lo stesso (qui
      <math|\<alpha\>=f<rprime|'>(x<rsub|0>)>), e se serve che è unico.
    </enumerate>

    Poi usa la definizione più comoda: il rapporto incrementale per i limiti,
    lo sviluppo per i prodotti e le composizioni.
  </officina>

  <\verifica|14>
    <strong|(a)> Calcola la tangente a <math|y=e<rsup|x>> in
    <math|x<rsub|0>=0>. <strong|(b)> Deriva <math|x<rsup|x>> per
    <math|x\<gtr\>0>. <strong|(c)> <math|f(x)=\|x\|> è continua in <math|0>?
    È derivabile?
  </verifica>

  <chapter|De L'Hôpital e i polinomi di Taylor>

  <\inbreve>
    Due strumenti per le forme <math|<frac|0|0>>. De L'Hôpital sostituisce
    <math|<frac|f|g>> con <math|<frac|f<rprime|'>|g<rprime|'>>>: utile ogni
    tanto, pericoloso spesso. Taylor approssima una funzione con un polinomio
    sbagliando solo un <math|o(x<rsup|n>)>: è lo strumento che useremo
    davvero.
  </inbreve>

  <section|Il teorema di De L'Hôpital>

  Riguarda <math|lim<rsub|x\<rightarrow\>x<rsub|0>><frac|f(x)|g(x)>> con
  <math|x<rsub|0>\<in\><wide|\<bbb-R\>|\<bar\>>> (anche
  <math|x<rsub|0><rsup|\<pm\>>>).

  <strong|Teorema misterioso (De L'Hôpital).> Supponiamo che

  <\enumerate>
    <item>(un po' di burocrazia) <math|f> e <math|g> siano definite e
    derivabili dove serve e si possa dividere;

    <item>il limite sia una forma <math|<frac|0|0>> oppure
    <math|<frac|\<pm\>\<infty\>|\<pm\>\<infty\>>> (i segni si portano fuori;
    nel secondo caso basta che diverga il denominatore);

    <item>esista <math|lim<rsub|x\<rightarrow\>x<rsub|0>><frac|f<rprime|'>(x)|g<rprime|'>(x)>=\<#2113\>\<in\><wide|\<bbb-R\>|\<bar\>>>.
  </enumerate>

  Allora <math|lim<rsub|x\<rightarrow\>x<rsub|0>><frac|f(x)|g(x)>=\<#2113\>>,
  lo stesso <math|\<#2113\>>.

  Uso operativo: se non riesco a calcolare <math|lim<frac|f|g>>, controllo
  che sia del tipo giusto e provo <math|lim<frac|f<rprime|'>|g<rprime|'>>>.
  Se esiste, ho finito. Se <em|non esiste>, il teorema non dice nulla
  (\Sboh\T). Se è ancora indeterminato, posso iterare, ricontrollando ogni
  volta le ipotesi.

  <\attenzione|Tre non esempi>
    <em|Manca la forma indeterminata.> \S<math|lim<rsub|x\<rightarrow\>0><frac|cos
    x|x>=lim<rsub|x\<rightarrow\>0><frac|-sin x|1>=0>\T: no, il numeratore
    tende a <math|1>. In realtà il limite non esiste: <math|+\<infty\>> da
    destra, <math|-\<infty\>> da sinistra.

    <em|Il limite delle derivate non esiste.>
    <math|lim<rsub|x\<rightarrow\>+\<infty\>><frac|2x+sin x|x>> porta a
    <math|lim(2+cos x)>, che non esiste: il teorema tace. Il limite vale
    <math|2>, per i carabinieri: <math|<frac|2x-1|x>\<leq\><frac|2x+sin
    x|x>\<leq\><frac|2x+1|x>> per <math|x\<gtr\>0>.

    <em|La burocrazia conta.> Sia <math|f(x)=\<lfloor\>x\<rfloor\>> (parte
    intera) su <math|(0,+\<infty\>)\<setminus\>\<bbb-N\>>, dove è costante a
    tratti con <math|f<rprime|'>=0>. Sembrerebbe
    <math|lim<rsub|x\<rightarrow\>+\<infty\>><frac|\<lfloor\>x\<rfloor\>|x>=lim<frac|0|1>=0>,
    ma <math|<frac|x-1|x>\<leq\><frac|\<lfloor\>x\<rfloor\>|x>\<leq\>1> dà
    <math|1>. Il guaio: per <math|x\<rightarrow\>+\<infty\>> le funzioni
    devono essere definite e derivabili su una semiretta
    <math|(M,+\<infty\>)>, e questo dominio è bucato in ogni intero.
  </attenzione>

  Secondo gli appunti, l'utilità pratica di De L'Hôpital è circa del
  <math|3%>: derivando le funzioni spesso peggiorano, e quasi sempre c'è una
  strada alternativa.

  <\guidato|Due limiti, due strade (lezione)>
    Calcola <math|lim<rsub|x\<rightarrow\>+\<infty\>>x(<frac|\<pi\>|2>-arctan
    x)> e <math|lim<rsub|x\<rightarrow\>0<rsup|+>><frac|arccos(1-x)|<sqrt|x>>>.

    <em|Idea.> Prima De L'Hôpital, poi una strada senza derivate.

    <em|Conto.> Il primo è <math|+\<infty\>\<cdot\>0>; come quoziente
    <math|<frac|<frac|\<pi\>|2>-arctan x|1/x>> è <math|<frac|0|0>> e

    <\equation*>
      <frac|-<frac|1|1+x<rsup|2>>|-<frac|1|x<rsup|2>>>=<frac|x<rsup|2>|1+x<rsup|2>>\<rightarrow\>1.
    </equation*>

    Senza derivate: per <math|x\<gtr\>0>, <math|<frac|\<pi\>|2>-arctan
    x=arctan<frac|1|x>> (capitolo 6), e con
    <math|y=<frac|1|x>\<rightarrow\>0<rsup|+>> il limite è <math|<frac|arctan
    y|y>\<rightarrow\>1>.

    Il secondo è <math|<frac|0|0>> (<math|arccos 1=0>). Con <math|(arccos
    t)<rprime|'>=-<frac|1|<sqrt|1-t<rsup|2>>>>:

    <\equation*>
      <frac|<frac|1|<sqrt|1-(1-x)<rsup|2>>>|<frac|1|2<sqrt|x>>>=<frac|2<sqrt|x>|<sqrt|2x-x<rsup|2>>>=<frac|2|<sqrt|2-x>>\<rightarrow\><sqrt|2>.
    </equation*>

    Senza derivate: <math|y=arccos(1-x)\<rightarrow\>0<rsup|+>>,
    <math|x=1-cos y>, e <math|<frac|y|<sqrt|1-cos
    y>>=<sqrt|<frac|y<rsup|2>|1-cos y>>\<rightarrow\><sqrt|2>> (serve
    <math|y\<gtr\>0> per portare <math|y> dentro la radice).

    <em|Controllo.> Il secondo risultato dice che
    <math|arccos(1-x)\<sim\><sqrt|2x>> per <math|x\<rightarrow\>0<rsup|+>>,
    cioè <math|arccos(1-x)=<sqrt|2x>+o(<sqrt|x>)>.
  </guidato>

  <section|L'esempio, in tre modi>

  <\equation*>
    lim<rsub|x\<rightarrow\>0><frac|e<rsup|x>-cos x-sin
    x+x<rsup|2>|x<rsup|2>>.
  </equation*>

  <em|Primo modo (sbagliato): i limiti a metà.> Aggiungendo e togliendo
  <math|1> e raccogliendo <math|x>:

  <\equation*>
    <frac|x<around*|(|<frac|e<rsup|x>-1|x>+<frac|1-cos
    x|x<rsup|2>>x-<frac|sin x|x>|)>+x<rsup|2>|x<rsup|2>>
  </equation*>

  e sostituendo la parentesi con il suo limite <math|1+0-1=0> viene
  \S<math|<frac|x<rsup|2>|x<rsup|2>>\<rightarrow\>1>\T. <em|No!> Non si fanno
  i limiti metà per volta: la parentesi tende a <math|0>, ma conta <em|quanto
  in fretta>, perché è moltiplicata per <math|x> e divisa per
  <math|x<rsup|2>>.

  <em|Secondo modo (sbagliato): le equivalenze.> Con
  <math|e<rsup|x>\<sim\>1+x>, <math|cos x\<sim\>1-<frac|x<rsup|2>|2>>,
  <math|sin x\<sim\>x>: \S<math|<frac|<frac|3|2>x<rsup|2>|x<rsup|2>>\<rightarrow\><frac|3|2>>\T.
  <em|Ops.> Le equivalenze non si usano dentro le somme.

  <em|Terzo modo (giusto): De L'Hôpital.> È <math|<frac|0|0>>, e due volte:

  <\equation*>
    lim<rsub|x\<rightarrow\>0><frac|e<rsup|x>+sin x-cos
    x+2x|2x>=lim<rsub|x\<rightarrow\>0><frac|e<rsup|x>+cos x+sin
    x+2|2>=<frac|4|2>=2.
  </equation*>

  Doppio ops: i primi due modi davano <math|1> e <math|<frac|3|2>>. Con gli o
  piccoli si vede dove si rompe il secondo: i resti sono <math|o(x)>, e
  restano termini del tipo <math|<frac|o(x)|x<rsup|2>>>, su cui non si sa
  dire nulla. Gli sviluppi di <math|e<rsup|x>> e <math|sin x> erano troppo
  corti: servono fino a <math|x<rsup|2>>.

  <\attenzione|Ragionamento circolare>
    Si può calcolare <math|lim<rsub|x\<rightarrow\>0><frac|sin x|x>> con De
    L'Hôpital? No: servirebbe <math|(sin x)<rprime|'>=cos x>, che abbiamo
    dimostrato proprio usando quel limite (capitolo 14).
  </attenzione>

  <section|Il problema di Taylor>

  Sia <math|f> definita vicino a <math|0> e <math|n\<geq\>1>. Cerchiamo un
  polinomio <math|P<rsub|n>> di grado <math|\<leq\>n> tale che

  <\equation*>
    f(x)=P<rsub|n>(x)+o(x<rsup|n>)<space|2em>(x\<rightarrow\>0).
  </equation*>

  <math|o(x<rsup|n>)> si chiama <strong|resto di Peano>. Gradi più alti di
  <math|n> sarebbero inutili: l'o piccolo li mangerebbe.

  <strong|Unicità.> Se <math|f=P<rsub|n>+o(x<rsup|n>)=<wide|P|^><rsub|n>+o(x<rsup|n>)>,
  allora <math|P<rsub|n>-<wide|P|^><rsub|n>=o(x<rsup|n>)>. Se non fosse il
  polinomio nullo, avrebbe un termine di grado minimo
  <math|a<rsub|k>x<rsup|k>>, <math|a<rsub|k>\<neq\>0>, <math|k\<leq\>n>.
  Dividendo per <math|x<rsup|k>> e passando al limite, a destra resta
  <math|a<rsub|k>> e a sinistra <math|<frac|o(x<rsup|n>)|x<rsup|k>>\<rightarrow\>0>:
  assurdo. <math|\<square\>>

  <strong|Teorema misterioso (Taylor\<#2013\>Peano).> Se
  <math|f:(-\<delta\>,\<delta\>)\<rightarrow\>\<bbb-R\>> è derivabile
  <math|n-1> volte in <math|(-\<delta\>,\<delta\>)> e <math|n> volte in
  <math|0>, allora

  <\equation*>
    P<rsub|n>(x)=f(0)+f<rprime|'>(0)x+<frac|f<rprime|''>(0)|2!>x<rsup|2>+\<cdots\>+<frac|f<rsup|(n)>(0)|n!>x<rsup|n>=<big|sum><rsub|k=0><rsup|n><frac|f<rsup|(k)>(0)|k!>x<rsup|k>.
  </equation*>

  La condizione è sufficiente, non necessaria: ci sono funzioni con
  <math|P<rsub|n>> per ogni <math|n> ma senza <math|f<rprime|''>(0)>. (Un
  esempio, non dalle lezioni: <math|f(x)=e<rsup|-1/x<rsup|2>>D(x)> per
  <math|x\<neq\>0>, <math|f(0)=0>, con <math|D> uguale a <math|1> sui
  razionali e <math|0> sugli irrazionali. Poiché
  <math|\|f(x)\|\<leq\>e<rsup|-1/x<rsup|2>>=o(x<rsup|n>)> per ogni <math|n>,
  <math|P<rsub|n>\<equiv\>0>; ma <math|f> non è continua in nessun
  <math|x\<neq\>0>, quindi non è derivabile vicino a <math|0>.)

  Casi piccoli: con <math|n=1>, <math|f(x)=f(0)+f<rprime|'>(0)x+o(x)> è il
  differenziale; con <math|n=0>, <math|f(x)=f(0)+o(1)> è la continuità. E
  <math|P<rsub|n+1>> si ottiene da <math|P<rsub|n>> aggiungendo un termine.

  <figura|<image|analisi-1-assets/taylor-cos.pdf|155.0mm|60.0mm||>|<math|cos
  x> (linea spessa) e i suoi polinomi di Taylor di grado <math|2>, <math|4>,
  <math|6>: più il grado cresce, più a lungo il polinomio segue la curva
  vicino a <math|0>.>

  <section|Gli sviluppi da sapere>

  Per <math|x\<rightarrow\>0>, troncando all'ordine voluto e aggiungendo
  <math|o(x<rsup|n>)>:

  <\eqnarray*>
    <tformat|<table|<row|<cell|e<rsup|x>>|<cell|=>|<cell|1+x+<frac|x<rsup|2>|2!>+<frac|x<rsup|3>|3!>+<frac|x<rsup|4>|4!>+<frac|x<rsup|5>|5!>+\<cdots\>>>|<row|<cell|sin
    x>|<cell|=>|<cell|x-<frac|x<rsup|3>|3!>+<frac|x<rsup|5>|5!>-<frac|x<rsup|7>|7!>+\<cdots\>>>|<row|<cell|cos
    x>|<cell|=>|<cell|1-<frac|x<rsup|2>|2!>+<frac|x<rsup|4>|4!>-<frac|x<rsup|6>|6!>+\<cdots\>>>|<row|<cell|log(1+x)>|<cell|=>|<cell|x-<frac|x<rsup|2>|2>+<frac|x<rsup|3>|3>-<frac|x<rsup|4>|4>+<frac|x<rsup|5>|5>-\<cdots\><space|2em><text|(senza
    fattoriali)>>>|<row|<cell|arctan x>|<cell|=>|<cell|x-<frac|x<rsup|3>|3>+<frac|x<rsup|5>|5>-<frac|x<rsup|7>|7>+\<cdots\><space|2em><text|(senza
    fattoriali)>>>|<row|<cell|(1+x)<rsup|a>>|<cell|=>|<cell|1+a*x+<frac|a(a-1)|2!>x<rsup|2>+<frac|a(a-1)(a-2)|3!>x<rsup|3>+\<cdots\>>>>>
  </eqnarray*>

  I coefficienti di <math|(1+x)<rsup|a>> sono binomiali con <math|a> reale:
  <math|<binom|a|k>=<frac|a(a-1)\<cdots\>(a-k+1)|k!>>.

  <strong|Parità.> Se <math|f> è pari, lo sviluppo ha solo potenze pari; se è
  dispari, solo dispari. Infatti la derivata di una pari è dispari e
  viceversa, e una funzione dispari vale <math|0> in <math|0>: per <math|f>
  pari si annullano in <math|0> le derivate di ordine dispari, per <math|f>
  dispari quelle di ordine pari (compresa <math|f>).

  <strong|Come si verificano.> Basta calcolare le derivate in <math|0>. Per
  <math|e<rsup|x>> sono tutte <math|1>. Per <math|sin x> sono,
  periodicamente, <math|0,1,0,-1>; per <math|cos x>, <math|1,0,-1,0>. Per
  <math|log(1+x)>: <math|<frac|1|1+x>>, <math|-<frac|1|(1+x)<rsup|2>>>,
  <math|<frac|2|(1+x)<rsup|3>>>, <math|-<frac|6|(1+x)<rsup|4>>>, e per
  induzione <math|f<rsup|(k)>(x)=(-1)<rsup|k+1><frac|(k-1)!|(1+x)<rsup|k>>>
  (derivando si moltiplica per <math|-k> e l'esponente cresce di uno). Il
  coefficiente di <math|x<rsup|k>> è <math|(-1)<rsup|k+1><frac|(k-1)!|k!>=<frac|(-1)<rsup|k+1>|k>>:
  ecco perché niente fattoriali. Per <math|(1+x)<rsup|a>> la derivata
  <math|k>-esima in <math|0> è <math|a(a-1)\<cdots\>(a-k+1)>.

  <strong|Casi speciali.> Con <math|a=-1>, <math|<binom|-1|k>=(-1)<rsup|k>>:

  <\equation*>
    <frac|1|1+x>=1-x+x<rsup|2>-x<rsup|3>+\<cdots\>,<space|2em><frac|1|1-x>=1+x+x<rsup|2>+x<rsup|3>+\<cdots\>,<space|2em><frac|1|1+x<rsup|2>>=1-x<rsup|2>+x<rsup|4>-\<cdots\>,
  </equation*>

  sostituendo <math|-x> e poi <math|x<rsup|2>>. Da qui l'arcotangente: lo
  sviluppo di <math|<frac|1|1+x<rsup|2>>> dà le sue derivate in <math|0>
  (unicità); poiché <math|arctan<rprime|'>=<frac|1|1+x<rsup|2>>>, se
  <math|<frac|1|1+x<rsup|2>>=<big|sum>c<rsub|k>x<rsup|k>> allora
  <math|arctan<rsup|(k+1)>(0)=k!c<rsub|k>> e il coefficiente di
  <math|x<rsup|k+1>> è <math|<frac|c<rsub|k>|k+1>>. Con <math|arctan 0=0> si
  ritrova <math|x-<frac|x<rsup|3>|3>+<frac|x<rsup|5>|5>-\<cdots\>>.

  <\guidato|L'esempio, con Taylor>
    Rifai <math|lim<rsub|x\<rightarrow\>0><frac|e<rsup|x>-cos x-sin
    x+x<rsup|2>|x<rsup|2>>> con gli sviluppi.

    <em|Idea.> Il denominatore è <math|x<rsup|2>>: tutti i resti devono
    essere <math|o(x<rsup|2>)>.

    <em|Conto.> <math|e<rsup|x>=1+x+<frac|x<rsup|2>|2>+o(x<rsup|2>)>,
    <math|cos x=1-<frac|x<rsup|2>|2>+o(x<rsup|2>)>, <math|sin
    x=x+o(x<rsup|2>)> (il seno è dispari: <math|P<rsub|2>=P<rsub|1>=x>). Il
    numeratore diventa

    <\equation*>
      1+x+<frac|x<rsup|2>|2>-1+<frac|x<rsup|2>|2>-x+x<rsup|2>+o(x<rsup|2>)=2x<rsup|2>+o(x<rsup|2>),
    </equation*>

    e il limite è <math|2>.

    <em|Controllo.> Coincide con De L'Hôpital. Con <math|x=0,01> il rapporto
    vale circa <math|2,0033>.
  </guidato>

  <strong|Quali scritture sono corrette?>

  <\center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.7em>|<cwith|1|-1|1|-1|cell-rsep|0.7em>|<cwith|1|1|1|-1|cell-bborder|0.5pt>|<table|<row|<cell|scrittura>|<cell|corretta?>|<cell|perché>>|<row|<cell|<math|sin
    x=x-<frac|x<rsup|3>|6>+o(x<rsup|3>)>>|<cell|sì>|<cell|Taylor con
    <math|n=3>>>|<row|<cell|<math|sin x=x-<frac|x<rsup|3>|6>+o(x<rsup|4>)>>|<cell|sì>|<cell|<math|n=4>;
    il termine in <math|x<rsup|4>> è nullo>>|<row|<cell|<math|sin
    x=x-<frac|x<rsup|3>|6>+o(x<rsup|5>)>>|<cell|no>|<cell|manca
    <math|<frac|x<rsup|5>|120>>>>|<row|<cell|<math|sin
    x=x-<frac|x<rsup|3>|6>+o(x<rsup|2>)>>|<cell|sì, ma buffa>|<cell|l'o
    piccolo mangia <math|<frac|x<rsup|3>|6>>>>|<row|<cell|<math|sin
    x=x-257x<rsup|3>+o(x<rsup|2>)>>|<cell|sì, idem>|<cell|anche
    <math|257x<rsup|3>> è <math|o(x<rsup|2>)>>>>>>
  </center>

  <\officina|16. Evitare il ragionamento circolare>
    Prima di usare un fatto, chiediti come è stato dimostrato.

    <\itemize>
      <item><math|<sqrt|2|n>\<rightarrow\>1> non si prova con la continuità
      di <math|2<rsup|x>>: è la continuità a usarlo.

      <item><math|<frac|sin x|x>\<rightarrow\>1> non si prova con De
      L'Hôpital: la derivata del seno usa quel limite.

      <item>\STeorema misterioso\T vuol dire enunciato senza dimostrazione:
      puoi usarlo, ma non per dimostrare i fatti su cui poggia.
    </itemize>

    Un buon controllo: disegna la catena delle dipendenze del capitolo e
    verifica che non ci siano cicli.
  </officina>

  <\verifica|15>
    <strong|(a)> Scrivi lo sviluppo di <math|<sqrt|1+x>> all'ordine <math|2>.
    <strong|(b)> Si può applicare De L'Hôpital a
    <math|lim<rsub|x\<rightarrow\>+\<infty\>><frac|x+cos x|x>>? Quanto vale
    il limite? <strong|(c)> Perché lo sviluppo di <math|cos x> non ha termini
    dispari?
  </verifica>

  <chapter|Calcolare con gli sviluppi>

  <\inbreve>
    Ora che conosciamo gli sviluppi delle funzioni elementari, impariamo a
    combinarli: sommarli, moltiplicarli, comporli, spostarne il centro. La
    domanda che decide ogni passaggio è sempre la stessa: <em|quanto devo
    sviluppare, e il resto che ottengo è abbastanza piccolo?> Chiudiamo con
    le funzioni iperboliche.
  </inbreve>

  <section|Un centro qualunque>

  Per sviluppare <math|f> vicino a <math|x<rsub|0>> si pone
  <math|h=x-x<rsub|0>> e si cerca <math|f(x<rsub|0>+h)=P<rsub|m>(h)+o(h<rsup|m>)>
  per <math|h\<rightarrow\>0>. Taylor\<#2013\>Peano dà

  <\equation*>
    f(x)=<big|sum><rsub|k=0><rsup|m><frac|f<rsup|(k)>(x<rsub|0>)|k!>(x-x<rsub|0>)<rsup|k>+o((x-x<rsub|0>)<rsup|m>):
  </equation*>

  basta applicare il caso del centro <math|0> a <math|g(h)=f(x<rsub|0>+h)>,
  che ha <math|g<rsup|(k)>(0)=f<rsup|(k)>(x<rsub|0>)>.

  Per esempio, per <math|x\<rightarrow\>2>:
  <math|e<rsup|2+h>=e<rsup|2>e<rsup|h>>, quindi

  <\equation*>
    e<rsup|x>=e<rsup|2><around*|(|1+(x-2)+<frac|(x-2)<rsup|2>|2>+<frac|(x-2)<rsup|3>|6>|)>+o((x-2)<rsup|3>).
  </equation*>

  E <math|log(2+h)=log 2+log(1+<frac|h|2>)=log
  2+<frac|h|2>-<frac|h<rsup|2>|8>+<frac|h<rsup|3>|24>+o(h<rsup|3>)>. Scrivere
  <math|log x=log(1+(x-1))> non serve: <math|x-1\<rightarrow\>1>, non a
  <math|0>.

  <section|Somme e prodotti>

  Se <math|f=P<rsub|m>+o(x<rsup|m>)> e <math|g=Q<rsub|m>+o(x<rsup|m>)>
  <em|allo stesso ordine>:

  <\equation*>
    f\<pm\>g=P<rsub|m>\<pm\>Q<rsub|m>+o(x<rsup|m>),<space|2em>\<lambda\>f=\<lambda\>P<rsub|m>+o(x<rsup|m>),<space|2em>f*g=P<rsub|m>Q<rsub|m>+o(x<rsup|m>),
  </equation*>

  dove nel prodotto si tengono solo i monomi di grado <math|\<leq\>m>.
  Infatti, con i resti <math|x<rsup|m>\<omega\><rsub|1>> e
  <math|x<rsup|m>\<omega\><rsub|2>>:

  <\equation*>
    f*g=P<rsub|m>Q<rsub|m>+x<rsup|m>(P<rsub|m>\<omega\><rsub|2>+Q<rsub|m>\<omega\><rsub|1>+x<rsup|m>\<omega\><rsub|1>\<omega\><rsub|2>),
  </equation*>

  e la parentesi tende a <math|0> perché i polinomi sono limitati vicino a
  <math|0>.

  <\guidato|<math|sin x cos x> all'ordine 5 (lezione)>
    Sviluppa <math|sin x cos x> fino a <math|o(x<rsup|5>)>.

    <em|Idea.> Moltiplica i due sviluppi all'ordine <math|5> e butta via i
    prodotti di grado <math|\<geq\>6>.

    <em|Conto.>

    <\equation*>
      <around*|(|x-<frac|x<rsup|3>|6>+<frac|x<rsup|5>|120>|)><around*|(|1-<frac|x<rsup|2>|2>+<frac|x<rsup|4>|24>|)>=x-<frac|x<rsup|3>|2>-<frac|x<rsup|3>|6>+<frac|x<rsup|5>|24>+<frac|x<rsup|5>|12>+<frac|x<rsup|5>|120>+o(x<rsup|5>)
    </equation*>

    <\equation*>
      =x-<frac|2|3>x<rsup|3>+<frac|2|15>x<rsup|5>+o(x<rsup|5>).
    </equation*>

    <em|Controllo.> <math|sin(2x)=2x-<frac|(2x)<rsup|3>|6>+<frac|(2x)<rsup|5>|120>+o(x<rsup|5>)=2x-<frac|4|3>x<rsup|3>+<frac|4|15>x<rsup|5>+o(x<rsup|5>)>:
    è esattamente il doppio, come vuole <math|sin 2x=2sin x cos x>.
  </guidato>

  <section|Composizioni>

  <strong|Sostituire <math|a*x<rsup|b>>.> Se
  <math|f(t)=P<rsub|m>(t)+o(t<rsup|m>)>, allora per <math|b\<gtr\>0>

  <\equation*>
    f(a*x<rsup|b>)=P<rsub|m>(a*x<rsup|b>)+o(x<rsup|b*m>),
  </equation*>

  perché <math|(a*x<rsup|b>)<rsup|m>\<omega\>(a*x<rsup|b>)=x<rsup|b*m>\<cdot\>a<rsup|m>\<omega\>(a*x<rsup|b>)>
  e <math|a*x<rsup|b>\<rightarrow\>0>. Per esempio
  <math|sin(x<rsup|3>)=x<rsup|3>-<frac|x<rsup|9>|6>+<frac|x<rsup|15>|120>+o(x<rsup|15>)=x<rsup|3>-<frac|x<rsup|9>|6>+o(x<rsup|14>)>:
  il termine dopo quello di grado <math|9> ha grado <math|15>.

  <strong|Composizione generale.> Se <math|f(0)=0> e
  <math|P<rsub|m>,Q<rsub|m>> sono i polinomi di Taylor di <math|f> e <math|g>
  in <math|0>, allora

  <\equation*>
    g(f(x))=Q<rsub|m>(P<rsub|m>(x))+o(x<rsup|m>),
  </equation*>

  scartando i gradi <math|\<gtr\>m>. Due controlli. Il resto composto è
  <math|o(x<rsup|m>)>: poiché <math|P<rsub|m>(0)=0>,
  <math|f(x)=x(R(x)+x<rsup|m-1>\<omega\><rsub|1>(x))> con la parentesi
  limitata, quindi <math|f(x)<rsup|m>\<omega\><rsub|2>(f(x))=x<rsup|m>\<cdot\>(\<ldots\>)<rsup|m>\<omega\><rsub|2>(f(x))=o(x<rsup|m>)>.
  E dentro <math|Q<rsub|m>> si può sostituire <math|f> con <math|P<rsub|m>>:
  per ogni monomio

  <\equation*>
    f<rsup|k>-P<rsub|m><rsup|k>=(f-P<rsub|m>)<big|sum><rsub|j=0><rsup|k-1>f<rsup|k-1-j>P<rsub|m><rsup|j>=o(x<rsup|m>).
  </equation*>

  <\attenzione|Sostituisci dappertutto>
    <math|sin(x+x<rsup|3>)=(x+x<rsup|3>)-<frac|1|6>(x+x<rsup|3>)<rsup|3>+o(x<rsup|3>)=x+<frac|5|6>x<rsup|3>+o(x<rsup|3>)>.
    Scrivere solo <math|x+x<rsup|3>+o(x<rsup|3>)> dimentica il contributo
    cubico del seno: l'argomento va messo in <em|tutte> le potenze.
  </attenzione>

  <\guidato|Il centro esterno (lezione)>
    Sviluppa <math|cos(sin x)> all'ordine <math|4> e <math|sin(cos x)>
    all'ordine <math|3>.

    <em|Idea.> La domanda decisiva: l'argomento interno tende al centro dello
    sviluppo esterno?

    <em|Conto.> <math|sin x\<rightarrow\>0>: va bene lo sviluppo del coseno
    in <math|0>. Con <math|sin<rsup|2>x=x<rsup|2>-<frac|x<rsup|4>|3>+o(x<rsup|4>)>
    e <math|sin<rsup|4>x=x<rsup|4>+o(x<rsup|4>)>:

    <\equation*>
      cos(sin x)=1-<frac|1|2>sin<rsup|2>x+<frac|1|24>sin<rsup|4>x+o(x<rsup|4>)=1-<frac|x<rsup|2>|2>+<frac|5|24>x<rsup|4>+o(x<rsup|4>).
    </equation*>

    <math|cos x\<rightarrow\>1>: lo sviluppo del seno in <math|0> non si può
    usare. Serve il seno attorno a <math|1>: <math|sin(1+h)=sin 1cos h+cos
    1sin h=sin 1+cos 1\<cdot\>h-<frac|sin 1|2>h<rsup|2>-<frac|cos
    1|6>h<rsup|3>+o(h<rsup|3>)>. Con <math|h=cos
    x-1=-<frac|x<rsup|2>|2>+o(x<rsup|3>)>, i termini con <math|h<rsup|2>> e
    <math|h<rsup|3>> hanno grado <math|\<geq\>4>:

    <\equation*>
      sin(cos x)=sin 1-<frac|cos 1|2>x<rsup|2>+o(x<rsup|3>).
    </equation*>

    <em|Controllo.> Basta il termine lineare in <math|h>, ma bisogna sapere
    che lo scarto è dell'ordine di <math|h<rsup|2>>, cioè di
    <math|x<rsup|4>>: la sola scrittura <math|sin(1+h)=sin 1+cos
    1\<cdot\>h+o(h)> darebbe un resto <math|o(x<rsup|2>)>, insufficiente.
  </guidato>

  <section|Parte principale e ordine>

  Se <math|f(x)=a*x<rsup|b>+o(x<rsup|b>)> con <math|a\<neq\>0> (cioè
  <math|f\<sim\>a*x<rsup|b>>), <math|a*x<rsup|b>> è la <strong|parte
  principale> di <math|f>; se <math|b\<gtr\>0>, <math|f> è infinitesima di
  <strong|ordine> <math|b>. Con Taylor, la parte principale è il <em|primo
  monomio non nullo dopo le cancellazioni>.

  <\guidato|Quando i termini lineari si cancellano (lezione)>
    Calcola <math|lim<rsub|x\<rightarrow\>0><frac|sin x-arctan
    x|e<rsup|x<rsup|3>>-1>>.

    <em|Idea.> <math|sin x\<sim\>x> e <math|arctan x\<sim\>x>: al primo
    ordine il numeratore sparisce. Bisogna arrivare al grado <math|3>.

    <em|Conto.> <math|sin x-arctan x=(x-<frac|x<rsup|3>|6>)-(x-<frac|x<rsup|3>|3>)+o(x<rsup|3>)=<frac|x<rsup|3>|6>+o(x<rsup|3>)>.
    Il denominatore è <math|x<rsup|3>+o(x<rsup|3>)>. Il limite è
    <math|<frac|1|6>>.

    <em|Controllo.> Aggiungendo al denominatore
    <math|<sqrt|x>log(1+x<rsup|3><sqrt|x>)> (con
    <math|x\<rightarrow\>0<rsup|+>>) non cambia nulla:
    <math|<sqrt|x>(x<rsup|7/2>+o(x<rsup|7/2>))=x<rsup|4>+o(x<rsup|4>)=o(x<rsup|3>)>.
  </guidato>

  <strong|Leggere le derivate dai coefficienti.> <math|(sin
  x)<rsup|3>=(x-<frac|x<rsup|3>|6>+o(x<rsup|4>))<rsup|3>=x<rsup|3>-<frac|x<rsup|5>|2>+o(x<rsup|5>)>:
  dei prodotti misti conta solo <math|3x<rsup|2>\<cdot\>(-<frac|x<rsup|3>|6>)>,
  gli altri hanno grado <math|\<geq\>7>. Per l'unicità di Taylor il
  coefficiente di <math|x<rsup|5>> è <math|<frac|f<rsup|(5)>(0)|5!>>, quindi
  <math|f<rsup|(5)>(0)=-<frac|1|2>\<cdot\>120=-60>, senza derivare cinque
  volte.

  <strong|Differenza di reciproci.> <math|<frac|1|sin
  x>-<frac|1|x>=<frac|x-sin x|x sin x>>, con <math|x-sin
  x=<frac|x<rsup|3>|6>+o(x<rsup|3>)> e <math|x sin x=x<rsup|2>+o(x<rsup|3>)>:
  il risultato è <math|x\<cdot\><frac|<frac|1|6>+o(1)|1+o(1)>=<frac|x|6>+o(x)>.

  <strong|Potenze variabili.> <math|(1+sin x)<rsup|x>=e<rsup|x log(1+sin
  x)>>. Per il fattore <math|x> basta <math|log(1+sin
  x)=x-<frac|x<rsup|2>|2>+o(x<rsup|2>)>, quindi l'esponente è
  <math|u=x<rsup|2>-<frac|x<rsup|3>|2>+o(x<rsup|3>)>. Poiché
  <math|u<rsup|2>=o(x<rsup|3>)>, da <math|e<rsup|u>=1+u+<frac|u<rsup|2>|2>+o(u<rsup|2>)>
  si ottiene <math|(1+sin x)<rsup|x>=1+x<rsup|2>-<frac|x<rsup|3>|2>+o(x<rsup|3>)>.
  (Con il solo <math|e<rsup|u>=1+u+o(u)> il resto sarebbe
  <math|o(x<rsup|2>)>, troppo grossolano.)

  <section|La tangente all'ordine 5>

  <em|Quoziente.> <math|tan x=sin x\<cdot\>(cos x)<rsup|-1>>. Con
  <math|(1+t)<rsup|-1>=1-t+t<rsup|2>-\<cdots\>> e
  <math|t=-<frac|x<rsup|2>|2>+<frac|x<rsup|4>|24>+o(x<rsup|5>)> (dell'ordine
  di <math|x<rsup|2>>, quindi <math|t<rsup|3>=o(x<rsup|5>)>):

  <\equation*>
    <frac|1|cos x>=1+<frac|x<rsup|2>|2>-<frac|x<rsup|4>|24>+<frac|x<rsup|4>|4>+o(x<rsup|5>)=1+<frac|x<rsup|2>|2>+<frac|5|24>x<rsup|4>+o(x<rsup|5>).
  </equation*>

  Moltiplicando per <math|x-<frac|x<rsup|3>|6>+<frac|x<rsup|5>|120>>:

  <\equation*>
    tan x=x+<around*|(|<frac|1|2>-<frac|1|6>|)>x<rsup|3>+<around*|(|<frac|5|24>-<frac|1|12>+<frac|1|120>|)>x<rsup|5>+o(x<rsup|5>)=x+<frac|x<rsup|3>|3>+<frac|2|15>x<rsup|5>+o(x<rsup|5>).
  </equation*>

  Essendo dispari, il resto è anche <math|o(x<rsup|6>)>.

  <em|Inversa.> Scriviamo <math|tan x=x+a*x<rsup|3>+b*x<rsup|5>+o(x<rsup|5>)>
  e imponiamo <math|arctan(tan x)=x>. Con <math|(tan
  x)<rsup|3>=x<rsup|3>+3a*x<rsup|5>+o(x<rsup|5>)> e <math|(tan
  x)<rsup|5>=x<rsup|5>+o(x<rsup|5>)>:

  <\equation*>
    x+<around*|(|a-<frac|1|3>|)>x<rsup|3>+<around*|(|b-a+<frac|1|5>|)>x<rsup|5>+o(x<rsup|5>)=x,
  </equation*>

  e per unicità <math|a=<frac|1|3>>, <math|b=a-<frac|1|5>=<frac|2|15>>. (Un
  terzo metodo, le derivate successive, è il più faticoso.)

  <section|Esercizi dalla lezione>

  <\guidato|Una cancellazione al numeratore>
    Calcola <math|lim<rsub|x\<rightarrow\>0><frac|log(1+sin<rsup|2>x)-x<rsup|2>|sin<rsup|2>(tanh<rsup|2>x)-x<rsup|5>>>
    (<math|tanh> è nella sezione successiva; qui basta <math|tanh
    x\<sim\>x>).

    <em|Idea.> Al denominatore la parte principale non si cancella; al
    numeratore sì, e bisogna arrivare a <math|x<rsup|4>>.

    <em|Conto.> Denominatore: <math|sin(tanh<rsup|2>x)\<sim\>x<rsup|2>>,
    quindi <math|sin<rsup|2>(tanh<rsup|2>x)-x<rsup|5>=x<rsup|4>+o(x<rsup|4>)>.
    Numeratore: <math|sin<rsup|2>x=x<rsup|2>-<frac|x<rsup|4>|3>+o(x<rsup|4>)>,
    e con <math|log(1+t)=t-<frac|t<rsup|2>|2>+o(t<rsup|2>)>:

    <\equation*>
      log(1+sin<rsup|2>x)=x<rsup|2>-<frac|x<rsup|4>|3>-<frac|x<rsup|4>|2>+o(x<rsup|4>)=x<rsup|2>-<frac|5|6>x<rsup|4>+o(x<rsup|4>).
    </equation*>

    Il limite è <math|-<frac|5|6>>.

    <em|Controllo.> Si sviluppa solo dove serve: il denominatore si
    accontenta della parte principale.
  </guidato>

  <\itemize>
    <item><math|lim<rsub|x\<rightarrow\>0><frac|<sqrt|1+x|3>+<sqrt|1-x|3>-2|1-cos
    x+x<rsup|4>>=-<frac|4|9>>: con <math|(1\<pm\>x)<rsup|1/3>=1\<pm\><frac|x|3>-<frac|x<rsup|2>|9>+o(x<rsup|2>)>
    il numeratore è <math|-<frac|2|9>x<rsup|2>+o(x<rsup|2>)>, il denominatore
    <math|<frac|x<rsup|2>|2>+o(x<rsup|2>)>.

    <item><math|(1+x)<rsup|1/x>-e=e(e<rsup|-x/2+o(x)>-1)=-<frac|e|2>x+o(x)>:
    infinitesimo di ordine <math|1>, perché
    <math|<frac|log(1+x)|x>=1-<frac|x|2>+o(x)>.

    <item><math|n<rsup|2>(1-n arctan<frac|1|n>)\<rightarrow\><frac|1|3>>:
    l'argomento <math|<frac|1|n>\<rightarrow\>0>, e
    <math|arctan<frac|1|n>=<frac|1|n>-<frac|1|3n<rsup|3>>+o(<frac|1|n<rsup|4>>)>
    dà <math|n<rsup|2>(<frac|1|3n<rsup|2>>+o(<frac|1|n<rsup|3>>))=<frac|1|3>+o(<frac|1|n>)>.

    <item><math|<sqrt|n+1>-<sqrt|n>=<sqrt|n>(<sqrt|1+<frac|1|n>>-1)=<frac|1|2<sqrt|n>>+o(<frac|1|<sqrt|n>>)>.

    <item><math|<frac|n<rsup|3>+5|n<rsup|3>-2>-<sqrt|4|n>=-<frac|log
    4|n>+o(<frac|1|n>)>: il primo termine è
    <math|1+<frac|7|n<rsup|3>-2>=1+o(<frac|1|n>)>, il secondo
    <math|e<rsup|(log 4)/n>=1+<frac|log 4|n>+o(<frac|1|n>)>. Conta il termine
    che si stacca da <math|1> più lentamente.

    <item>Per <math|x\<rightarrow\>1>, con <math|h=x-1>:
    <math|<frac|3+x<rsup|2>|2+x>=<frac|4+2h+h<rsup|2>|3>(1+<frac|h|3>)<rsup|-1>=<frac|4|3>+<frac|2|9>h+<frac|7|27>h<rsup|2>-<frac|7|81>h<rsup|3>+o(h<rsup|3>)>.
  </itemize>

  <\attenzione|Taylor vale vicino al centro>
    <math|lim<rsub|n\<rightarrow\>+\<infty\>><frac|2cos
    n-2+n<rsup|2>|n<rsup|4>>>: sostituire <math|cos
    n=1-<frac|n<rsup|2>|2>+<frac|n<rsup|4>|24>+\<cdots\>> darebbe
    <math|<frac|1|12>>, ma è sbagliato, perché
    <math|n\<rightarrow\>+\<infty\>> e non a <math|0>. Il limite giusto viene
    dalla limitatezza: <math|<frac|1|n<rsup|2>>+<frac|2cos
    n-2|n<rsup|4>>\<rightarrow\>0>. Non basta che la formula somigli a un
    esempio già visto.
  </attenzione>

  <section|Le funzioni iperboliche>

  Per <math|x\<in\>\<bbb-R\>>:

  <\equation*>
    sinh x=<frac|e<rsup|x>-e<rsup|-x>|2>,<space|2em>cosh
    x=<frac|e<rsup|x>+e<rsup|-x>|2>,<space|2em>tanh x=<frac|sinh x|cosh x>,
  </equation*>

  (<math|cosh x\<gtr\>0>, quindi <math|tanh> è definita ovunque). <math|sinh>
  e <math|tanh> sono dispari, <math|cosh> è pari, nessuna è periodica. Per
  <math|x\<rightarrow\>+\<infty\>>: <math|sinh,cosh\<rightarrow\>+\<infty\>>,
  <math|tanh x=<frac|1-e<rsup|-2x>|1+e<rsup|-2x>>\<rightarrow\>1>; per
  <math|x\<rightarrow\>-\<infty\>>: <math|sinh\<rightarrow\>-\<infty\>>,
  <math|cosh\<rightarrow\>+\<infty\>>, <math|tanh\<rightarrow\>-1>.
  <math|sinh> e <math|tanh> passano per l'origine e crescono strettamente;
  <math|cosh> ha minimo <math|1> in <math|0> e cresce strettamente su
  <math|[0,+\<infty\>)>.

  <figura|<image|analisi-1-assets/iperboliche.pdf|130.0mm|72.5mm||>|<math|cosh>
  (sopra, minimo <math|1>), <math|sinh> (per l'origine, crescente) e
  <math|tanh> (tratteggiata, fra gli asintoti <math|y=\<pm\>1>).>

  Da <math|sinh<rsup|2>x=<frac|e<rsup|2x>+e<rsup|-2x>-2|4>> e
  <math|cosh<rsup|2>x=<frac|e<rsup|2x>+e<rsup|-2x>+2|4>>:

  <\equation*>
    cosh<rsup|2>x-sinh<rsup|2>x=1,<space|2em>cosh(2x)=cosh<rsup|2>x+sinh<rsup|2>x,<space|2em>sinh(2x)=2sinh
    x cosh x.
  </equation*>

  Attenzione ai segni: nella relazione fondamentale c'è una <em|differenza>.
  Derivando: <math|(sinh x)<rprime|'>=cosh x>, <math|(cosh x)<rprime|'>=sinh
  x> (segno <em|positivo>), <math|(tanh x)<rprime|'>=<frac|cosh<rsup|2>x-sinh<rsup|2>x|cosh<rsup|2>x>=<frac|1|cosh<rsup|2>x>=1-tanh<rsup|2>x\<gtr\>0>.

  Gli sviluppi hanno gli stessi termini di seno e coseno, ma tutti positivi:

  <\equation*>
    sinh x=x+<frac|x<rsup|3>|3!>+<frac|x<rsup|5>|5!>+o(x<rsup|6>),<space|2em>cosh
    x=1+<frac|x<rsup|2>|2!>+<frac|x<rsup|4>|4!>+o(x<rsup|5>).
  </equation*>

  Si ottengono dalle derivate (in <math|0> valgono <math|0,1,0,1,\<ldots\>> e
  <math|1,0,1,0,\<ldots\>>) oppure da <math|e<rsup|\<pm\>x>>: la semisomma
  tiene i termini pari, la semidifferenza i dispari. <math|cosh> e
  <math|sinh> sono la parte pari e la parte dispari di <math|e<rsup|x>>, e
  <math|cosh x+sinh x=e<rsup|x>>.

  <strong|Le inverse (settori).> <math|sinh:\<bbb-R\>\<rightarrow\>\<bbb-R\>>
  e <math|tanh:\<bbb-R\>\<rightarrow\>(-1,1)> sono biiettive; <math|cosh> va
  ristretto a <math|[0,+\<infty\>)\<rightarrow\>[1,+\<infty\>)>. Le inverse
  sono <math|<math-up|Sett<space|0.2em>sinh>:\<bbb-R\>\<rightarrow\>\<bbb-R\>>,
  <math|<math-up|Sett<space|0.2em>cosh>:[1,+\<infty\>)\<rightarrow\>[0,+\<infty\>)>,
  <math|<math-up|Sett<space|0.2em>tanh>:(-1,1)\<rightarrow\>\<bbb-R\>>. Per
  <math|y\<geq\>1> cerchiamo <math|x\<geq\>0> con
  <math|<frac|e<rsup|x>+e<rsup|-x>|2>=y>; con <math|z=e<rsup|x>\<gtr\>0>:
  <math|z<rsup|2>-2y*z+1=0>, <math|z<rsub|\<pm\>>=y\<pm\><sqrt|y<rsup|2>-1>>.
  Le due radici sono positive con prodotto <math|1>; <math|x\<geq\>0> chiede
  <math|z\<geq\>1>, quindi <math|z<rsub|+>>:

  <\equation*>
    <math-up|Sett<space|0.2em>cosh> y=log<around*|(|y+<sqrt|y<rsup|2>-1>|)>,<space|2em>y\<geq\>1.
  </equation*>

  (L'altra radice dà <math|log z<rsub|->=-log z<rsub|+>>, il valore opposto.)

  <strong|Perché \Siperboliche\T.> Da <math|cosh<rsup|2>\<alpha\>-sinh<rsup|2>\<alpha\>=1>,
  il punto <math|(cosh \<alpha\>,sinh \<alpha\>)> sta sull'iperbole
  <math|x<rsup|2>-y<rsup|2>=1>. Il docente ha enunciato senza dimostrazione
  che il settore fra il segmento da <math|O> a <math|(1,0)>, l'arco di
  iperbole e il segmento da <math|O> al punto ha area
  <math|<frac|\<alpha\>|2>>, come il settore circolare del capitolo 6: da qui
  il nome \Ssettori\T. Un'altra anticipazione: con la formula di Eulero
  <math|e<rsup|i*x>=cos x+i sin x>, <math|cosh(i*x)=cos x> e
  <math|sinh(i*x)=i sin x>. Sono finestre sul futuro (serie e funzioni
  complesse), non conseguenze del Taylor reale.

  <figura|<image|analisi-1-assets/iperbole.pdf|155.0mm|65.0mm||>|A sinistra:
  <math|(cos \<alpha\>,sin \<alpha\>)> sulla circonferenza, settore di area
  <math|<frac|\<alpha\>|2>>. A destra: <math|(cosh \<alpha\>,sinh \<alpha\>)>
  sull'iperbole <math|x<rsup|2>-y<rsup|2>=1>, settore (grigio) di area
  <math|<frac|\<alpha\>|2>>.>

  <\officina|17. Quanto sviluppare>
    Prima di sviluppare, decidi l'ordine.

    <\enumerate>
      <item>Trova la parte principale del pezzo più semplice (spesso il
      denominatore): il suo grado <math|d> è l'ordine di riferimento.

      <item>Sviluppa gli altri pezzi fino a resti <math|o(x<rsup|d>)>,
      tenendo conto dei fattori esterni (un <math|x> davanti fa risparmiare
      un ordine).

      <item>Nelle composizioni controlla che l'argomento tenda al centro
      dello sviluppo esterno, e che il resto composto sia abbastanza piccolo.

      <item>Se tutto si cancella, non concludere \S<math|0>\T: torna al punto
      2 con un ordine in più.
    </enumerate>
  </officina>

  <\verifica|16>
    <strong|(a)> Trova la parte principale di <math|e<rsup|x>-1-sin x>.
    <strong|(b)> Sviluppa <math|e<rsup|sin x>> all'ordine <math|3>.
    <strong|(c)> Calcola <math|lim<rsub|x\<rightarrow\>0><frac|cosh x-cos
    x|x<rsup|2>>>.
  </verifica>

  <appendix|La cassetta degli attrezzi>

  Le dimostrazioni di questo libro usano pochi schemi, sempre gli stessi.
  Quando non sai da dove cominciare, guarda la forma della frase da
  dimostrare e cerca qui l'attrezzo adatto.

  <\padded>
    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-valign|t>|<cwith|1|-1|2|2|cell-hyphen|t>|<cwith|1|-1|1|1|cell-hyphen|t>|<cwith|1|-1|1|1|cell-width|0.3par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|2|2|cell-width|0.55par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tsep|0.45fn>|<cwith|1|-1|1|-1|cell-bsep|0.45fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|2|-1|1|-1|cell-bborder|0.25pt>|<cwith|1|-1|1|1|cell-lsep|0fn>|<cwith|1|-1|3|3|cell-rsep|0fn>|<table|<row|<cell|<strong|Se
    la frase dice\<ldots\>>>|<cell|<strong|prova
    a\<ldots\>>>|<cell|<strong|vedi>>>|<row|<cell|\Sper ogni\T, \Sesiste\T, o
    va negata>|<cell|riscriverla in simboli; per negarla scambia
    <math|\<forall\>> ed <math|\<exists\>> e nega il predicato; ricorda che
    <math|\<forall\>x \<exists\>y> lascia <math|y> dipendere da
    <math|x>>|<cell|officina 1>>|<row|<cell|\S<math|f> è iniettiva /
    suriettiva\T>|<cell|prendere due punti con la stessa immagine; oppure un
    <math|b> qualsiasi e costruirgli una controimmagine>|<cell|officina
    2>>|<row|<cell|\Sper ogni <math|n\<geq\>n<rsub|0>>\T>|<cell|induzione:
    scrivi <math|P(n)>, base, passo separando l'ultimo termine; parti dal
    primo <math|n> vero>|<cell|officina 3>>|<row|<cell|una disuguaglianza che
    non passa da <math|n> a <math|n+1>>|<cell|dimostrare un enunciato più
    forte, per esempio un'uguaglianza esatta>|<cell|officina
    4>>|<row|<cell|\S<math|sup A=L>\T, oppure \Sè unico\T>|<cell|maggiorante
    più \S<math|\<forall\>\<varepsilon\> \<exists\>a\<gtr\>L-\<varepsilon\>>\T;
    per l'unicità, due candidati e antisimmetria>|<cell|officina
    5>>|<row|<cell|un'equazione o disequazione da trasformare>|<cell|segnare
    per ogni passaggio <math|\<Leftrightarrow\>> o solo
    <math|\<Rightarrow\>>; verificare i candidati; scrivere prima il
    dominio>|<cell|officina 6>>|<row|<cell|un'identità con <math|arcsin>,
    <math|arccos>, <math|arctan>>|<cell|trovare un angolo candidato, poi
    controllare che stia nell'intervallo principale>|<cell|officina
    7>>|<row|<cell|\S<math|a<rsub|n>\<rightarrow\>\<#2113\>>\T,
    \S<math|a<rsub|n>\<rightarrow\>+\<infty\>>\T>|<cell|sfida e risposta:
    fissato <math|\<varepsilon\>> (o <math|M>), trova <math|n<rsub|0>>; con
    più indici prendi il massimo>|<cell|officina 8>>|<row|<cell|un limite di
    somma, prodotto, \<ldots\>>|<cell|brutta copia all'indietro, bella copia
    in avanti; aggiungi e togli un termine misto>|<cell|officina
    9>>|<row|<cell|\S<math|a<rsub|n>\<rightarrow\>+\<infty\>>\T o
    \S<math|\<rightarrow\>0>\T con potenze, fattoriali>|<cell|radice o
    rapporto; un <math|q> fra il limite e <math|1>; confronto con
    <math|q<rsup|n>>>|<cell|officina 10>>|<row|<cell|un limite di funzione
    composta>|<cell|cambio di variabile: pongo <math|y=\<ldots\>>,
    <math|y\<rightarrow\>\<ldots\>>>|<cell|officina 11>>|<row|<cell|una forma
    <math|<frac|0|0>> con funzioni elementari>|<cell|moltiplica e dividi per
    far comparire i limiti notevoli>|<cell|officina 12>>|<row|<cell|\Sil
    limite non esiste\T>|<cell|due successioni (o sottosuccessioni) con
    limiti diversi>|<cell|officina 13>>|<row|<cell|un limite con
    cancellazioni>|<cell|sviluppare con gli o piccoli, mai con <math|\<sim\>>
    nelle somme>|<cell|officina 14>>|<row|<cell|\Sle due definizioni
    coincidono\T>|<cell|le due implicazioni separate, e che l'oggetto sia lo
    stesso>|<cell|officina 15>>|<row|<cell|un fatto da usare in una
    dimostrazione>|<cell|controllare come è stato dimostrato: niente
    cicli>|<cell|officina 16>>|<row|<cell|uno sviluppo di Taylor da
    calcolare>|<cell|decidere l'ordine dalla parte principale; argomento
    verso il centro; resti abbastanza piccoli>|<cell|officina 17>>>>>
  </padded>

  Un'ultima abitudine, che vale per ogni capitolo: alla fine di un conto
  prova un caso numerico (<math|n=1000>, <math|x=0,01>). Non dimostra nulla,
  ma smaschera quasi tutti gli errori.

  <appendix|Risposte alle verifiche>

  <strong|1.> (a) <math|\<exists\>x\<in\>\<bbb-R\>
  \<forall\>n\<in\>\<bbb-N\>, n\<leq\>x>: esiste un reale che supera tutti i
  naturali. È falsa, perché <math|sup \<bbb-N\>=+\<infty\>> (capitolo 4). (b)
  <math|\<varnothing\>\<in\>{\<varnothing\>}> è vera: <math|\<varnothing\>> è
  l'unico elemento. <math|\<varnothing\>\<subseteq\>{\<varnothing\>}> è vera:
  il vuoto è contenuto in tutto. <math|{\<varnothing\>}\<subseteq\>\<varnothing\>>
  è falsa: l'elemento <math|\<varnothing\>> non sta nel vuoto. (c)
  <math|\<cal-P\>(\<varnothing\>)={\<varnothing\>}> ha un elemento, quindi
  <math|\<cal-P\>(\<cal-P\>(\<varnothing\>))={\<varnothing\>,{\<varnothing\>}}>
  ne ha <math|2<rsup|1>=2>.

  <strong|2.> (a) <math|A={1}>, <math|B={1,2}>, <math|C={1}>, <math|f(1)=1>,
  <math|g(1)=g(2)=1>: <math|g\<circ\>f> va da un insieme di un elemento,
  quindi è iniettiva; <math|g> no. Coerente con il fatto 3: si eredita solo
  l'iniettività di <math|f>. (b) Sì: <math|2a+1=2b+1\<Rightarrow\>a=b>, e
  dato <math|y> il punto <math|x=<frac|y-1|2>> lo colpisce. L'inversa è
  <math|y\<mapsto\><frac|y-1|2>>.

  <strong|3.> (a) Il passo <math|(n+1)!\<geq\>2<rsup|n+1>> funziona già da
  <math|n=1>, ma la base <math|1!\<geq\>2> è falsa: nessuna tessera cade, e
  infatti la frase è falsa per <math|n=1,2,3>. (b) Base: <math|1=1<rsup|2>>.
  Passo: <math|n<rsup|2>+(2n+1)=(n+1)<rsup|2>>. (c) Nel passo si moltiplica
  per <math|1+x>, che deve essere <math|\<geq\>0>. Senza l'ipotesi la tesi
  può fallire: con <math|x=-3>, <math|n=5> si ha <math|(-2)<rsup|5>=-32>, che
  non è <math|\<geq\>1-15=-14>.

  <strong|4.> (a) <math|A={0,<frac|1|2>,<frac|2|3>,\<ldots\>}>: <math|min
  A=inf A=0>; <math|sup A=1>, che non è massimo perché
  <math|1-<frac|1|n>\<less\>1> sempre, mentre per ogni
  <math|\<varepsilon\>\<gtr\>0> basta <math|n\<gtr\><frac|1|\<varepsilon\>>>
  per avere <math|1-<frac|1|n>\<gtr\>1-\<varepsilon\>>. (b)
  <math|\<exists\>a\<in\>A, a\<gtr\>L>. (c) Da
  <math|L-\<varepsilon\>\<less\>n> segue <math|n+1\<gtr\>L+1-\<varepsilon\>>,
  che è <math|\<geq\>L> se <math|\<varepsilon\>\<leq\>1>: va bene qualunque
  <math|\<varepsilon\>\<leq\>1>.

  <strong|5.> (a) <math|\|x\|=\<lambda\>+1>: nessuna soluzione se
  <math|\<lambda\>\<less\>-1>, una (<math|x=0>) se <math|\<lambda\>=-1>, due
  se <math|\<lambda\>\<gtr\>-1>. (b) <math|f(-x)=-x<rsup|3>-x=-f(x)>:
  dispari. (c) Serve <math|x\<geq\>0>; elevando, <math|x<rsup|2>-x-2=0>,
  candidati <math|2> e <math|-1>; resta solo <math|x=2> (<math|<sqrt|4>=2>).

  <strong|6.> (a) <math|arcsin(sin 3)=\<pi\>-3\<approx\>0,14>, che sta in
  <math|[-<frac|\<pi\>|2>,<frac|\<pi\>|2>]> e ha lo stesso seno.
  <math|arctan(tan 2)=2-\<pi\>\<approx\>-1,14>, perché la tangente ha periodo
  <math|\<pi\>>. (b) Esattamente per <math|x\<in\>[0,\<pi\>]>. (c)
  <math|tan(arcsin x)=<frac|sin(arcsin x)|cos(arcsin
  x)>=<frac|x|<sqrt|1-x<rsup|2>>>>.

  <strong|7.> (a) <math|\<forall\>\<varepsilon\>\<gtr\>0 \<exists\>n<rsub|0>
  \<forall\>n\<geq\>n<rsub|0>, 3-\<varepsilon\>\<leq\>a<rsub|n>\<less\>3>.
  (b) <math|\|<frac|n|n+1>-1\|=<frac|1|n+1>\<leq\>\<varepsilon\>> appena
  <math|n+1\<geq\><frac|1|\<varepsilon\>>>: fissato
  <math|\<varepsilon\>\<gtr\>0> basta un intero
  <math|n<rsub|0>\<geq\><frac|1|\<varepsilon\>>>. (c) Falso:
  <math|1-<frac|1|n>\<less\>1> ma il limite è <math|1>. Si può solo dire
  <math|\<#2113\>\<leq\>1>.

  <strong|8.> (a) Sì, ha sempre limite (il supremo, eventualmente
  <math|+\<infty\>>); converge solo se è limitata superiormente:
  <math|a<rsub|n>=n> non converge. (b) <math|\|\<lambda\>a<rsub|n>-\<lambda\>\<#2113\>\|=\|\<lambda\>\|\<cdot\>\|a<rsub|n>-\<#2113\>\|>;
  fissato <math|\<varepsilon\>\<gtr\>0>, la definizione con
  <math|<frac|\<varepsilon\>|\|\<lambda\>\|+1>> dà definitivamente
  <math|\|\<lambda\>a<rsub|n>-\<lambda\>\<#2113\>\|\<leq\><frac|\|\<lambda\>\|\<varepsilon\>|\|\<lambda\>\|+1>\<less\>\<varepsilon\>>.
  (c) Raccogliendo <math|n<rsup|3>>: <math|<frac|3-<frac|1|n<rsup|2>>|<frac|1|n<rsup|3>>-1>\<rightarrow\>-3>.

  <strong|9.> (a) In entrambi il rapporto tende a <math|1>, il caso in cui il
  criterio tace: infatti <math|n\<rightarrow\>+\<infty\>> e
  <math|<frac|1|n>\<rightarrow\>0>, due comportamenti opposti con lo stesso
  <math|\<#2113\>=1>. (b) Rapporto <math|<frac|1|2><around*|(|<frac|n+1|n>|)><rsup|10>\<rightarrow\><frac|1|2>\<less\>1>:
  il limite è <math|0>. (c) <math|5<sqrt|1+(3/5)<rsup|n>|n>>, e il radicando
  sta fra <math|1> e <math|2>: il limite è <math|5>.

  <strong|10.> (a) <math|\<forall\>M\<in\>\<bbb-R\>
  \<exists\>\<delta\>\<gtr\>0 \<forall\>x\<in\>D\<cap\>[2-\<delta\>,2),
  f(x)\<geq\>M>. (b) <math|3> è un punto isolato di <math|\<bbb-N\>> (non di
  accumulazione), quindi il limite per <math|x\<rightarrow\>3> non ha senso.
  Per <math|x\<rightarrow\>+\<infty\>> sì, perché <math|sup
  \<bbb-N\>=+\<infty\>>: è il limite di una successione. (c)
  <math|\|(3x+1)-(3x<rsub|0>+1)\|=3\|x-x<rsub|0>\|\<leq\>\<varepsilon\>> se
  <math|\|x-x<rsub|0>\|\<leq\>\<delta\>=<frac|\<varepsilon\>|3>>.

  <strong|11.> (a) <math|<frac|tan 5x|5x>\<cdot\>5x\<cdot\><frac|2x|log(1+2x)>\<cdot\><frac|1|2x>\<rightarrow\><frac|5|2>>.
  (b) <math|e<rsup|n log(1+3/n)>>, con esponente
  <math|3\<cdot\><frac|log(1+3/n)|3/n>\<rightarrow\>3>: il limite è
  <math|e<rsup|3>>. (c) Il limite notevole vale per <math|x\<rightarrow\>0>,
  non per <math|x\<rightarrow\>+\<infty\>>. Lì <math|\|<frac|sin
  x|x>\|\<leq\><frac|1|x>\<rightarrow\>0>, quindi il limite è <math|0>.

  <strong|12.> (a) Per <math|n=6k> vale <math|cos(2k\<pi\>)=1>; per
  <math|n=6k+3> vale <math|cos(\<pi\>+2k\<pi\>)=-1>: due limiti diversi. (b)
  <math|<frac|n|<sqrt|n<rsup|2>+n>+n>=<frac|1|<sqrt|1+1/n>+1>\<rightarrow\><frac|1|2>>.
  (c) Gli <math|n> addendi stanno fra <math|<frac|n|n<rsup|2>+n>> e
  <math|<frac|n|n<rsup|2>+1>>, quindi la somma sta fra
  <math|<frac|n<rsup|2>|n<rsup|2>+n>> e <math|<frac|n<rsup|2>|n<rsup|2>+1>>,
  entrambi <math|\<rightarrow\>1>: il limite è <math|1>.

  <strong|13.> (a) Tutte vere: <math|<frac|x<rsup|2>sin x|x<rsup|2>>=sin
  x\<rightarrow\>0>; <math|<frac|x+x<rsup|2>|x>=1+x\<rightarrow\>1>;
  <math|x\<cdot\>x\<omega\>=x<rsup|2>\<omega\>>. (b)
  <math|x<rsup|2>=o(x<rsup|3>)>, perché <math|<frac|x<rsup|2>|x<rsup|3>>=<frac|1|x>\<rightarrow\>0>:
  all'infinito vince la potenza più <em|alta>. (c)
  <math|<frac|3x-x+o(x)|x>\<rightarrow\>2>.

  <strong|14.> (a) <math|y=1+x>. (b) <math|x<rsup|x>=e<rsup|x log x>>,
  derivata <math|x<rsup|x>(log x+1)>. (c) Continua sì; derivabile no: il
  rapporto incrementale <math|<frac|\|h\||h>> vale <math|1> per
  <math|h\<gtr\>0> e <math|-1> per <math|h\<less\>0>, e non ha limite.

  <strong|15.> (a) <math|1+<frac|x|2>-<frac|x<rsup|2>|8>+o(x<rsup|2>)>,
  perché <math|<binom|1/2|2>=<frac|<frac|1|2>(-<frac|1|2>)|2>=-<frac|1|8>>.
  (b) <math|<frac|f<rprime|'>|g<rprime|'>>=1-sin x> non ha limite, quindi il
  teorema tace; il limite vale <math|1> per i carabinieri,
  <math|<frac|x-1|x>\<leq\><frac|x+cos x|x>\<leq\><frac|x+1|x>>. (c) Il
  coseno è pari: le sue derivate di ordine dispari sono dispari e valgono
  <math|0> in <math|0>.

  <strong|16.> (a) <math|(1+x+<frac|x<rsup|2>|2>)-1-x+o(x<rsup|2>)=<frac|x<rsup|2>|2>+o(x<rsup|2>)>:
  parte principale <math|<frac|x<rsup|2>|2>>, ordine <math|2>. (b) Con
  <math|u=sin x=x-<frac|x<rsup|3>|6>+o(x<rsup|3>)>,
  <math|u<rsup|2>=x<rsup|2>+o(x<rsup|3>)>,
  <math|u<rsup|3>=x<rsup|3>+o(x<rsup|3>)>:
  <math|e<rsup|u>=1+u+<frac|u<rsup|2>|2>+<frac|u<rsup|3>|6>+o(x<rsup|3>)=1+x+<frac|x<rsup|2>|2>+o(x<rsup|3>)>;
  i termini cubici si cancellano. (c) <math|cosh x-cos
  x=x<rsup|2>+o(x<rsup|2>)>: il limite è <math|1>.
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
    <associate|auto-10|<tuple|9|40>>
    <associate|auto-11|<tuple|10|44>>
    <associate|auto-12|<tuple|11|48>>
    <associate|auto-13|<tuple|12|53>>
    <associate|auto-14|<tuple|13|58>>
    <associate|auto-15|<tuple|14|62>>
    <associate|auto-16|<tuple|15|66>>
    <associate|auto-17|<tuple|16|71>>
    <associate|auto-18|<tuple|A|77>>
    <associate|auto-19|<tuple|B|79>>
    <associate|auto-2|<tuple|1|4>>
    <associate|auto-3|<tuple|2|9>>
    <associate|auto-4|<tuple|3|12>>
    <associate|auto-5|<tuple|4|16>>
    <associate|auto-6|<tuple|5|20>>
    <associate|auto-7|<tuple|6|27>>
    <associate|auto-8|<tuple|7|32>>
    <associate|auto-9|<tuple|8|36>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Come
      usare questo libro> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Il
      linguaggio della matematica> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Funzioni>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Il
      principio di induzione> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>I
      numeri reali> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Funzioni
      reali e grafici> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Trigonometria
      e funzioni inverse> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Successioni
      e limiti> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Monotonia,
      il numero <with|mode|<quote|math>|e> e l'algebra dei limiti>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Radici,
      rapporti e gerarchia degli infiniti>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Limiti
      di funzioni e continuità> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>I
      limiti notevoli> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Limiti
      che non esistono e altre tecniche> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|13<space|2spc>Il
      linguaggio degli o piccoli> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|14<space|2spc>Derivate>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|15<space|2spc>De
      L'Hôpital e i polinomi di Taylor> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|16<space|2spc>Calcolare
      con gli sviluppi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendice
      A<space|2spc>La cassetta degli attrezzi>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendice
      B<space|2spc>Risposte alle verifiche>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>