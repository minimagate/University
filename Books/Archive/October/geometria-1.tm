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

    <with|font-size|3.6|Geometria 1>

    <vspace|1.4fn>

    <with|font-shape|small-caps|font-size|1.25|ottobre 2026>
  </with>

  <chapter*|Come usare questo libro>

  Questo libro raccoglie le lezioni di Geometria 1 dal 23 settembre al 27
  ottobre e le rimette in un ordine che costruisce un mattone alla volta. Non
  dà nulla per scontato: ogni idea parte da un esempio concreto, poi diventa
  una definizione, poi un risultato con la sua spiegazione.

  Il filo è uno solo: passare da oggetti che sappiamo disegnare (frecce nel
  piano, punti, coordinate) a <strong|definizioni astratte> che funzionano
  allo stesso modo per numeri, polinomi, funzioni e matrici. Prima prepariamo
  gli attrezzi (insiemi, applicazioni, campi, numeri complessi e polinomi);
  poi costruiamo gli <strong|spazi vettoriali> con sottospazi, basi e
  dimensione; infine usiamo tutto per risolvere i <strong|sistemi lineari>
  con l'algoritmo di Gauss e il rango.

  Lungo il testo trovi cinque tipi di riquadro.

  <\itemize>
    <item><strong|In breve>: all'inizio di ogni capitolo, che cosa impareremo
    e perché.

    <item><strong|Esercizio guidato>: un problema risolto passo per passo.
    Prova a fare ogni passo da solo prima di leggerlo. Quasi tutti vengono
    dalle lezioni; gli altri sono esempi aggiunti per allenarsi.

    <item><strong|Attenzione>: un errore tipico, e come evitarlo.

    <item><strong|Immagine mentale>: un modo di vedere un'idea che la rende
    facile da ricordare.

    <item><strong|Officina della dimostrazione>: in ogni capitolo un attrezzo
    del ragionamento. In algebra lineare le dimostrazioni usano pochi schemi
    che ritornano sempre: due inclusioni, due candidati che coincidono, una
    combinazione lineare nulla, una base che si estende, un conto di
    dimensioni. Le officine li presentano uno alla volta; l'appendice A li
    riassume.
  </itemize>

  Ogni capitolo finisce con una breve <strong|verifica>. Le risposte, con il
  perché, sono nell'appendice B.

  <strong|Convenzioni.> <math|\<bbb-N\>,\<bbb-Z\>,\<bbb-Q\>,\<bbb-R\>,\<bbb-C\>>
  sono naturali, interi, razionali, reali e complessi; se lo zero sta in
  <math|\<bbb-N\>> dipende dal testo, e qui non conta. <math|K> indica un
  campo qualunque (gli scalari), di solito <math|\<bbb-R\>> o
  <math|\<bbb-C\>>. I vettori sono lettere minuscole <math|u,v,w>; quando
  servono le loro componenti li scriviamo in colonna.
  <math|<math-up|span>(\<ldots\>)>, <math|<math-up|rank>(A)>, <math|ker(F)>,
  <math|<math-up|Im>(F)> sono span, rango, nucleo e immagine. Le figure, gli
  esempi aggiuntivi e le verifiche sono integrazioni didattiche, non parole
  del docente.

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Come usare
    questo libro> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Insiemi
    e applicazioni> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Campi:
    le regole del calcolo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>I
    numeri complessi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>Polinomi
    e radici> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>Spazi
    vettoriali> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>Sottospazi>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Generatori,
    indipendenza, basi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8<space|2spc>Dimensione>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9<space|2spc>Somme
    e somme dirette> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|10<space|2spc>Matrici,
    sistemi e applicazioni lineari> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|11<space|2spc>L'eliminazione
    di Gauss> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|12<space|2spc>Il
    rango e le matrici elementari> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendice
    A<space|2spc>La cassetta degli attrezzi>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendice
    B<space|2spc>Risposte alle verifiche>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|0.5fn>
  </table-of-contents>

  <chapter|Insiemi e applicazioni>

  <\inbreve>
    In Geometria 1 il linguaggio diventa preciso: spostare una parola o
    dimenticare una condizione cambia il significato di una frase. In questo
    capitolo fissiamo le parole di base (insiemi, coppie, applicazioni) e
    impariamo i primi due attrezzi: dimostrare che due insiemi sono uguali e
    costruire l'inversa di una biiezione.
  </inbreve>

  <section|Insiemi e operazioni>

  Un <strong|insieme> si indica con una lettera maiuscola; i suoi
  <strong|elementi> con lettere minuscole o altri simboli. Il modo più
  semplice di descriverlo è elencare gli elementi:
  <math|A=<around|{|a,b,c|}>>. Scriviamo <math|a\<in\>A> (\S<math|a>
  appartiene ad <math|A>\T) e <math|a\<nin\>A> per la negazione. Gli insiemi
  sono oggetti primitivi: non li definiamo, fissiamo solo notazioni e
  operazioni.

  Dati due insiemi <math|X> e <math|Y>:

  <\itemize>
    <item>l'<strong|intersezione> <math|X\<cap\>Y=<around|{|a\<mid\>a\<in\>X<text|
    e >a\<in\>Y|}>> contiene gli elementi comuni;

    <item>l'<strong|unione> <math|X\<cup\>Y=<around|{|a\<mid\>a\<in\>X<text|
    oppure >a\<in\>Y|}>> contiene gli elementi che stanno in almeno uno dei
    due. \SOppure\T è inclusivo: un elemento può stare in entrambi.
  </itemize>

  Il <strong|prodotto cartesiano> <math|X\<times\>Y=<around|{|(x,y)\<mid\>x\<in\>X,y\<in\>Y|}>>
  è l'insieme delle <strong|coppie ordinate>. L'ordine conta: in generale
  <math|(x,y)\<neq\>(y,x)>. Con <math|X=Y=\<bbb-R\>> otteniamo il piano
  cartesiano <math|\<bbb-R\><rsup|2>=\<bbb-R\>\<times\>\<bbb-R\>>; allo
  stesso modo <math|\<bbb-R\><rsup|3>> è l'insieme delle terne
  <math|(x,y,z)>.

  Una sottigliezza: gli elementi di <math|(\<bbb-R\>\<times\>\<bbb-R\>)\<times\>\<bbb-R\>>
  sono coppie del tipo <math|((x,y),z)>, la cui prima voce è a sua volta una
  coppia. Formalmente non sono le terne <math|(x,y,z)>, ma c'è una
  corrispondenza naturale fra le due scritture, e di solito le
  identifichiamo.

  Gli insiemi numerici sono <math|\<bbb-N\>\<subseteq\>\<bbb-Z\>\<subseteq\>\<bbb-Q\>\<subseteq\>\<bbb-R\>\<subseteq\>\<bbb-C\>>.
  Valgono le due <strong|proprietà distributive>:

  <\equation*>
    X\<cap\>(Y\<cup\>Z)=(X\<cap\>Y)\<cup\>(X\<cap\>Z),<space|2em>X\<cup\>(Y\<cap\>Z)=(X\<cup\>Y)\<cap\>(X\<cup\>Z).
  </equation*>

  <figura|<image|geometria-1-assets/distributiva.pdf|150.0mm|50.0mm||>|Le due
  zone grigie coincidono: è la prima legge distributiva vista con i diagrammi
  di Venn. Il disegno convince, ma la prova vera è quella con le due
  inclusioni.>

  <section|Come si dimostra che due insiemi sono uguali>

  <math|A\<subseteq\>B> (<strong|inclusione>) significa: ogni elemento di
  <math|A> sta anche in <math|B>, cioè <math|\<forall\>x,x\<in\>A\<Rightarrow\>x\<in\>B>.
  Non esclude <math|A=B>. Due insiemi sono uguali quando ciascuno è contenuto
  nell'altro.

  <\officina|1. Uguaglianza tra insiemi: le due inclusioni>
    Per provare <math|A=B> si fanno due dimostrazioni separate.

    <\itemize>
      <item><math|A\<subseteq\>B>: prendi un elemento <em|generico>
      <math|x\<in\>A> (non uno scelto da te) e, usando solo le definizioni,
      arriva a <math|x\<in\>B>.

      <item><math|B\<subseteq\>A>: lo stesso nella direzione opposta.
    </itemize>

    Quando nel mezzo compare un \Soppure\T, si ragiona per casi. Questo
    schema tornerà sempre: per gli span (capitolo 7), per le somme di
    sottospazi (capitolo 9), per le soluzioni dei sistemi (capitolo 10).
  </officina>

  <\guidato|La prima legge distributiva (lezione del 23/09)>
    Dimostra che <math|X\<cap\>(Y\<cup\>Z)=(X\<cap\>Y)\<cup\>(X\<cap\>Z)>.

    <em|Idea.> Due inclusioni; l'\Soppure\T dell'unione si tratta per casi.

    <em|Conto.> Sia <math|a\<in\>X\<cap\>(Y\<cup\>Z)>. Allora <math|a\<in\>X>
    e <math|a\<in\>Y\<cup\>Z>, cioè <math|a\<in\>Y> oppure <math|a\<in\>Z>.
    Se <math|a\<in\>Y>, allora <math|a\<in\>X\<cap\>Y>; se <math|a\<in\>Z>,
    allora <math|a\<in\>X\<cap\>Z>. In entrambi i casi
    <math|a\<in\>(X\<cap\>Y)\<cup\>(X\<cap\>Z)>.

    Viceversa sia <math|a\<in\>(X\<cap\>Y)\<cup\>(X\<cap\>Z)>. Se
    <math|a\<in\>X\<cap\>Y>, allora <math|a\<in\>X> e
    <math|a\<in\>Y\<subseteq\>Y\<cup\>Z>; se <math|a\<in\>X\<cap\>Z>, allora
    <math|a\<in\>X> e <math|a\<in\>Z\<subseteq\>Y\<cup\>Z>. In entrambi i
    casi <math|a\<in\>X\<cap\>(Y\<cup\>Z)>.

    <em|Controllo.> Con <math|X=<around|{|1,2,3|}>>,
    <math|Y=<around|{|1,4|}>>, <math|Z=<around|{|2,5|}>>: a sinistra
    <math|X\<cap\><around|{|1,2,4,5|}>=<around|{|1,2|}>>, a destra
    <math|<around|{|1|}>\<cup\><around|{|2|}>=<around|{|1,2|}>>.
  </guidato>

  <section|Applicazioni>

  Un'<strong|applicazione> (o funzione) <math|f:X\<rightarrow\>Y> è una
  regola che associa a <em|ogni> elemento di <math|X> <em|uno e un solo>
  elemento <math|f(x)> di <math|Y>:

  <\equation*>
    \<forall\>x\<in\>X<space|1em>\<exists\>!y\<in\>Y<text| tale che >y=f(x).
  </equation*>

  Il simbolo <math|\<exists\>!> si legge \Sesiste uno e un solo\T. <math|X> è
  il <strong|dominio>, <math|Y> il <strong|codominio>. Dominio e codominio
  fanno parte della funzione: la stessa formula con un altro dominio o
  codominio dà un'altra applicazione.

  La parola \Sregola\T si rende precisa con il prodotto cartesiano. Una
  <strong|relazione> è un sottoinsieme <math|\<Gamma\>\<subseteq\>X\<times\>Y>;
  essa è il <strong|grafico> di un'applicazione quando per ogni
  <math|x\<in\>X> esiste uno e un solo <math|y> con
  <math|(x,y)\<in\>\<Gamma\>>, e allora si pone <math|f(x)=y>. Il disegno è
  solo un aiuto: la definizione è insiemistica.

  <figura|<image|geometria-1-assets/grafico.pdf|140.0mm|50.0mm||>|Nella
  griglia <math|X\<times\>Y> il grafico di una funzione ha esattamente un
  punto su ogni colonna. A destra una colonna ha due punti e un'altra
  nessuno: non è il grafico di una funzione.>

  <section|Iniettive, suriettive, biiettive>

  <\itemize>
    <item><math|f> è <strong|iniettiva> se elementi distinti hanno immagini
    distinte: <math|x\<neq\>x<rprime|'>\<Rightarrow\>f(x)\<neq\>f(x<rprime|'>)>,
    o, in modo equivalente, <math|f(x)=f(x<rprime|'>)\<Rightarrow\>x=x<rprime|'>>.
    Non è iniettiva se esistono <math|x\<neq\>x<rprime|'>> con
    <math|f(x)=f(x<rprime|'>)>.

    <item><math|f> è <strong|suriettiva> se ogni elemento del codominio viene
    raggiunto: <math|\<forall\>y\<in\>Y<space|0.5em>\<exists\>x\<in\>X> con
    <math|f(x)=y>, cioè <math|f(X)=Y>.

    <item><math|f> è <strong|biiettiva> (una corrispondenza biunivoca) se è
    iniettiva e suriettiva: ogni elemento di <math|Y> è immagine di uno e un
    solo elemento di <math|X>.
  </itemize>

  <figura|<image|geometria-1-assets/funzioni.pdf|162.5mm|46.5mm||>|Da
  sinistra: una regola che non è una funzione (un elemento ha due frecce, un
  altro nessuna); una funzione qualsiasi; una iniettiva (nessun punto di
  <math|Y> riceve due frecce); una suriettiva (ogni punto di <math|Y> ne
  riceve almeno una); una biiettiva.>

  <\attenzione|La suriettività dipende dal codominio>
    <math|f(x)=x<rsup|2>> da <math|\<bbb-R\>> a <math|\<bbb-R\>> non è
    suriettiva (<math|-1> non viene raggiunto) e non è iniettiva
    (<math|f(1)=f(-1)>). La stessa formula da <math|[0,+\<infty\>)> a
    <math|[0,+\<infty\>)> è biiettiva. Prima di rispondere, guarda sempre
    dominio e codominio.
  </attenzione>

  <section|Composizione e inversa>

  Se <math|f:X\<rightarrow\>Y> e <math|g:Y\<rightarrow\>Z>, la
  <strong|composizione> <math|g\<circ\>f:X\<rightarrow\>Z> è
  <math|(g\<circ\>f)(x)=g(f(x))>: prima <math|f>, poi <math|g>. La
  composizione è associativa: <math|h\<circ\>(g\<circ\>f)=(h\<circ\>g)\<circ\>f>.
  L'<strong|identità> <math|<math-up|id><rsub|X>:X\<rightarrow\>X> è
  <math|<math-up|id><rsub|X>(x)=x>.

  Se <math|f> è biiettiva esiste <math|g:Y\<rightarrow\>X> con
  <math|g\<circ\>f=<math-up|id><rsub|X>> e
  <math|f\<circ\>g=<math-up|id><rsub|Y>>: è l'<strong|inversa>
  <math|f<rsup|-1>>. Per definirla bisogna dire quanto vale <math|g(y)> per
  ogni <math|y\<in\>Y>:

  <\equation*>
    g(y)=<text|l'unico >x\<in\>X<text| tale che >f(x)=y.
  </equation*>

  La suriettività garantisce che un tale <math|x> <em|esiste>; l'iniettività
  che è <em|unico>. Poi si verifica <math|g(f(x))=x> per ogni <math|x> e
  <math|f(g(y))=y> per ogni <math|y>.

  <figura|<image|geometria-1-assets/inversa.pdf|140.0mm|42.5mm||>|Rovesciando
  le frecce di una biiezione si ottiene ancora una funzione: ogni punto di
  <math|Y> ha esattamente una freccia che parte. Con una funzione non
  iniettiva o non suriettiva le frecce rovesciate non formerebbero una
  funzione.>

  <\officina|2. Esistenza e unicità>
    Per definire un oggetto come \Sl'unico tale che\<ldots\>\T servono sempre
    due prove: che ce n'è <em|almeno uno> (esistenza) e che ce n'è <em|al più
    uno> (unicità). Per l'inversa, la prima è la suriettività e la seconda
    l'iniettività. Lo stesso schema darà le coordinate rispetto a una base
    (capitolo 7): i generatori danno l'esistenza, l'indipendenza l'unicità.
  </officina>

  <\guidato|Invertire una funzione (esempio aggiunto)>
    Mostra che <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>>, <math|f(x)=2x+1>, è
    biiettiva e trova <math|f<rsup|-1>>.

    <em|Idea.> Fissato <math|y>, risolviamo <math|f(x)=y> e contiamo le
    soluzioni.

    <em|Conto.> <math|2x+1=y> equivale a <math|x=<frac|y-1|2>>. Per ogni
    <math|y> c'è dunque una soluzione (suriettiva) e una sola (iniettiva).
    L'inversa è <math|f<rsup|-1>(y)=<frac|y-1|2>>.

    <em|Controllo.> <math|f<rsup|-1>(f(x))=<frac|(2x+1)-1|2>=x> e
    <math|f(f<rsup|-1>(y))=2<frac|y-1|2>+1=y>.
  </guidato>

  <\verifica|1>
    <strong|a)> Scrivi la negazione di \S<math|f> è suriettiva\T con i
    quantificatori.

    <strong|b)> <math|f:\<bbb-Z\>\<rightarrow\>\<bbb-Z\>>, <math|f(n)=2n>, è
    iniettiva? È suriettiva?

    <strong|c)> Perché per costruire <math|f<rsup|-1>> non basta che <math|f>
    sia iniettiva?
  </verifica>

  <chapter|Campi: le regole del calcolo>

  <\inbreve>
    Somme e prodotti di numeri seguono poche regole, sempre le stesse. Un
    <em|campo> è un insieme qualunque in cui valgono quelle regole. Isolarle
    ci permette di fare algebra lineare con numeri reali, complessi, o
    perfino con un insieme di due soli elementi, senza ripartire da capo ogni
    volta.
  </inbreve>

  <section|Operazioni interne>

  Un'<strong|operazione interna> su un insieme <math|K> è un'applicazione
  <math|K\<times\>K\<rightarrow\>K>: prende due elementi di <math|K> e
  restituisce un elemento di <math|K>. Somma e prodotto di numeri reali sono
  operazioni interne su <math|\<bbb-R\>>. Il prodotto di un numero per un
  vettore, invece, <em|non> è un'operazione interna: è un'applicazione
  <math|K\<times\>V\<rightarrow\>V> che mescola due insiemi diversi (capitolo
  5).

  <section|Gli assiomi di campo>

  Un <strong|campo> è un insieme <math|K> con due operazioni interne, somma e
  prodotto, tali che per ogni <math|x,y,z\<in\>K>:

  <\itemize>
    <item><strong|somma>: <math|(x+y)+z=x+(y+z)>; <math|x+y=y+x>; esiste
    <math|0> con <math|x+0=x>; per ogni <math|x> esiste <math|-x> con
    <math|x+(-x)=0>. Si dice che <math|(K,+)> è un <strong|gruppo abeliano>.

    <item><strong|prodotto>: <math|(x*y)z=x(y*z)>; <math|x*y=y*x>; esiste
    <math|1> con <math|1x=x>; per ogni <math|x\<neq\>0> esiste
    <math|x<rsup|-1>> con <math|x*x<rsup|-1>=1>. Gli elementi non nulli
    formano un gruppo abeliano rispetto al prodotto.

    <item><strong|distributività>: <math|x(y+z)=x*y+x*z> (e
    <math|(x+y)z=x*z+y*z>, che con la commutatività è la stessa cosa).
  </itemize>

  La condizione <math|x\<neq\>0> per l'inverso è necessaria: lo zero non è
  mai invertibile. Esempi di campi: <math|\<bbb-Q\>,\<bbb-R\>,\<bbb-C\>>. Gli
  interi <math|\<bbb-Z\>> non sono un campo: <math|2> non ha inverso in
  <math|\<bbb-Z\>>.

  <\immagine|Un campo è un \Scontratto\T>
    Gli assiomi sono un contratto: chi li rispetta può usare tutte le regole
    del calcolo che conosciamo (raccogliere, semplificare, dividere per un
    numero diverso da zero). Non importa di che cosa sono fatti gli elementi.
    Così ogni teorema dimostrato \Sper un campo <math|K>\T vale insieme per
    <math|\<bbb-R\>>, per <math|\<bbb-C\>> e per <math|\<bbb-F\><rsub|2>>.
  </immagine>

  <section|Il campo con due elementi>

  Esiste un campo con due soli elementi, <math|\<bbb-F\><rsub|2>=<around|{|0,1|}>>.
  Le operazioni sono <em|obbligate> dagli assiomi:

  <\itemize>
    <item><math|0+0=0>, <math|0+1=1+0=1> perché <math|0> è neutro;

    <item><math|1+1> deve essere l'opposto di <math|1>. Non può essere
    <math|1> (sarebbe <math|1+1=1>, e sottraendo <math|1> verrebbe
    <math|1=0>), quindi <math|1+1=0>;

    <item><math|0\<cdot\>0=0\<cdot\>1=1\<cdot\>0=0>, <math|1\<cdot\>1=1>.
  </itemize>

  <\equation*>
    <tabular|<tformat|<cwith|1|1|1|-1|cell-bborder|0.5pt>|<cwith|1|-1|1|1|cell-rborder|0.5pt>|<cwith|1|-1|1|-1|cell-halign|c>|<table|<row|<cell|+>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|0>>>>><space|4em><tabular|<tformat|<cwith|1|1|1|-1|cell-bborder|0.5pt>|<cwith|1|-1|1|1|cell-rborder|0.5pt>|<cwith|1|-1|1|-1|cell-halign|c>|<table|<row|<cell|\<cdot\>>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>>>>>
  </equation*>

  Si verifica direttamente che valgono tutti gli assiomi (sono pochi casi). È
  il \Spari e dispari\T: <math|0> sta per \Spari\T, <math|1> per \Sdispari\T.
  Più in generale, per ogni numero primo <math|p> esiste un campo
  <math|\<bbb-F\><rsub|p>> con <math|p> elementi: i resti modulo <math|p>.

  <\attenzione|In <math|\<bbb-F\><rsub|2>> vale <math|2=0>>
    In <math|\<bbb-F\><rsub|2>> il numero <math|2=1+1> è zero. Quindi da
    <math|2\<lambda\>=0> non si può dedurre <math|\<lambda\>=0>, e da
    <math|a=-a> non segue <math|a=0>. Ogni volta che in una dimostrazione
    \Sdividiamo per <math|2>\T stiamo usando che <math|2\<neq\>0> nel campo:
    è vero in <math|\<bbb-Q\>,\<bbb-R\>,\<bbb-C\>>, falso in
    <math|\<bbb-F\><rsub|2>> (si dice che <math|\<bbb-F\><rsub|2>> ha
    <em|caratteristica> <math|2>). Ritroveremo questo dettaglio con le
    matrici antisimmetriche (capitolo 9).
  </attenzione>

  <section|Neutri e inversi sono unici>

  Gli assiomi dicono che <em|esiste> uno zero; non dicono che ce n'è uno
  solo. Lo dimostriamo.

  <strong|Lo zero è unico.> Se <math|0> e <math|0<rprime|'>> sono entrambi
  neutri, allora <math|0<rprime|'>=0<rprime|'>+0> (perché <math|0> è neutro)
  e <math|0<rprime|'>+0=0> (perché <math|0<rprime|'>> è neutro). Quindi
  <math|0<rprime|'>=0>.

  <strong|L'opposto è unico.> Se <math|x+y=0> e <math|x+z=0>, allora

  <\equation*>
    y=y+0=y+(x+z)=(y+x)+z=(x+y)+z=0+z=z.
  </equation*>

  <strong|L'inverso è unico.> Se <math|x*y=1> e <math|x*z=1> con
  <math|x\<neq\>0>, allora <math|y=y\<cdot\>1=y(x*z)=(y*x)z=1\<cdot\>z=z>.

  <\officina|3. Unicità: due candidati che coincidono>
    Per dimostrare che \Sc'è un solo oggetto con una certa proprietà\T,
    supponi di averne <em|due>, chiamali <math|y> e <math|z>, e mostra con
    una catena di uguaglianze che <math|y=z>. Ogni passaggio della catena
    deve citare un assioma o un'ipotesi. Lo stesso schema darà l'unicità
    delle coordinate (capitolo 7) e della scomposizione in una somma diretta
    (capitolo 9).
  </officina>

  <\verifica|2>
    <strong|a)> In <math|\<bbb-F\><rsub|2>> quanto vale <math|1+1+1>? E
    <math|(1+1)\<cdot\>1>?

    <strong|b)> L'insieme <math|\<bbb-Q\>> con le operazioni usuali è un
    campo; perché <math|\<bbb-N\>> non lo è? Indica un assioma che fallisce.

    <strong|c)> Dimostra che in un campo <math|0\<cdot\>x=0> per ogni
    <math|x>. (Suggerimento: <math|0\<cdot\>x=(0+0)x>.)
  </verifica>

  <chapter|I numeri complessi>

  <\inbreve>
    Aggiungiamo ai reali un numero <math|i> con <math|i<rsup|2>=-1>.
    Otteniamo un campo che si disegna come un piano: la somma è il
    parallelogramma, il prodotto è una rotazione con dilatazione. In forma
    polare potenze e radici diventano facili, e ogni numero non nullo ha
    esattamente <math|n> radici <math|n>-esime.
  </inbreve>

  <section|Definizione e operazioni>

  Un <strong|numero complesso> è una scrittura <math|z=a+i*b> con
  <math|a,b\<in\>\<bbb-R\>>. <math|a=<math-up|Re>(z)> è la <strong|parte
  reale>, <math|b=<math-up|Im>(z)> la <strong|parte immaginaria>. Il numero è
  determinato dalla coppia <math|(a,b)\<in\>\<bbb-R\><rsup|2>>, quindi
  possiamo pensare <math|\<bbb-C\>> come l'insieme delle coppie di reali. Il
  \S<math|+>\T dentro <math|a+i*b>, per ora, separa solo le due parti.

  Le operazioni si <em|definiscono> (il simbolo <math|:=> indica una
  definizione):

  <\equation*>
    (a+i*b)+(c+i*d):=(a+c)+i(b+d),<space|2em>(a+i*b)(c+i*d):=(a*c-b*d)+i(a*d+b*c).
  </equation*>

  La somma è componente per componente. Il prodotto si ottiene sviluppando le
  parentesi e sostituendo <math|i<rsup|2>=-1>:
  <math|a*c+i*a*d+i*b*c+i<rsup|2>b*d>. Il <math|-b*d> nella parte reale viene
  proprio da <math|i<rsup|2>=-1>. E infatti dalla definizione
  <math|(0+i)(0+i)=(0-1)+i(0+0)=-1>: <math|i<rsup|2>=-1> è una conseguenza,
  non un'aggiunta.

  <\guidato|Somma e prodotto (lezione del 25/09)>
    Calcola <math|(2+i)+(3-2i)> e <math|(2+i)(3-2i)>.

    <em|Idea.> Applicare le definizioni, con <math|a=2,b=1,c=3,d=-2>.

    <em|Conto.> Somma: <math|(2+3)+i(1-2)=5-i>. Prodotto:
    <math|(2\<cdot\>3-1\<cdot\>(-2))+i(2\<cdot\>(-2)+1\<cdot\>3)=(6+2)+i(-4+3)=8-i>.

    <em|Controllo.> Sviluppando a mano: <math|6-4i+3i-2i<rsup|2>=6-i+2=8-i>.
  </guidato>

  <section|Il piano complesso>

  Disegniamo <math|z=a+i*b> come il punto <math|(a,b)>, o come la freccia
  dall'origine a quel punto: l'asse orizzontale porta i reali, quello
  verticale i numeri <math|i*b>. Un reale <math|a> si identifica con
  <math|a+i0>; su questi numeri le nuove operazioni coincidono con le vecchie
  (<math|(a+i0)(c+i0)=a*c+i0>), quindi <math|\<bbb-R\>\<subseteq\>\<bbb-C\>>
  con le stesse operazioni. La somma <math|z+w> è la diagonale del
  parallelogramma costruito su <math|z> e <math|w>.

  Il <strong|modulo> di <math|z=a+i*b> è <math|\|z\|:=<sqrt|a<rsup|2>+b<rsup|2>>\<geq\>0>:
  per Pitagora è la distanza del punto <math|(a,b)> dall'origine. Per un
  reale coincide con il valore assoluto (<math|\|-2\|=<sqrt|4>=2>). Poiché
  una somma di due quadrati reali è zero solo se lo sono entrambi,

  <\equation*>
    \|z\|=0<space|1em>\<Leftrightarrow\><space|1em>z=0.
  </equation*>

  Il <strong|coniugato> di <math|z=a+i*b> è <math|<wide|z|\<bar\>>:=a-i*b>:
  stessa parte reale, parte immaginaria cambiata di segno. Nel piano è la
  <em|riflessione rispetto all'asse reale>. I punti fissi della riflessione
  sono i punti dell'asse: <math|z=<wide|z|\<bar\>>\<Leftrightarrow\>b=0\<Leftrightarrow\>z\<in\>\<bbb-R\>>.

  <figura|<image|geometria-1-assets/piano-complesso.pdf|150.0mm|65.0mm||>|Il
  numero <math|z=a+i*b> come punto del piano: il modulo <math|\|z\|> è la
  lunghezza della freccia, l'angolo <math|\<theta\>> è l'argomento (sezione
  3.4), il coniugato <math|<wide|z|\<bar\>>> è il punto simmetrico rispetto
  all'asse reale.>

  Il coniugio rispetta le operazioni:

  <\equation*>
    <wide|z+w|\<bar\>>=<wide|z|\<bar\>>+<wide|w|\<bar\>>,<space|2em><wide|z*w|\<bar\>>=<wide|z|\<bar\>><space|0.2em><wide|w|\<bar\>>,<space|2em><wide|<wide|z|\<bar\>>|\<bar\>>=z.
  </equation*>

  Per la somma: con <math|z=a+i*b>, <math|w=c+i*d> si ha
  <math|<wide|z+w|\<bar\>>=(a+c)-i(b+d)=(a-i*b)+(c-i*d)>. Per il prodotto:
  <math|<wide|z*w|\<bar\>>=(a*c-b*d)-i(a*d+b*c)>, mentre
  <math|(a-i*b)(c-i*d)=(a*c-b*d)+i(-a*d-b*c)>: è lo stesso numero.

  <section|<math|\<bbb-C\>> è un campo>

  Bisogna verificare gli assiomi a partire dalle definizioni: dichiarare che
  <math|\<bbb-C\>> \Sè un campo\T non basta. Molti controlli si riducono ai
  reali, parte per parte: lo zero è <math|0+0i>, l'opposto di <math|a+i*b> è
  <math|-a-i*b>, associatività e commutatività della somma seguono da quelle
  di <math|\<bbb-R\>> applicate separatamente a parte reale e immaginaria.
  L'unico assioma non ovvio è l'inverso, e qui serve il coniugato:

  <\equation*>
    z<wide|z|\<bar\>>=(a+i*b)(a-i*b)=a<rsup|2>-i*a*b+i*a*b-i<rsup|2>b<rsup|2>=a<rsup|2>+b<rsup|2>=\|z\|<rsup|2>.
  </equation*>

  Il prodotto <math|z<wide|z|\<bar\>>> è un reale <math|\<geq\>0>. Se
  <math|z\<neq\>0> allora <math|\|z\|<rsup|2>\<neq\>0> e

  <\equation*>
    z\<cdot\><frac|<wide|z|\<bar\>>|\|z\|<rsup|2>>=<frac|\|z\|<rsup|2>|\|z\|<rsup|2>>=1,<space|2em><text|cioè><space|1em>z<rsup|-1>=<frac|<wide|z|\<bar\>>|\|z\|<rsup|2>>,<space|1em><frac|1|a+i*b>=<frac|a-i*b|a<rsup|2>+b<rsup|2>>.
  </equation*>

  Il coniugato \Spulisce\T il denominatore dalla parte immaginaria. L'inverso
  è unico, come in ogni campo (officina 3).

  <\officina|4. Verificare dalle definizioni>
    Una proprietà di un oggetto nuovo si dimostra <em|dalle sue definizioni>,
    un passo alla volta, citando ogni volta che cosa si usa: la definizione
    dell'operazione, oppure una proprietà già nota dei reali. Il conto può
    essere meccanico e un po' noioso, ma separa una proprietà dimostrata da
    una semplice affermazione. Lo stesso lavoro, ripetuto per
    <math|K<rsup|n>>, per i polinomi e per le funzioni, ci darà i primi spazi
    vettoriali (capitolo 5).
  </officina>

  <\guidato|Una divisione (lezione del 25/09)>
    Calcola <math|<frac|3-2i|1-i>>.

    <em|Idea.> Moltiplicare per l'inverso del denominatore,
    <math|<frac|<wide|1-i|\<bar\>>|\|1-i\|<rsup|2>>=<frac|1+i|2>>.

    <em|Conto.> <math|\|1-i\|<rsup|2>=1+1=2>. Quindi
    <math|<frac|(3-2i)(1+i)|2>=<frac|3+3i-2i-2i<rsup|2>|2>=<frac|5+i|2>=<frac|5|2>+<frac|1|2>i>.

    <em|Controllo.> <math|(1-i)<around|(|<frac|5|2>+<frac|1|2>i|)>=<frac|5|2>+<frac|1|2>i-<frac|5|2>i+<frac|1|2>=3-2i>.
  </guidato>

  <section|Forma polare>

  Un punto del piano si può descrivere anche con la distanza dall'origine e
  la direzione. Per <math|z\<neq\>0> poniamo <math|\<rho\>=\|z\|> e chiamiamo
  <strong|argomento> <math|\<theta\>=<math-up|arg>(z)> l'angolo misurato dal
  semiasse reale positivo in senso antiorario. Per <math|z=0> l'argomento non
  è definito: il vettore nullo non ha una direzione.

  L'argomento è definito <em|a meno di multipli di <math|2\<pi\>>>:
  <math|\<theta\>> e <math|\<theta\>+2k\<pi\>> (<math|k\<in\>\<bbb-Z\>>)
  indicano la stessa direzione. Non crea problemi, perché seno e coseno hanno
  periodo <math|2\<pi\>>. Dal triangolo rettangolo,
  <math|a=\<rho\>cos\<theta\>> e <math|b=\<rho\>sin\<theta\>>, quindi

  <\equation*>
    z=\<rho\>(cos\<theta\>+i*sin\<theta\>)<space|2em>(<text|forma
    trigonometrica o polare>).
  </equation*>

  Al contrario, <math|\<rho\>=<sqrt|a<rsup|2>+b<rsup|2>>>, e per
  <math|a\<neq\>0> vale <math|tan\<theta\>=b/a>. Ma la tangente individua la
  <em|retta>, non il <em|quadrante>: <math|\<theta\>=arctan(b/a)> va
  corretto. Se <math|a\<gtr\>0> va bene così; se <math|a\<less\>0> si
  aggiunge <math|\<pi\>>; se <math|a=0> si prende <math|\<theta\>=\<pi\>/2>
  per <math|b\<gtr\>0> e <math|\<theta\>=-\<pi\>/2> (cioè <math|3\<pi\>/2>)
  per <math|b\<less\>0>.

  <figura|<image|geometria-1-assets/quadranti.pdf|90.0mm|57.5mm||>|<math|1+i>
  e <math|-1-i> hanno lo stesso rapporto <math|b/a=1>, quindi la stessa
  arcotangente <math|\<pi\>/4>; ma il secondo ha argomento <math|5\<pi\>/4>.>

  <\guidato|Forma polare di <math|-1-i> (esempio aggiunto)>
    Scrivi <math|z=-1-i> in forma polare.

    <em|Idea.> Modulo con Pitagora; argomento con la tangente, <em|poi> il
    quadrante.

    <em|Conto.> <math|\<rho\>=<sqrt|1+1>=<sqrt|2>>. <math|b/a=1> darebbe
    <math|\<pi\>/4>, ma <math|a\<less\>0>: si aggiunge <math|\<pi\>>,
    <math|\<theta\>=5\<pi\>/4>. Quindi <math|z=<sqrt|2>(cos<frac|5\<pi\>|4>+i*sin<frac|5\<pi\>|4>)>.

    <em|Controllo.> <math|cos<frac|5\<pi\>|4>=sin<frac|5\<pi\>|4>=-<frac|<sqrt|2>|2>>,
    e <math|<sqrt|2>\<cdot\>(-<frac|<sqrt|2>|2>)=-1>: si ritrova <math|-1-i>.
  </guidato>

  <section|Il prodotto in forma polare>

  Siano <math|z=\<rho\>(cos\<theta\>+i*sin\<theta\>)> e
  <math|w=\<lambda\>(cos\<varphi\>+i*sin\<varphi\>)>. Moltiplicando,

  <\equation*>
    z*w=\<rho\>\<lambda\>[(cos\<theta\>cos\<varphi\>-sin\<theta\>sin\<varphi\>)+i(cos\<theta\>sin\<varphi\>+sin\<theta\>cos\<varphi\>)]=\<rho\>\<lambda\>[cos(\<theta\>+\<varphi\>)+i*sin(\<theta\>+\<varphi\>)]
  </equation*>

  per le formule di addizione. Dunque <math|\|z*w\|=\|z\|\|w\|> e
  <math|<math-up|arg>(z*w)=<math-up|arg>(z)+<math-up|arg>(w)> (modulo
  <math|2\<pi\>>): <strong|i moduli si moltiplicano, gli argomenti si
  sommano>. Moltiplicare per <math|w> vuol dire dilatare di <math|\|w\|> e
  ruotare dell'angolo di <math|w>. La formula cartesiana del prodotto,
  oscura, acquista un significato geometrico semplice.

  <figura|<image|geometria-1-assets/somma-prodotto.pdf|160.0mm|62.5mm||>|A
  sinistra la somma: diagonale del parallelogramma. A destra il prodotto: la
  freccia di <math|z*w> è lunga <math|\|z\|\<cdot\>\|w\|> e forma l'angolo
  <math|\<theta\>+\<varphi\>>.>

  Ripetendo il prodotto <math|n> volte si ottiene la <strong|formula di De
  Moivre>:

  <\equation*>
    z<rsup|n>=\<rho\><rsup|n>[cos(n\<theta\>)+i*sin(n\<theta\>)].
  </equation*>

  <section|Radici <math|n>-esime>

  Cerchiamo le soluzioni di <math|z<rsup|n>=w> con <math|w\<neq\>0> noto.
  Scriviamo <math|w=R(cos\<theta\>+i*sin\<theta\>)> con <math|R\<gtr\>0> e
  cerchiamo <math|z=\<rho\>(cos\<varphi\>+i*sin\<varphi\>)>. Per De Moivre
  servono due condizioni.

  <\itemize>
    <item><strong|Moduli>: <math|\<rho\><rsup|n>=R>. Un reale
    <math|R\<gtr\>0> ha un'unica radice <math|n>-esima positiva:
    <math|\<rho\>=<sqrt|R|n>>.

    <item><strong|Argomenti>: <math|n\<varphi\>> deve essere <em|uno
    qualunque> degli argomenti di <math|w>, cioè
    <math|n\<varphi\>=\<theta\>+2k\<pi\>>. Quindi
    <math|\<varphi\><rsub|k>=<frac|\<theta\>+2k\<pi\>|n>>.
  </itemize>

  <\equation*>
    z<rsub|k>=<sqrt|R|n><around*|[|cos<frac|\<theta\>+2k\<pi\>|n>+i*sin<frac|\<theta\>+2k\<pi\>|n>|]>,<space|2em>k=0,1,\<ldots\>,n-1.
  </equation*>

  Bastano <math|k=0,\<ldots\>,n-1>: aumentare <math|k> di <math|n> aggiunge
  <math|2\<pi\>> all'angolo e ridà lo stesso numero. Quindi <strong|se
  <math|w\<neq\>0>, l'equazione <math|z<rsup|n>=w> ha esattamente <math|n>
  soluzioni distinte>, i vertici di un poligono regolare di <math|n> lati
  inscritto nella circonferenza di raggio <math|<sqrt|R|n>>. Se <math|w=0>,
  l'unica soluzione è <math|z=0> (la formula non si applica: <math|0> non ha
  argomento).

  <\guidato|Le radici terze di <math|-8> (lezione del 25/09)>
    Risolvi <math|z<rsup|3>=-8>.

    <em|Idea.> In <math|\<bbb-R\>> si vede solo <math|-2>; in
    <math|\<bbb-C\>> le radici sono tre.

    <em|Conto.> <math|\|-8\|=8>, quindi <math|\|z\|=<sqrt|8|3>=2>. <math|-8>
    sta sul semiasse reale negativo: argomento <math|\<pi\>>. Gli argomenti
    delle radici sono <math|<frac|\<pi\>+2k\<pi\>|3>>:
    <math|<frac|\<pi\>|3>,\<pi\>,<frac|5\<pi\>|3>>. Le radici:

    <\equation*>
      z<rsub|0>=2<around|(|<frac|1|2>+i<frac|<sqrt|3>|2>|)>=1+i<sqrt|3>,<space|1em>z<rsub|1>=2(cos\<pi\>+i*sin\<pi\>)=-2,<space|1em>z<rsub|2>=1-i<sqrt|3>.
    </equation*>

    <em|Controllo.> <math|(1+i<sqrt|3>)<rsup|2>=1+2i<sqrt|3>-3=-2+2i<sqrt|3>>;
    moltiplicando di nuovo per <math|1+i<sqrt|3>> si ottiene
    <math|-2-2i<sqrt|3>+2i<sqrt|3>+2i<rsup|2>\<cdot\>3=-8>.
  </guidato>

  Per le <strong|radici dell'unità>, <math|z<rsup|n>=1>:
  <math|1=cos(2k\<pi\>)+i*sin(2k\<pi\>)>, quindi le soluzioni sono
  <math|z<rsub|k>=cos<frac|2k\<pi\>|n>+i*sin<frac|2k\<pi\>|n>>,
  <math|k=0,\<ldots\>,n-1>: i vertici del poligono regolare di <math|n> lati
  inscritto nella circonferenza unitaria, con un vertice in <math|1>. A
  lezione sono stati assegnati <math|z<rsup|3>=1> e <math|z<rsup|4>=1>.

  <figura|<image|geometria-1-assets/radici.pdf|150.0mm|62.5mm||>|A sinistra
  le tre radici di <math|z<rsup|3>=-8>: un triangolo equilatero sulla
  circonferenza di raggio <math|2>. A destra le sei radici di
  <math|z<rsup|6>=1> (capitolo 4): un esagono regolare sulla circonferenza
  unitaria.>

  <\guidato|Le radici quarte dell'unità (esercizio assegnato)>
    Risolvi <math|z<rsup|4>=1>.

    <em|Idea.> Modulo <math|1>, argomenti
    <math|<frac|2k\<pi\>|4>=k<frac|\<pi\>|2>>.

    <em|Conto.> <math|k=0,1,2,3> danno gli angoli
    <math|0,<frac|\<pi\>|2>,\<pi\>,<frac|3\<pi\>|2>>, cioè
    <math|z\<in\><around|{|1,i,-1,-i|}>>: i vertici di un quadrato.

    <em|Controllo.> <math|i<rsup|4>=(i<rsup|2>)<rsup|2>=(-1)<rsup|2>=1>, e lo
    stesso per <math|-i>.
  </guidato>

  <\verifica|3>
    <strong|a)> Calcola <math|\|3+4i\|> e <math|(3+4i)<rsup|-1>>.

    <strong|b)> Che cosa fa, nel piano, la moltiplicazione per <math|i>?

    <strong|c)> Quante soluzioni ha <math|z<rsup|5>=32> in <math|\<bbb-C\>>?
    Quale di esse è reale?
  </verifica>

  <chapter|Polinomi e radici>

  <\inbreve>
    Nei complessi ogni polinomio non costante ha una radice: è il teorema
    fondamentale dell'algebra. Da qui, staccando una radice alla volta con
    l'induzione, ogni polinomio complesso si spezza in fattori di primo
    grado. Per i polinomi a coefficienti reali le radici non reali arrivano a
    coppie coniugate.
  </inbreve>

  <section|Radici e fattori>

  Un polinomio <math|P(z)=a<rsub|n>z<rsup|n>+\<cdots\>+a<rsub|1>z+a<rsub|0>>
  con <math|a<rsub|n>\<neq\>0> ha <strong|grado> <math|n>; <math|a<rsub|n>> è
  il <strong|coefficiente direttivo>. <math|z<rsub|0>> è una <strong|radice>
  se <math|P(z<rsub|0>)=0>.

  La barretta indica la divisibilità: <math|A\<mid\>B> significa che esiste
  <math|C> con <math|B=A*C>; <math|A\<nmid\>B> che non esiste.

  <strong|Teorema del fattore.> <math|P(z<rsub|1>)=0\<Leftrightarrow\>(z-z<rsub|1>)\<mid\>P(z)>.

  Infatti, dividendo <math|P> per <math|z-z<rsub|1>> (per esempio con
  Ruffini) si ottiene <math|P(z)=(z-z<rsub|1>)Q(z)+r>, dove il resto <math|r>
  ha grado minore di <math|1>, cioè è una costante. Calcolando in
  <math|z<rsub|1>>: <math|P(z<rsub|1>)=0\<cdot\>Q(z<rsub|1>)+r=r>. Quindi
  <math|r=0> esattamente quando <math|z<rsub|1>> è radice. Se <math|P> ha
  grado <math|n+1>, il quoziente <math|Q> ha grado <math|n>.

  <\attenzione|Divisione con resto non è fattorizzazione>
    <math|P(z)=(z-z<rsub|1>)Q(z)+r> non è ancora una fattorizzazione: c'è un
    termine che si somma. Diventa un prodotto solo quando <math|r=0>, cioè
    quando <math|z<rsub|1>> è una radice. Ed è il prodotto che serve: <em|un
    prodotto è zero se e solo se è zero uno dei fattori>.
  </attenzione>

  <section|Il teorema fondamentale e la fattorizzazione>

  <strong|Teorema fondamentale dell'algebra.> Ogni polinomio a coefficienti
  complessi di grado almeno <math|1> ha almeno una radice in
  <math|\<bbb-C\>>.

  Non vale nei reali: <math|x<rsup|2>+1\<gtr\>0> per ogni
  <math|x\<in\>\<bbb-R\>>, ma in <math|\<bbb-C\>> ha le radici <math|i> e
  <math|-i>. La dimostrazione del teorema verrà più avanti nel corso; qui ne
  ricaviamo la conseguenza principale.

  <strong|Corollario.> Se <math|P\<in\>\<bbb-C\>[z]> ha grado
  <math|n\<geq\>1> e coefficiente direttivo <math|a>, esistono
  <math|z<rsub|1>,\<ldots\>,z<rsub|n>\<in\>\<bbb-C\>> tali che

  <\equation*>
    P(z)=a(z-z<rsub|1>)(z-z<rsub|2>)\<cdots\>(z-z<rsub|n>).
  </equation*>

  <em|Dimostrazione per induzione su <math|n>.> Sia <math|P<rsub|n>>
  l'affermazione \Sogni polinomio complesso di grado <math|n> è il suo
  coefficiente direttivo per <math|n> fattori lineari\T.

  <em|Base> (<math|n=1>): <math|a<rsub|1>z+a<rsub|0>=a<rsub|1><around|(|z-<around|(|-<frac|a<rsub|0>|a<rsub|1>>|)>|)>>.

  <em|Passo.> Supponiamo vera <math|P<rsub|n>> e sia <math|P> di grado
  <math|n+1>. Per il teorema fondamentale ha una radice <math|z<rsub|1>>; per
  il teorema del fattore <math|P(z)=(z-z<rsub|1>)Q(z)> con <math|Q> di grado
  <math|n> e con lo stesso coefficiente direttivo <math|a>. Per
  <math|P<rsub|n>>, <math|Q(z)=a(z-z<rsub|2>)\<cdots\>(z-z<rsub|n+1>)>;
  sostituendo si ottiene <math|P<rsub|n+1>>.

  <figura|<image|geometria-1-assets/fattori.pdf|155.0mm|27.5mm||>|La
  dimostrazione per induzione, vista come una catena: ogni radice trovata
  stacca un fattore lineare e abbassa il grado di uno.>

  Dalla fattorizzazione si leggono tutte le radici: <math|P(z)=0> se e solo
  se <math|z=z<rsub|1>> oppure \<ldots\> oppure <math|z=z<rsub|n>>.

  <\officina|5. L'induzione>
    Quando una frase dipende da un naturale <math|n> (qui il grado), chiamala
    <math|P<rsub|n>> e fai due cose.

    <\itemize>
      <item><em|Base>: dimostra <math|P<rsub|1>> (o il primo valore che
      interessa: dichiaralo).

      <item><em|Passo>: per ogni <math|n>, supponendo <math|P<rsub|n>>
      dimostra <math|P<rsub|n+1>>.
    </itemize>

    Una forma equivalente, a volte più comoda, usa nel passo <em|tutte> le
    affermazioni precedenti: se <math|P<rsub|1>,\<ldots\>,P<rsub|n>> sono
    vere, allora lo è <math|P<rsub|n+1>>. Usare <math|n-1> e <math|n> al
    posto di <math|n> e <math|n+1> è solo una scelta di nomi.
  </officina>

  <section|Molteplicità>

  Nella fattorizzazione i numeri <math|z<rsub|i>> non devono essere distinti:
  <math|(z-1)<rsup|5>> ha la sola radice <math|1>, ripetuta cinque volte. Si
  dice che <math|z<rsub|0>> è una radice di <strong|molteplicità> <math|k> se

  <\equation*>
    P(z)=(z-z<rsub|0>)<rsup|k>Q(z)<space|1em><text|con><space|1em>Q(z<rsub|0>)\<neq\>0,
  </equation*>

  cioè se <math|(z-z<rsub|0>)<rsup|k>\<mid\>P> ma
  <math|(z-z<rsub|0>)<rsup|k+1>\<nmid\>P>. In pratica: si divide per
  <math|z-z<rsub|0>> finché il quoziente ha ancora <math|z<rsub|0>> come
  radice. Per esempio <math|(z-1)<rsup|2>(z-3)<rsup|4>(z-5)<rsup|3>> ha grado
  <math|9> e le radici <math|1,3,5> di molteplicità <math|2,4,3>: in tutto
  <math|9> radici <em|contate con molteplicità>.

  Raggruppando i fattori uguali, la fattorizzazione complessa diventa
  <math|P=a(z-w<rsub|1>)<rsup|e<rsub|1>>\<cdots\>(z-w<rsub|r>)<rsup|e<rsub|r>>>
  con <math|w<rsub|j>> distinti, e ogni <math|w<rsub|j>> ha molteplicità
  esattamente <math|e<rsub|j>> (il resto del prodotto non si annulla in
  <math|w<rsub|j>>). Quindi: <strong|un polinomio complesso di grado <math|n>
  ha esattamente <math|n> radici contate con molteplicità>, non
  necessariamente distinte.

  <strong|In ogni campo, al più <math|n> radici.> Se <math|P\<neq\>0> ha
  grado <math|n> e <math|x<rsub|1>,\<ldots\>,x<rsub|k>> sono radici distinte,
  allora <math|P=(x-x<rsub|1>)Q<rsub|1>>; poiché <math|P(x<rsub|2>)=0> e
  <math|x<rsub|2>-x<rsub|1>\<neq\>0>, deve essere
  <math|Q<rsub|1>(x<rsub|2>)=0>, quindi <math|Q<rsub|1>=(x-x<rsub|2>)Q<rsub|2>>,
  e così via. Alla fine <math|P=(x-x<rsub|1>)\<cdots\>(x-x<rsub|k>)Q<rsub|k>>,
  che ha grado almeno <math|k>: dunque <math|k\<leq\>n>.

  <section|Polinomi a coefficienti reali>

  Un polinomio reale è anche complesso, perché
  <math|\<bbb-R\>\<subseteq\>\<bbb-C\>> con le stesse operazioni. Il teorema
  fondamentale gli garantisce radici <em|in <math|\<bbb-C\>>>, non in
  <math|\<bbb-R\>>: le radici possono essere tutte reali, in parte reali, o
  nessuna reale.

  <strong|Proposizione.> Se <math|P> ha coefficienti reali e
  <math|P(z<rsub|0>)=0>, allora anche <math|P(<wide|z<rsub|0>|\<bar\>>)=0>.

  <em|Dimostrazione.> Coniughiamo l'uguaglianza <math|P(z<rsub|0>)=0>. Il
  coniugio passa attraverso somme, prodotti e potenze, quindi
  <math|<wide|P(z<rsub|0>)|\<bar\>>=<wide|a<rsub|n>|\<bar\>><space|0.2em><wide|z<rsub|0>|\<bar\>><rsup|n>+\<cdots\>+<wide|a<rsub|0>|\<bar\>>>.
  I coefficienti sono reali, <math|<wide|a<rsub|j>|\<bar\>>=a<rsub|j>>,
  quindi questo è <math|P(<wide|z<rsub|0>|\<bar\>>)>. E
  <math|<wide|0|\<bar\>>=0>.

  Le radici non reali compaiono quindi a coppie
  <math|z<rsub|0>,<wide|z<rsub|0>|\<bar\>>>, <strong|con la stessa
  molteplicità>: se <math|P=(z-z<rsub|0>)<rsup|m>Q> con
  <math|Q(z<rsub|0>)\<neq\>0>, coniugando tutti i coefficienti (cosa che
  rispetta i prodotti di polinomi e lascia fermo <math|P>) si ottiene
  <math|P=(z-<wide|z<rsub|0>|\<bar\>>)<rsup|m><wide|Q|\<bar\>>> con
  <math|<wide|Q|\<bar\>>(<wide|z<rsub|0>|\<bar\>>)=<wide|Q(z<rsub|0>)|\<bar\>>\<neq\>0>.
  Nel piano, l'insieme delle radici è simmetrico rispetto all'asse reale.

  <figura|<image|geometria-1-assets/coniugate.pdf|76.5mm|53.1mm||>|Le radici
  di un polinomio reale di grado <math|11>: <math|1> doppia, <math|-2>
  semplice, <math|-1\<pm\>2i> triple, <math|2\<pm\>i> semplici. Le coppie
  coniugate sono simmetriche rispetto all'asse reale e hanno la stessa
  molteplicità.>

  Una coppia coniugata dà un fattore di secondo grado <em|reale>:

  <\equation*>
    (z-z<rsub|0>)(z-<wide|z<rsub|0>|\<bar\>>)=z<rsup|2>-(z<rsub|0>+<wide|z<rsub|0>|\<bar\>>)z+z<rsub|0><wide|z<rsub|0>|\<bar\>>=z<rsup|2>-2<math-up|Re>(z<rsub|0>)z+\|z<rsub|0>\|<rsup|2>.
  </equation*>

  Per esempio <math|z<rsub|0>=-1+2i> dà <math|z<rsup|2>+2z+5>. Quindi
  <strong|in <math|\<bbb-R\>[z]> ogni polinomio si scrive come prodotto di
  fattori lineari (le radici reali) e di fattori quadratici (le coppie
  coniugate)>. Dividendo un polinomio reale per uno reale, quando la
  divisione è esatta, il quoziente resta reale.

  <section|Equazioni di secondo grado in <math|\<bbb-C\>>>

  Per <math|a*z<rsup|2>+b*z+c=0> con <math|a,b,c\<in\>\<bbb-C\>>,
  <math|a\<neq\>0>, vale la stessa formula del caso reale:
  <math|z<rsub|1,2>=<frac|-b\<pm\><sqrt|\<Delta\>>|2a>>,
  <math|\<Delta\>=b<rsup|2>-4a*c>. Ora <math|\<Delta\>> può essere complesso,
  e <math|\<pm\><sqrt|\<Delta\>>> indica le sue <em|due radici quadrate>
  <math|\<pm\>w> (quelle del capitolo 3 con <math|n=2>: modulo
  <math|<sqrt|\|\<Delta\>\|>>, argomenti <math|\<theta\>/2> e
  <math|\<theta\>/2+\<pi\>>, quindi opposte). Se <math|\<Delta\>=0> c'è una
  radice doppia <math|-b/(2a)>.

  <\guidato|Un'equazione con coefficienti complessi (lezione del 30/09)>
    Trova le radici di <math|P(z)=z<rsup|2>+(1-i)z-i>.

    <em|Idea.> Formula risolutiva con <math|a=1>, <math|b=1-i>, <math|c=-i>;
    la radice quadrata di <math|\<Delta\>> si trova in forma polare.

    <em|Conto.> <math|b<rsup|2>=(1-i)<rsup|2>=1-2i+i<rsup|2>=-2i>, quindi
    <math|\<Delta\>=-2i-4(-i)=2i>. <math|2i> ha modulo <math|2> e argomento
    <math|\<pi\>/2>: le sue radici quadrate hanno modulo <math|<sqrt|2>> e
    argomento <math|\<pi\>/4> (più eventualmente <math|\<pi\>>), cioè
    <math|\<pm\>(1+i)>. Allora

    <\equation*>
      z<rsub|1,2>=<frac|-(1-i)\<pm\>(1+i)|2>,<space|2em>z<rsub|1>=<frac|2i|2>=i,<space|1em>z<rsub|2>=<frac|-2|2>=-1.
    </equation*>

    <em|Controllo.> <math|(z-i)(z+1)=z<rsup|2>+z-i*z-i=z<rsup|2>+(1-i)z-i>.
    Le due radici <math|i> e <math|-1> non sono coniugate: i coefficienti non
    sono reali, e la proposizione sulle coppie non si applica.
  </guidato>

  <\guidato|Le radici seste dell'unità, in due modi (lezione del 30/09)>
    Risolvi <math|z<rsup|6>=1>.

    <em|Idea.> Forma polare, oppure fattorizzazione algebrica: due strade per
    lo stesso risultato.

    <em|Conto.> In forma polare: <math|\|z\|=1>, argomenti
    <math|<frac|2k\<pi\>|6>=<frac|k\<pi\>|3>>, <math|k=0,\<ldots\>,5>:

    <\equation*>
      1,<space|0.6em><frac|1|2>+i<frac|<sqrt|3>|2>,<space|0.6em>-<frac|1|2>+i<frac|<sqrt|3>|2>,<space|0.6em>-1,<space|0.6em>-<frac|1|2>-i<frac|<sqrt|3>|2>,<space|0.6em><frac|1|2>-i<frac|<sqrt|3>|2>.
    </equation*>

    Algebricamente: <math|z<rsup|6>-1=(z<rsup|3>-1)(z<rsup|3>+1)=(z-1)(z<rsup|2>+z+1)(z+1)(z<rsup|2>-z+1)>.
    Le formule di secondo grado su <math|z<rsup|2>+z+1> e
    <math|z<rsup|2>-z+1> danno le quattro radici non reali.

    <em|Controllo.> Il polinomio <math|z<rsup|6>-1> è reale: le radici non
    reali devono venire a coppie coniugate, ed è così (prima con sesta, terza
    con quinta). Qualunque procedimento è accettabile, purché ogni passaggio
    sia giustificato.
  </guidato>

  <\verifica|4>
    <strong|a)> Quante radici distinte ha <math|(z<rsup|2>+1)<rsup|3>>? Con
    quale molteplicità?

    <strong|b)> Un polinomio reale di grado <math|3> può avere radici
    <math|i>, <math|2i>, <math|1>? Perché?

    <strong|c)> Scrivi il fattore reale di secondo grado associato alla
    radice <math|2+i>.
  </verifica>

  <chapter|Spazi vettoriali>

  <\inbreve>
    Le frecce del piano si sommano con il parallelogramma e si allungano
    moltiplicandole per un numero. Le stesse due operazioni, con le stesse
    regole, esistono per le liste di numeri, per i polinomi, per le funzioni
    e per le matrici. Uno <em|spazio vettoriale> è qualunque insieme dove
    questo accade: studiamo gli oggetti per le regole che rispettano, non per
    ciò di cui sono fatti.
  </inbreve>

  <section|Dalle frecce alle regole>

  Un <strong|vettore geometrico> si rappresenta con un segmento orientato;
  due segmenti ottenuti l'uno dall'altro per traslazione rappresentano lo
  stesso vettore: contano direzione, verso e lunghezza, non il punto di
  partenza. La <strong|somma> <math|u+v> è la diagonale del parallelogramma
  costruito su <math|u> e <math|v>; scambiando i lati il parallelogramma non
  cambia, ed ecco la commutatività <math|u+v=v+u>. Il <strong|prodotto per
  uno scalare> <math|\<alpha\>v> ha la direzione di <math|v> (se
  <math|\<alpha\>\<neq\>0>), lo stesso verso se <math|\<alpha\>\<gtr\>0>,
  verso opposto se <math|\<alpha\>\<less\>0>, lunghezza moltiplicata per
  <math|\|\<alpha\>\|>; con <math|\<alpha\>=0> si ottiene il vettore nullo.

  <figura|<image|geometria-1-assets/parallelogramma.pdf|155.0mm|55.0mm||>|A
  sinistra la regola del parallelogramma: <math|u+v> e <math|v+u> sono la
  stessa diagonale. A destra i multipli di <math|v> stanno tutti sulla stessa
  retta: <math|2v>, <math|v/2>, <math|-v>.>

  Fissati un'origine <math|O> e due vettori <math|v<rsub|1>,v<rsub|2>>
  <em|non allineati> (non serve che siano perpendicolari o lunghi <math|1>),
  ogni vettore del piano si scrive <em|in un solo modo> come
  <math|<wide|O*P|\<vect\>>=x*v<rsub|1>+y*v<rsub|2>>: si scompone
  <math|<wide|O*P|\<vect\>>> lungo le due direzioni con il parallelogramma.
  La coppia <math|(x,y)> sono le <strong|coordinate> rispetto al riferimento
  <math|(v<rsub|1>,v<rsub|2>)>; cambiando riferimento cambiano le coordinate.
  Nello spazio servono tre vettori non complanari
  <math|v<rsub|1>,v<rsub|2>,v<rsub|3>> e si ottengono terne <math|(x,y,z)>;
  per trovare la componente lungo <math|v<rsub|1>> si proietta parallelamente
  al piano di <math|v<rsub|2>,v<rsub|3>>.

  <figura|<image|geometria-1-assets/coordinate-oblique.pdf|115.0mm|62.5mm||>|Un
  riferimento obliquo: la griglia è fatta di copie di <math|v<rsub|1>> e
  <math|v<rsub|2>>. Il punto <math|P> ha coordinate <math|x=2> e
  <math|y=1,5>: due passi lungo <math|v<rsub|1>> e uno e mezzo lungo
  <math|v<rsub|2>>.>

  Se <math|v=x*v<rsub|1>+y*v<rsub|2>+z*v<rsub|3>> e
  <math|w=x<rprime|'>v<rsub|1>+y<rprime|'>v<rsub|2>+z<rprime|'>v<rsub|3>>,
  raccogliendo si ottiene

  <\equation*>
    v+w=(x+x<rprime|'>)v<rsub|1>+(y+y<rprime|'>)v<rsub|2>+(z+z<rprime|'>)v<rsub|3>,<space|2em>\<alpha\>v=(\<alpha\>x)v<rsub|1>+(\<alpha\>y)v<rsub|2>+(\<alpha\>z)v<rsub|3>:
  </equation*>

  <strong|le coordinate della somma sono le somme delle coordinate, quelle di
  <math|\<alpha\>v> sono le coordinate moltiplicate per <math|\<alpha\>>>.
  Per raccogliere abbiamo usato associatività, commutatività e queste quattro
  proprietà:

  <\equation*>
    \<alpha\>(u+v)=\<alpha\>u+\<alpha\>v,<space|1em>(\<alpha\>+\<beta\>)v=\<alpha\>v+\<beta\>v,<space|1em>\<alpha\>(\<beta\>v)=(\<alpha\>\<beta\>)v,<space|1em>1v=v.
  </equation*>

  Sono proprio queste regole, e non la natura delle frecce, a diventare gli
  assiomi.

  <section|La definizione>

  Sia <math|K> un campo (i suoi elementi sono gli <strong|scalari>). Uno
  <strong|spazio vettoriale su <math|K>> è un insieme <math|V> (i cui
  elementi si chiamano <strong|vettori>, anche quando non sono frecce) con
  due operazioni

  <\equation*>
    +:V\<times\>V\<rightarrow\>V,<space|3em>\<cdot\>:K\<times\>V\<rightarrow\>V,<space|1em>(\<alpha\>,v)\<mapsto\>\<alpha\>v,
  </equation*>

  tali che per ogni <math|u,v,w\<in\>V> e <math|\<alpha\>,\<beta\>\<in\>K>:

  <\enumerate>
    <item><math|(u+v)+w=u+(v+w)>;

    <item><math|u+v=v+u>;

    <item>esiste <math|0\<in\>V> con <math|v+0=v> (il <strong|vettore
    nullo>);

    <item>ogni <math|v> ha un opposto <math|-v> con <math|v+(-v)=0>;

    <item><math|\<alpha\>(u+v)=\<alpha\>u+\<alpha\>v>;

    <item><math|(\<alpha\>+\<beta\>)v=\<alpha\>v+\<beta\>v>;

    <item><math|(\<alpha\>\<beta\>)v=\<alpha\>(\<beta\>v)>;

    <item><math|1<rsub|K>v=v>, dove <math|1<rsub|K>> è l'unità del campo.
  </enumerate>

  I primi quattro dicono che <math|(V,+)> è un gruppo abeliano. Che le
  operazioni restino dentro <math|V> (la <em|chiusura>) fa parte della parola
  \Soperazione\T.

  <\attenzione|Due somme, due prodotti>
    In <math|(\<alpha\>+\<beta\>)v=\<alpha\>v+\<beta\>v> il primo <math|+>
    somma scalari (in <math|K>), il secondo somma vettori (in <math|V>). In
    <math|(\<alpha\>\<beta\>)v=\<alpha\>(\<beta\>v)>,
    <math|\<alpha\>\<beta\>> è il prodotto nel campo, gli altri sono prodotti
    scalare per vettore. Usiamo gli stessi simboli, ma sono operazioni
    diverse: tienilo presente quando giustifichi un passaggio.
  </attenzione>

  <section|L'esempio fondamentale: <math|K<rsup|n>>>

  <math|K<rsup|n>> è l'insieme delle <math|n>-uple
  <math|x=(x<rsub|1>,\<ldots\>,x<rsub|n>)> di scalari (i casi più importanti
  sono <math|\<bbb-R\><rsup|n>> e <math|\<bbb-C\><rsup|n>>). Le operazioni
  sono <em|termine a termine>:

  <\equation*>
    x+y=(x<rsub|1>+y<rsub|1>,\<ldots\>,x<rsub|n>+y<rsub|n>),<space|2em>\<alpha\>x=(\<alpha\>x<rsub|1>,\<ldots\>,\<alpha\>x<rsub|n>).
  </equation*>

  Il vettore nullo è <math|(0,\<ldots\>,0)>, l'opposto di <math|x> è
  <math|(-x<rsub|1>,\<ldots\>,-x<rsub|n>)>, dove <math|-x<rsub|i>> è
  l'opposto nel campo. Ogni assioma si riduce allo stesso assioma in
  <math|K>, una componente alla volta.

  <\guidato|L'associatività in <math|K<rsup|n>> (lezione del 30/09)>
    Dimostra che <math|(x+y)+z=x+(y+z)> in <math|K<rsup|n>>.

    <em|Idea.> Definizione della somma, poi associatività in <math|K> su ogni
    componente.

    <em|Conto.> Per definizione <math|x+y=(x<rsub|1>+y<rsub|1>,\<ldots\>,x<rsub|n>+y<rsub|n>)>,
    quindi <math|(x+y)+z=((x<rsub|1>+y<rsub|1>)+z<rsub|1>,\<ldots\>,(x<rsub|n>+y<rsub|n>)+z<rsub|n>)>.
    In <math|K> vale <math|(x<rsub|i>+y<rsub|i>)+z<rsub|i>=x<rsub|i>+(y<rsub|i>+z<rsub|i>)>
    per ogni <math|i>, e la <math|n>-upla
    <math|(x<rsub|1>+(y<rsub|1>+z<rsub|1>),\<ldots\>)> è per definizione
    <math|x+(y+z)>.

    <em|Controllo.> Allo stesso modo la distributività:
    <math|(\<alpha\>+\<beta\>)x> ha componenti
    <math|(\<alpha\>+\<beta\>)x<rsub|i>=\<alpha\>x<rsub|i>+\<beta\>x<rsub|i>>,
    che sono le componenti di <math|\<alpha\>x+\<beta\>x>.
  </guidato>

  <\officina|6. Ridursi alle componenti>
    Quando le operazioni sono definite \Spezzo per pezzo\T (componente per
    componente, coefficiente per coefficiente, punto per punto), ogni assioma
    si dimostra così: scrivi il pezzo generico di ciascun lato, applica la
    proprietà corrispondente del campo, e concludi che i due oggetti hanno
    tutti i pezzi uguali, quindi sono uguali. Due funzioni sono uguali se
    hanno lo stesso valore in ogni punto; due polinomi se hanno gli stessi
    coefficienti; due matrici se hanno le stesse entrate.
  </officina>

  <section|Tre conseguenze degli assiomi>

  Alcune regole che usiamo sempre non sono assiomi: si dimostrano.

  <\itemize>
    <item><math|0<rsub|K>v=0> per ogni <math|v>. Infatti
    <math|0<rsub|K>v=(0<rsub|K>+0<rsub|K>)v=0<rsub|K>v+0<rsub|K>v>; sommando
    a entrambi i membri l'opposto di <math|0<rsub|K>v> resta
    <math|0=0<rsub|K>v>.

    <item><math|\<alpha\>0=0> per ogni <math|\<alpha\>>. Infatti
    <math|\<alpha\>0=\<alpha\>(0+0)=\<alpha\>0+\<alpha\>0>, e si toglie
    <math|\<alpha\>0>.

    <item><math|(-1<rsub|K>)v=-v>. Infatti
    <math|v+(-1<rsub|K>)v=1<rsub|K>v+(-1<rsub|K>)v=(1<rsub|K>-1<rsub|K>)v=0<rsub|K>v=0>,
    e l'opposto è unico.
  </itemize>

  <section|Un catalogo di spazi vettoriali>

  <strong|Polinomi.> <math|K[x]> è l'insieme dei polinomi
  <math|a<rsub|0>+a<rsub|1>x+\<cdots\>+a<rsub|n>x<rsup|n>> a coefficienti in
  <math|K>, visti come <em|espressioni formali> (<math|x> è un simbolo, non
  necessariamente una variabile di una funzione). Il grado di
  <math|p\<neq\>0> è il massimo <math|k> con <math|a<rsub|k>\<neq\>0>:
  <math|3x<rsup|5>-2x<rsup|2>+1> ha grado <math|5>. Si somma coefficiente per
  coefficiente, e lo scalare moltiplica tutti i coefficienti; il polinomio
  nullo ha tutti i coefficienti zero. Sommando, i termini di grado massimo
  possono cancellarsi (<math|3x<rsup|5>+(-3x<rsup|5>)=0>), quindi in generale

  <\equation*>
    deg(p+q)\<leq\>max<around|{|deg p,deg q|}>,
  </equation*>

  senza uguaglianza garantita. L'insieme <math|K<rsub|n>[x]> dei polinomi di
  grado <math|\<leq\>n>, <em|polinomio nullo compreso>, è anch'esso uno
  spazio vettoriale: somme e multipli non alzano il grado.

  <\guidato|I polinomi di grado esattamente <math|n> (lezione del 30/09)>
    L'insieme dei polinomi di grado <em|esattamente> <math|2> è uno spazio
    vettoriale?

    <em|Idea.> Cercare un'operazione che fa uscire dall'insieme.

    <em|Conto.> <math|p=x<rsup|2>+x> e <math|q=-x<rsup|2>+1> hanno grado
    <math|2>, ma <math|p+q=x+1> ha grado <math|1>. La somma esce
    dall'insieme. Inoltre il polinomio nullo, che dovrebbe fare da vettore
    nullo, non ha grado <math|2>.

    <em|Controllo.> Con <math|K<rsub|2>[x]> (grado <em|al più> <math|2>)
    entrambi i problemi spariscono.
  </guidato>

  <strong|Funzioni.> Se <math|X> è un insieme,
  <math|\<cal-F\>(X,\<bbb-R\>)=<around|{|f:X\<rightarrow\>\<bbb-R\>|}>> è uno
  spazio vettoriale su <math|\<bbb-R\>> con le operazioni <em|punto per
  punto>:

  <\equation*>
    (f+g)(x)=f(x)+g(x),<space|2em>(\<alpha\>f)(x)=\<alpha\>f(x).
  </equation*>

  A destra ci sono somme e prodotti di numeri reali; a sinistra una nuova
  funzione. Il vettore nullo è la funzione nulla <math|0(x)=0>, l'opposto è
  <math|(-f)(x)=-f(x)>. Gli assiomi seguono da quelli di <math|\<bbb-R\>>,
  punto per punto: per esempio <math|((f+g)+h)(x)=(f(x)+g(x))+h(x)=f(x)+(g(x)+h(x))=(f+(g+h))(x)>
  per ogni <math|x>. Lo stesso vale per le funzioni <math|X\<rightarrow\>K>
  con <math|K> campo qualsiasi.

  <figura|<image|geometria-1-assets/somma-funzioni.pdf|130.0mm|60.0mm||>|La
  somma di funzioni si fa punto per punto: se <math|f(3)=5> e <math|g(3)=7>,
  allora <math|(f+g)(3)=12>. Il grafico di <math|f+g> si ottiene sommando le
  altezze.>

  <strong|Matrici.> Una matrice <math|m\<times\>n> su <math|K> è una tabella
  <math|A=(a<rsub|i*j>)> con <math|m> righe e <math|n> colonne; il primo
  indice è la riga, il secondo la colonna (<math|a<rsub|16>> sta in riga
  <math|1>, colonna <math|6>). L'insieme <math|M<rsub|m,n>(K)> (e
  <math|M<rsub|n>(K)=M<rsub|n,n>(K)> per le quadrate) è uno spazio vettoriale
  con

  <\equation*>
    (A+B)<rsub|i*j>=a<rsub|i*j>+b<rsub|i*j>,<space|2em>(\<lambda\>A)<rsub|i*j>=\<lambda\>a<rsub|i*j>.
  </equation*>

  La somma si fa solo fra matrici dello stesso tipo; il vettore nullo è la
  matrice nulla. È come <math|K<rsup|m*n>>, con i numeri disposti in una
  tabella invece che in una lista. Il <em|prodotto> fra matrici (capitolo 10)
  è un'altra operazione, che qui non serve.

  <strong|Numeri complessi.> <math|\<bbb-C\>> è uno spazio vettoriale su
  <math|\<bbb-C\>> e anche su <math|\<bbb-R\>> (dove <math|a+i*b> si comporta
  come la coppia <math|(a,b)>). Sono due strutture diverse: lo vedremo dalla
  dimensione (capitolo 8).

  <\verifica|5>
    <strong|a)> Su <math|\<bbb-R\><rsup|2>> teniamo la somma usuale ma
    poniamo <math|\<alpha\>\<odot\>(x,y)=(\<alpha\>x,0)>. Quale assioma
    fallisce?

    <strong|b)> I polinomi reali con <math|p(0)=1> formano uno spazio
    vettoriale con le operazioni usuali?

    <strong|c)> Qual è il vettore nullo di <math|M<rsub|2,3>(\<bbb-R\>)>? E
    di <math|\<cal-F\>(\<bbb-R\>,\<bbb-R\>)>?
  </verifica>

  <chapter|Sottospazi>

  <\inbreve>
    Dentro uno spazio vettoriale vivono spazi più piccoli: le rette e i piani
    per l'origine, le soluzioni di un'equazione omogenea, i polinomi di grado
    basso. Per riconoscerli bastano tre controlli. Impareremo anche a passare
    da un'equazione a una descrizione con parametri, e vedremo che
    l'intersezione di sottospazi è un sottospazio, l'unione quasi mai.
  </inbreve>

  <section|Definizione e criterio>

  Sia <math|V> uno spazio vettoriale su <math|K>. Un sottoinsieme
  <math|W\<subseteq\>V> è un <strong|sottospazio vettoriale> se, con le
  <em|stesse> operazioni di <math|V>, è a sua volta uno spazio vettoriale.
  Non si inventano operazioni nuove: la somma di due vettori di <math|W> è
  quella calcolata in <math|V>.

  Gli assiomi come l'associatività valgono già in <math|V>, quindi valgono in
  <math|W>. L'unico rischio è che le operazioni <em|facciano uscire da
  <math|W>>. Per questo:

  <strong|Criterio.> <math|W\<subseteq\>V> è un sottospazio se e solo se

  <\enumerate>
    <item><math|W\<neq\>\<varnothing\>> (in pratica: <math|0\<in\>W>);

    <item><math|u,v\<in\>W\<Rightarrow\>u+v\<in\>W>;

    <item><math|\<alpha\>\<in\>K,u\<in\>W\<Rightarrow\>\<alpha\>u\<in\>W>.
  </enumerate>

  In forma compatta: <math|W\<neq\>\<varnothing\>> e
  <math|\<alpha\>u+\<beta\>v\<in\>W> per ogni <math|u,v\<in\>W>,
  <math|\<alpha\>,\<beta\>\<in\>K> (con <math|\<alpha\>=\<beta\>=1> si
  ritrova la somma, con <math|\<beta\>=0> il multiplo).

  <strong|Il vettore nullo è obbligatorio.> Se <math|w\<in\>W>, allora
  <math|0\<cdot\>w=0\<in\>W>. Quindi un insieme che non contiene <math|0> non
  è mai un sottospazio, e l'insieme vuoto non lo è.

  <\attenzione|Lo zero giusto>
    Il vettore nullo dipende dallo spazio ambiente: <math|(0,0)> in
    <math|\<bbb-R\><rsup|2>>, <math|(0,0,0)> in <math|\<bbb-R\><rsup|3>>, la
    matrice nulla in <math|M<rsub|m,n>(K)>, la funzione nulla tra le
    funzioni. Scriviamo sempre <math|0>, ma sono oggetti diversi. Non basta
    che l'insieme contenga \Suno zero\T scritto in qualche modo: deve
    contenere il vettore nullo <em|di quello spazio>.
  </attenzione>

  <section|Esempi nel piano e nello spazio>

  <strong|Una retta per l'origine.> Se <math|v\<neq\>0>,
  <math|W=<around|{|t*v\<mid\>t\<in\>\<bbb-R\>|}>> è un sottospazio di
  <math|\<bbb-R\><rsup|2>>: <math|s*v+t*v=(s+t)v\<in\>W> e
  <math|\<alpha\>(s*v)=(\<alpha\>s)v\<in\>W>.

  <strong|Una retta che non passa per l'origine> non è un sottospazio: non
  contiene <math|0>. Anche a occhio, la somma di due suoi vettori esce dalla
  retta, e <math|0\<cdot\>v=0> pure.

  <figura|<image|geometria-1-assets/rette.pdf|150.0mm|57.5mm||>|A sinistra
  somme e multipli dei vettori di una retta per l'origine restano sulla
  retta. A destra la retta non passa per l'origine (cerchietto vuoto):
  <math|p+q> cade fuori.>

  <strong|Il piano <math|x<rsub|3>=0> in <math|\<bbb-R\><rsup|3>>.>
  <math|W=<around|{|(x<rsub|1>,x<rsub|2>,0)|}>>:
  <math|(x<rsub|1>,x<rsub|2>,0)+(y<rsub|1>,y<rsub|2>,0)=(x<rsub|1>+y<rsub|1>,x<rsub|2>+y<rsub|2>,0)\<in\>W>
  e <math|\<lambda\>(x<rsub|1>,x<rsub|2>,0)=(\<lambda\>x<rsub|1>,\<lambda\>x<rsub|2>,0)\<in\>W>.
  È una copia di <math|\<bbb-R\><rsup|2>> dentro <math|\<bbb-R\><rsup|3>>.

  <\officina|7. Tre controlli, oppure un controesempio>
    Per dire <em|sì, è un sottospazio>: verifica <math|0\<in\>W>, poi prendi
    due elementi <em|generici> di <math|W> e uno scalare generico, e mostra
    che somma e multiplo soddisfano ancora la condizione che definisce
    <math|W>. Non serve ricontrollare gli otto assiomi.

    Per dire <em|no>: basta <em|un solo> esempio concreto che esce, oppure
    osservare che <math|0\<nin\>W>. Così per \Spolinomi di grado esattamente
    <math|2>\T (capitolo 5) o per una retta non passante per l'origine.
  </officina>

  <section|Le soluzioni di un'equazione omogenea>

  <\guidato|Un piano descritto da un'equazione (lezione del 14/10)>
    Mostra che <math|W=<around|{|(x<rsub|1>,x<rsub|2>,x<rsub|3>)\<in\>\<bbb-R\><rsup|3>\<mid\>x<rsub|1>+2x<rsub|2>-x<rsub|3>=0|}>>
    è un sottospazio.

    <em|Idea.> I tre controlli; il motore è che l'espressione
    <math|x<rsub|1>+2x<rsub|2>-x<rsub|3>> è <em|lineare>.

    <em|Conto.> Zero: <math|0+2\<cdot\>0-0=0>. Somma: se
    <math|x<rsub|1>+2x<rsub|2>-x<rsub|3>=0> e
    <math|x<rsub|1><rprime|'>+2x<rsub|2><rprime|'>-x<rsub|3><rprime|'>=0>,
    sommando si ha <math|(x<rsub|1>+x<rsub|1><rprime|'>)+2(x<rsub|2>+x<rsub|2><rprime|'>)-(x<rsub|3>+x<rsub|3><rprime|'>)=0>.
    Multiplo: <math|\<lambda\>x<rsub|1>+2\<lambda\>x<rsub|2>-\<lambda\>x<rsub|3>=\<lambda\>(x<rsub|1>+2x<rsub|2>-x<rsub|3>)=\<lambda\>\<cdot\>0=0>.

    <em|Controllo.> Con termine noto <math|1>
    (<math|x<rsub|1>+2x<rsub|2>-x<rsub|3>=1>) il primo controllo fallisce:
    <math|(0,0,0)> non è soluzione.
  </guidato>

  Lo stesso ragionamento vale per ogni sistema: <strong|le soluzioni di un
  sistema lineare <em|omogeneo> formano un sottospazio>. L'omogeneità
  (termini noti nulli) è essenziale. Nel capitolo 10 lo rileggeremo così:
  sono il <em|nucleo> di un'applicazione lineare.

  <strong|Dall'equazione ai parametri.> Lo stesso sottospazio si può
  descrivere in due modi: <em|implicito> (con equazioni che dicono chi ci sta
  dentro) o <em|parametrico> (con vettori che lo costruiscono).

  <\guidato|Dall'equazione ai generatori (lezione del 06/10)>
    Descrivi con parametri <math|W=<around|{|x\<in\>\<bbb-R\><rsup|3>\<mid\>2x<rsub|1>-x<rsub|2>+3x<rsub|3>=0|}>>.

    <em|Idea.> Risolvere rispetto a una variabile e lasciare libere le altre.

    <em|Conto.> <math|x<rsub|2>=2x<rsub|1>+3x<rsub|3>>. Con
    <math|x<rsub|1>=s>, <math|x<rsub|3>=t>:

    <\equation*>
      (x<rsub|1>,x<rsub|2>,x<rsub|3>)=(s,2s+3t,t)=s(1,2,0)+t(0,3,1).
    </equation*>

    Quindi <math|W> è l'insieme di tutte le combinazioni
    <math|s(1,2,0)+t(0,3,1)>.

    <em|Controllo.> <math|2\<cdot\>1-2+3\<cdot\>0=0> e
    <math|2\<cdot\>0-3+3\<cdot\>1=0>: i due vettori soddisfano l'equazione.
  </guidato>

  In generale, un'equazione <math|\<alpha\><rsub|1>x<rsub|1>+\<cdots\>+\<alpha\><rsub|n>x<rsub|n>=0>
  con un coefficiente non nullo, diciamo <math|\<alpha\><rsub|1>\<neq\>0>, si
  risolve rispetto a <math|x<rsub|1>> (dividere per <math|\<alpha\><rsub|1>>
  è possibile perché in un campo ogni elemento non nullo è invertibile):

  <\equation*>
    x=x<rsub|2><around|(|-<frac|\<alpha\><rsub|2>|\<alpha\><rsub|1>>,1,0,\<ldots\>,0|)>+x<rsub|3><around|(|-<frac|\<alpha\><rsub|3>|\<alpha\><rsub|1>>,0,1,\<ldots\>,0|)>+\<cdots\>+x<rsub|n><around|(|-<frac|\<alpha\><rsub|n>|\<alpha\><rsub|1>>,0,\<ldots\>,0,1|)>.
  </equation*>

  Una sola equazione non banale in <math|\<bbb-R\><rsup|n>> lascia <math|n-1>
  vettori generatori, uno per ogni variabile libera. Se
  <math|\<alpha\><rsub|1>=0> si risolve rispetto a un'altra variabile con
  coefficiente non nullo.

  <section|Tutti i sottospazi di <math|\<bbb-R\><rsup|2>> e di
  <math|\<bbb-R\><rsup|3>>>

  <strong|Proposizione.> I sottospazi di <math|\<bbb-R\><rsup|2>> sono
  soltanto: <math|<around|{|0|}>>, le rette per l'origine,
  <math|\<bbb-R\><rsup|2>>.

  <em|Dimostrazione.> Sia <math|W> un sottospazio diverso da
  <math|<around|{|0|}>>: contiene un <math|v=(a,b)\<neq\>0>, e quindi tutti i
  suoi multipli. Se non contiene altro, è la retta <math|<around|{|t*v|}>>.
  Altrimenti contiene un <math|w=(c,d)> che non è multiplo di <math|v>;
  mostriamo che allora <math|W=\<bbb-R\><rsup|2>>. Supponiamo
  <math|a\<neq\>0> (se <math|a=0>, allora <math|b\<neq\>0> e si scambiano i
  ruoli delle coordinate). Il vettore

  <\equation*>
    w-<frac|c|a>v=<around|(|0,d-<frac|b*c|a>|)>
  </equation*>

  sta in <math|W> e ha seconda coordinata non nulla: se fosse <math|d=b*c/a>,
  avremmo <math|w=<frac|c|a>v>, contro l'ipotesi. Dividendo per quella
  coordinata otteniamo <math|(0,1)\<in\>W>. Poi <math|v-b(0,1)=(a,0)>, e
  dividendo per <math|a> otteniamo <math|(1,0)\<in\>W>. Un sottospazio che
  contiene <math|(1,0)> e <math|(0,1)> contiene ogni
  <math|(x,y)=x(1,0)+y(0,1)>.

  In <math|\<bbb-R\><rsup|3>> la scala ha un gradino in più:
  <math|<around|{|0|}>>, le rette per l'origine, i piani per l'origine,
  <math|\<bbb-R\><rsup|3>>. Un vettore non nullo porta con sé la sua retta;
  un secondo vettore fuori da quella retta porta il piano
  <math|<around|{|\<alpha\>u+\<beta\>v|}>>; un terzo fuori dal piano porta
  tutto lo spazio. Nel capitolo 8 questa scala avrà un nome: la
  <em|dimensione>.

  <figura|<image|geometria-1-assets/sottospazi-r3.pdf|160.0mm|47.5mm||>|La
  scala dei sottospazi di <math|\<bbb-R\><rsup|3>>: il solo vettore nullo,
  una retta, un piano, tutto lo spazio. Tutti passano per l'origine.>

  <section|Intersezione e unione>

  <strong|L'intersezione di sottospazi è un sottospazio.> Se
  <math|W<rsub|1>,W<rsub|2>> sono sottospazi, <math|0> sta in entrambi; se
  <math|u,v\<in\>W<rsub|1>\<cap\>W<rsub|2>>, allora <math|u+v\<in\>W<rsub|1>>
  e <math|u+v\<in\>W<rsub|2>>, quindi <math|u+v\<in\>W<rsub|1>\<cap\>W<rsub|2>>;
  lo stesso per <math|\<alpha\>u>. Il ragionamento vale per un numero
  qualunque di sottospazi.

  <strong|L'unione di due sottospazi è un sottospazio se e solo se uno dei
  due contiene l'altro.>

  <em|Dimostrazione.> Se <math|W<rsub|1>\<subseteq\>W<rsub|2>>, l'unione è
  <math|W<rsub|2>>. Supponiamo invece che nessuno contenga l'altro: esistono
  <math|u\<in\>W<rsub|1>\<setminus\>W<rsub|2>> e
  <math|w\<in\>W<rsub|2>\<setminus\>W<rsub|1>>. Se <math|u+w> stesse in
  <math|W<rsub|1>>, anche <math|w=(u+w)-u> starebbe in <math|W<rsub|1>>:
  falso. Se stesse in <math|W<rsub|2>>, anche <math|u=(u+w)-w> starebbe in
  <math|W<rsub|2>>: falso. Quindi <math|u+w\<nin\>W<rsub|1>\<cup\>W<rsub|2>>,
  e l'unione non è chiusa per la somma.

  <figura|<image|geometria-1-assets/unione.pdf|70.1mm|53.1mm||>|Due rette per
  l'origine: <math|u> sta su <math|U>, <math|w> su <math|W>, ma <math|u+w>
  prende una terza direzione. L'unione di due rette distinte non è un
  sottospazio.>

  Il più piccolo sottospazio che contiene l'unione sarà la <em|somma>
  <math|W<rsub|1>+W<rsub|2>> (capitolo 9).

  <\verifica|6>
    <strong|a)> <math|<around|{|(x,y)\<in\>\<bbb-R\><rsup|2>\<mid\>x*y=0|}>>
    è un sottospazio? (È l'unione dei due assi.)

    <strong|b)> <math|<around|{|p\<in\>\<bbb-R\><rsub|3>[x]\<mid\>p(1)=0|}>>
    è un sottospazio? E <math|<around|{|p\<mid\>p(1)=2|}>>?

    <strong|c)> Descrivi con parametri <math|<around|{|x\<in\>\<bbb-R\><rsup|3>\<mid\>x<rsub|1>+x<rsub|2>+x<rsub|3>=0|}>>.
  </verifica>

  <chapter|Generatori, indipendenza, basi>

  <\inbreve>
    Per dare coordinate a un vettore servono due cose. Ogni vettore deve
    potersi scrivere con certi vettori fissati (<em|generatori>), e la
    scrittura deve essere unica (<em|indipendenza>). Una <em|base> ha
    entrambe le proprietà: è un sistema di riferimento senza buchi e senza
    doppioni.
  </inbreve>

  <section|Combinazioni lineari e span>

  Dati <math|v<rsub|1>,\<ldots\>,v<rsub|n>\<in\>V>, una <strong|combinazione
  lineare> è un vettore <math|\<alpha\><rsub|1>v<rsub|1>+\<cdots\>+\<alpha\><rsub|n>v<rsub|n>>
  con <math|\<alpha\><rsub|i>\<in\>K>: i vettori sono fissati, i coefficienti
  variano. Lo <strong|span> (o <em|sottospazio generato>) è l'insieme di
  tutte le combinazioni:

  <\equation*>
    <math-up|span>(v<rsub|1>,\<ldots\>,v<rsub|n>)=<around|{|\<alpha\><rsub|1>v<rsub|1>+\<cdots\>+\<alpha\><rsub|n>v<rsub|n>\<mid\>\<alpha\><rsub|i>\<in\>K|}>.
  </equation*>

  Si scrive anche <math|\<langle\>v<rsub|1>,\<ldots\>,v<rsub|n>\<rangle\>>.
  Un vettore <math|v> sta nello span se e solo se <em|esistono> coefficienti
  che lo esprimono.

  <figura|<image|geometria-1-assets/span.pdf|131.2mm|41.0mm||>|Un vettore non
  nullo genera una retta; due vettori non paralleli generano un piano (nel
  piano: tutto <math|\<bbb-R\><rsup|2>>); tre vettori complanari restano nel
  loro piano, tre non complanari generano tutto lo spazio.>

  <strong|Lo span è un sottospazio.> Contiene
  <math|0=0v<rsub|1>+\<cdots\>+0v<rsub|n>>. Se
  <math|u=<big|sum>\<alpha\><rsub|i>v<rsub|i>> e
  <math|w=<big|sum>\<beta\><rsub|i>v<rsub|i>>, allora
  <math|u+w=<big|sum>(\<alpha\><rsub|i>+\<beta\><rsub|i>)v<rsub|i>> e
  <math|\<lambda\>u=<big|sum>(\<lambda\>\<alpha\><rsub|i>)v<rsub|i>> sono
  ancora combinazioni.

  <strong|Span di un insieme qualsiasi.> Per <math|A\<subseteq\>V>, anche
  infinito, <math|<math-up|span>(A)> è l'insieme delle combinazioni lineari
  di <em|un numero finito> di vettori di <math|A>. Le combinazioni sono
  <em|sempre finite>: niente serie <math|<big|sum><rsub|i=1><rsup|\<infty\>>>.
  Ripetere un vettore non cambia nulla (si sommano i coefficienti), e si
  possono aggiungere vettori con coefficiente <math|0>: per questo le varie
  definizioni danno lo stesso insieme.

  Tre proprietà:

  <\itemize>
    <item><math|A\<subseteq\><math-up|span>(A)>, perché <math|v=1\<cdot\>v>;

    <item>se <math|W> è un sottospazio e <math|A\<subseteq\>W>, allora
    <math|<math-up|span>(A)\<subseteq\>W> (un sottospazio è chiuso per
    combinazioni);

    <item>quindi <math|<math-up|span>(A)> è il <strong|più piccolo
    sottospazio che contiene <math|A>>: è l'intersezione di tutti i
    sottospazi che contengono <math|A>. In particolare
    <math|<math-up|span>(<math-up|span>(A))=<math-up|span>(A)>.
  </itemize>

  <math|A> è un <strong|insieme di generatori> di <math|V> se
  <math|<math-up|span>(A)=V>: ogni vettore è combinazione (finita) di
  elementi di <math|A>.

  <strong|Esempio: i polinomi.> I monomi <math|1,x,x<rsup|2>,\<ldots\>>
  generano <math|K[x]>: ogni polinomio è una combinazione finita di monomi. I
  monomi pari <math|1,x<rsup|2>,x<rsup|4>,\<ldots\>> generano i polinomi con
  sole potenze pari; quelli dispari i polinomi con sole potenze dispari.

  <section|Indipendenza lineare>

  La combinazione con tutti i coefficienti nulli dà sempre <math|0>: è la
  <strong|soluzione banale>. I vettori <math|v<rsub|1>,\<ldots\>,v<rsub|n>>
  sono <strong|linearmente indipendenti> se è l'<em|unica>:

  <\equation*>
    \<alpha\><rsub|1>v<rsub|1>+\<cdots\>+\<alpha\><rsub|n>v<rsub|n>=0<space|1em>\<Rightarrow\><space|1em>\<alpha\><rsub|1>=\<cdots\>=\<alpha\><rsub|n>=0.
  </equation*>

  Sono <strong|dipendenti> se esiste una combinazione nulla con i
  coefficienti <em|non tutti> nulli.

  <strong|Indipendenza = unicità della scrittura.> Se i vettori sono
  indipendenti e <math|v=<big|sum>\<alpha\><rsub|i>v<rsub|i>=<big|sum>\<beta\><rsub|i>v<rsub|i>>,
  sottraendo si ha <math|<big|sum>(\<alpha\><rsub|i>-\<beta\><rsub|i>)v<rsub|i>=0>,
  quindi <math|\<alpha\><rsub|i>=\<beta\><rsub|i>> per ogni <math|i>.
  Viceversa, se ogni vettore si scrive in un solo modo, anche <math|0> ha
  solo la scrittura banale.

  <strong|Casi piccoli.>

  <\itemize>
    <item>Un vettore da solo è indipendente se e solo se <math|v\<neq\>0>. Se
    <math|v=0>, la combinazione <math|1\<cdot\>v=0> non è banale. Se
    <math|v\<neq\>0> e <math|\<alpha\>v=0> con <math|\<alpha\>\<neq\>0>,
    moltiplicando per <math|\<alpha\><rsup|-1>> si ottiene <math|v=0>:
    assurdo.

    <item>Due vettori sono dipendenti se e solo se uno è multiplo dell'altro:
    da <math|\<alpha\><rsub|1>v<rsub|1>+\<alpha\><rsub|2>v<rsub|2>=0> con,
    per esempio, <math|\<alpha\><rsub|2>\<neq\>0>, si ricava
    <math|v<rsub|2>=-\<alpha\><rsub|2><rsup|-1>\<alpha\><rsub|1>v<rsub|1>>.
    Nel piano: due vettori non nulli sono indipendenti se e solo se non sono
    paralleli.
  </itemize>

  <strong|Dipendenza = un vettore è superfluo.>
  <math|v<rsub|1>,\<ldots\>,v<rsub|n>> sono dipendenti se e solo se uno di
  loro è combinazione degli altri. Se <math|<big|sum>\<alpha\><rsub|j>v<rsub|j>=0>
  con <math|\<alpha\><rsub|i>\<neq\>0>, allora
  <math|v<rsub|i>=-<big|sum><rsub|j\<neq\>i>\<alpha\><rsub|i><rsup|-1>\<alpha\><rsub|j>v<rsub|j>>.
  Viceversa, da <math|v<rsub|i>=<big|sum><rsub|j\<neq\>i>\<beta\><rsub|j>v<rsub|j>>
  si ottiene la combinazione nulla <math|v<rsub|i>-<big|sum><rsub|j\<neq\>i>\<beta\><rsub|j>v<rsub|j>=0>,
  in cui il coefficiente di <math|v<rsub|i>> è <math|1\<neq\>0>.

  <strong|Sottoinsiemi e soprainsiemi.> Aggiungendo vettori a una famiglia
  dipendente resta dipendente (la stessa relazione, con coefficienti <math|0>
  sui nuovi). Togliendo vettori a una famiglia indipendente resta
  indipendente.

  <\officina|8. La combinazione nulla>
    Per dimostrare l'indipendenza, la prima riga è sempre la stessa:
    \Ssupponiamo <math|\<alpha\><rsub|1>v<rsub|1>+\<cdots\>+\<alpha\><rsub|n>v<rsub|n>=0>\T.
    Poi si usano le informazioni sui vettori (le coordinate, i gradi, i
    pivot) per ricavare che <em|ogni> coefficiente è zero. L'ultima riga dice
    esplicitamente: \Sl'unica combinazione nulla è quella banale\T.

    Un trucco utile: cerca una coordinata in cui compare <em|un solo>
    vettore. Lì l'equazione coinvolge un solo coefficiente, che deve essere
    zero; poi si passa alla coordinata successiva. È l'idea dei pivot
    (capitolo 11).
  </officina>

  <\guidato|Due vettori di <math|\<bbb-R\><rsup|3>> (lezione del 06/10)>
    Mostra che <math|v<rsub|1>=(-1,1,0)> e <math|v<rsub|2>=(-2,1,1)> sono
    indipendenti.

    <em|Idea.> Combinazione nulla; nella terza coordinata compare solo
    <math|v<rsub|2>>.

    <em|Conto.> <math|\<alpha\>v<rsub|1>+\<beta\>v<rsub|2>=(-\<alpha\>-2\<beta\>,\<alpha\>+\<beta\>,\<beta\>)=(0,0,0)>.
    La terza coordinata dà <math|\<beta\>=0>; la seconda
    <math|\<alpha\>+\<beta\>=0> dà <math|\<alpha\>=0>. L'unica combinazione
    nulla è quella banale.

    <em|Controllo.> Non sono multipli: un multiplo di <math|v<rsub|1>> ha
    terza coordinata <math|0>, <math|v<rsub|2>> no.
  </guidato>

  <\attenzione|L'indipendenza dipende dal campo>
    <math|v=(1,i)> e <math|w=(i,-1)> in <math|\<bbb-C\><rsup|2>>: su
    <math|\<bbb-C\>> sono dipendenti, perché
    <math|i*v=(i,i<rsup|2>)=(i,-1)=w>. Ma se gli scalari ammessi sono solo i
    reali, <math|i> non è un coefficiente lecito: da
    <math|\<alpha\>v+\<beta\>w=0> con <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\>>,
    la prima coordinata <math|\<alpha\>+i\<beta\>=0> dà
    <math|\<alpha\>=\<beta\>=0>. Su <math|\<bbb-R\>> sono indipendenti.
    Dichiara sempre su quale campo lavori.
  </attenzione>

  <section|Basi e coordinate>

  Una <strong|base> di <math|V> è un insieme <math|B> che <em|genera>
  <math|V> ed è <em|linearmente indipendente>. La generazione dà
  l'<em|esistenza> della scrittura <math|v=<big|sum>\<alpha\><rsub|i>v<rsub|i>>;
  l'indipendenza ne dà l'<em|unicità> (officina 2). È un sistema di
  riferimento con abbastanza vettori per raggiungere tutto e nessuno di
  troppo.

  Se <math|B=(v<rsub|1>,\<ldots\>,v<rsub|n>)> è una base, i coefficienti
  unici di <math|v=\<alpha\><rsub|1>v<rsub|1>+\<cdots\>+\<alpha\><rsub|n>v<rsub|n>>
  sono le <strong|coordinate> di <math|v> rispetto a <math|B>, raccolte nella
  colonna <math|[v]<rsub|B>>. La notazione ricorda che le coordinate
  dipendono dalla base: lo stesso vettore ha coordinate diverse in basi
  diverse.

  <strong|La base canonica di <math|K<rsup|n>>.>
  <math|e<rsub|1>=(1,0,\<ldots\>,0)>, \<ldots\>,
  <math|e<rsub|n>=(0,\<ldots\>,0,1)>. Ogni <math|x> si scrive
  <math|x=x<rsub|1>e<rsub|1>+\<cdots\>+x<rsub|n>e<rsub|n>>, e
  <math|\<alpha\><rsub|1>e<rsub|1>+\<cdots\>+\<alpha\><rsub|n>e<rsub|n>=(\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>)>
  è zero solo se tutti gli <math|\<alpha\><rsub|i>> lo sono. Rispetto alla
  base canonica le coordinate sono le entrate del vettore.

  <\guidato|Coordinate in una base non canonica (esempio aggiunto)>
    In <math|\<bbb-R\><rsup|2>> sia <math|B=(v<rsub|1>,v<rsub|2>)> con
    <math|v<rsub|1>=(1,1)>, <math|v<rsub|2>=(1,-1)>. Trova <math|[x]<rsub|B>>
    per <math|x=(3,1)>.

    <em|Idea.> Cercare <math|\<alpha\>,\<beta\>> con
    <math|\<alpha\>v<rsub|1>+\<beta\>v<rsub|2>=x>: è un sistema.

    <em|Conto.> <math|\<alpha\>+\<beta\>=3>, <math|\<alpha\>-\<beta\>=1>, da
    cui <math|\<alpha\>=2>, <math|\<beta\>=1>: <math|[x]<rsub|B>=(2,1)>. Il
    sistema ha una e una sola soluzione per ogni <math|x=(p,q)>
    (<math|\<alpha\>=<frac|p+q|2>>, <math|\<beta\>=<frac|p-q|2>>):
    <math|v<rsub|1>,v<rsub|2>> generano e sono indipendenti, quindi sono una
    base.

    <em|Controllo.> <math|2(1,1)+1(1,-1)=(3,1)>.
  </guidato>

  <figura|<image|geometria-1-assets/coordinate-basi.pdf|110.0mm|42.5mm||>|Stesso
  vettore, due basi, due coppie di coordinate: le coordinate appartengono
  alla coppia vettore e base.>

  <strong|La base dei monomi di <math|K[x]>.>
  <math|(1,x,x<rsup|2>,\<ldots\>)> genera <math|K[x]> ed è indipendente: una
  combinazione finita <math|a<rsub|0>+a<rsub|1>x+\<cdots\>+a<rsub|n>x<rsup|n>>
  è il polinomio nullo solo se tutti i coefficienti sono nulli. È una base
  <em|infinita>. Nessun insieme finito <math|p<rsub|1>,\<ldots\>,p<rsub|m>>
  genera <math|K[x]>: se <math|d> è il massimo dei loro gradi, ogni
  combinazione ha grado <math|\<leq\>d>, e <math|x<rsup|d+1>> resta fuori.

  <\immagine|Esistenza e unicità, generatori e indipendenza>
    Pensa ai coefficienti come a una ricetta per preparare il vettore
    <math|v> con gli ingredienti <math|v<rsub|1>,\<ldots\>,v<rsub|n>>. I
    <em|generatori> garantiscono che per ogni piatto esiste una ricetta.
    L'<em|indipendenza> garantisce che la ricetta è una sola: nessun
    ingrediente si può ottenere mescolando gli altri. Una base dà a ogni
    piatto una ricetta, e una soltanto.
  </immagine>

  <\verifica|7>
    <strong|a)> <math|(1,2),(2,4)> sono indipendenti in
    <math|\<bbb-R\><rsup|2>>? Che cosa generano?

    <strong|b)> Una famiglia che contiene il vettore nullo può essere
    indipendente?

    <strong|c)> Trova le coordinate di <math|(5,-1)> rispetto alla base
    <math|v<rsub|1>=(1,1)>, <math|v<rsub|2>=(1,-1)>.
  </verifica>

  <chapter|Dimensione>

  <\inbreve>
    Uno spazio può avere tante basi diverse, ma tutte con lo stesso numero di
    vettori: è la <em|dimensione>, il numero di parametri che servono per
    descrivere un vettore. La chiave è il lemma di scambio. Una volta nota la
    dimensione, molte verifiche diventano conti: <math|n> vettori
    indipendenti in uno spazio di dimensione <math|n> sono già una base.
  </inbreve>

  <section|Coordinate come applicazione>

  Per parlare di coordinate come liste ordinate serve una <strong|base
  ordinata> <math|B=(v<rsub|1>,\<ldots\>,v<rsub|n>)>: l'ordine conta. In
  <math|\<bbb-R\><rsup|2>>, con <math|B=(e<rsub|1>,e<rsub|2>)> e
  <math|B<rprime|'>=(e<rsub|2>,e<rsub|1>)>, il vettore
  <math|v=x*e<rsub|1>+y*e<rsub|2>> ha <math|[v]<rsub|B>=(x,y)> ma
  <math|[v]<rsub|B<rprime|'>>=(y,x)>: il vettore è lo stesso, è cambiato
  l'ordine del riferimento.

  La <strong|mappa delle coordinate> <math|\<Phi\><rsub|B>:V\<rightarrow\>K<rsup|n>>,
  <math|v\<mapsto\>[v]<rsub|B>>, è

  <\itemize>
    <item><em|lineare>: se <math|v=<big|sum>x<rsub|i>v<rsub|i>> e
    <math|w=<big|sum>y<rsub|i>v<rsub|i>>, allora
    <math|v+w=<big|sum>(x<rsub|i>+y<rsub|i>)v<rsub|i>> e
    <math|\<alpha\>v=<big|sum>(\<alpha\>x<rsub|i>)v<rsub|i>>, quindi
    <math|[v+w]<rsub|B>=[v]<rsub|B>+[w]<rsub|B>> e
    <math|[\<alpha\>v]<rsub|B>=\<alpha\>[v]<rsub|B>>;

    <item><em|iniettiva>: vettori con le stesse coordinate sono la stessa
    combinazione, quindi sono uguali;

    <item><em|suriettiva>: data <math|(x<rsub|1>,\<ldots\>,x<rsub|n>)\<in\>K<rsup|n>>,
    il vettore <math|x<rsub|1>v<rsub|1>+\<cdots\>+x<rsub|n>v<rsub|n>> ha
    proprio quelle coordinate.
  </itemize>

  Una biiezione lineare si chiama <strong|isomorfismo>: scelta una base di
  <math|n> vettori, <math|V\<cong\>K<rsup|n>>. Ogni spazio con una base
  finita è, \Sin coordinate\T, uno spazio di colonne di scalari.

  <strong|Basi infinite.> Se la base è infinita, ogni vettore usa comunque
  solo un numero finito di vettori di base: le coordinate sono una funzione
  <math|B\<rightarrow\>K> diversa da zero solo su un insieme finito (il
  <em|supporto> <math|<math-up|supp>=<around|{|w:\<lambda\><rsub|w>\<neq\>0|}>>
  è finito). <math|V> non si identifica con <em|tutte> le funzioni
  <math|B\<rightarrow\>K>, ma con quelle a supporto finito, indicate con
  <math|K<rsup|(B)>>.

  <section|Basi: massimali e minimali>

  Una base si può riconoscere in altri due modi, e le tre descrizioni sono
  equivalenti.

  <\itemize>
    <item><strong|Indipendente massimale>: <math|B> è indipendente e ogni
    insieme che lo contiene propriamente è dipendente (non si può aggiungere
    nulla).

    <item><strong|Generatore minimale>: <math|B> genera <math|V> e nessun
    sottoinsieme proprio genera (non si può togliere nulla).
  </itemize>

  <em|Un indipendente massimale genera.> Se ci fosse
  <math|v\<nin\><math-up|span>(B)>, l'insieme <math|B\<cup\><around|{|v|}>>
  sarebbe dipendente (per la massimalità):
  <math|<big|sum>\<alpha\><rsub|i>b<rsub|i>+\<beta\>v=0> con coefficienti non
  tutti nulli. Se fosse <math|\<beta\>=0> avremmo una relazione non banale in
  <math|B>, impossibile; quindi <math|\<beta\>\<neq\>0> e
  <math|v=-\<beta\><rsup|-1><big|sum>\<alpha\><rsub|i>b<rsub|i>\<in\><math-up|span>(B)>:
  contraddizione.

  <em|Un generatore minimale è indipendente.> Se ci fosse una relazione non
  banale <math|\<alpha\><rsub|1>b<rsub|1>+\<cdots\>+\<alpha\><rsub|r>b<rsub|r>=0>,
  diciamo con <math|\<alpha\><rsub|1>\<neq\>0>, allora <math|b<rsub|1>>
  sarebbe combinazione degli altri e <math|<math-up|span>(B\<setminus\><around|{|b<rsub|1>|}>)=<math-up|span>(B)=V>:
  contro la minimalità.

  <\officina|9. Per assurdo, con un vettore in più o in meno>
    Per le proprietà \Smassimali\T e \Sminimali\T si ragiona per assurdo:
    supponi che la conclusione sia falsa e <em|costruisci il vettore che la
    smentisce>. Un vettore fuori dallo span si aggiunge (e si contraddice la
    massimalità); un vettore superfluo si toglie (e si contraddice la
    minimalità). Il passo decisivo è quasi sempre lo stesso: un coefficiente
    è diverso da zero, quindi possiamo dividere per lui.
  </officina>

  <strong|Esistenza di una base.> Se <math|V> è generato da un insieme finito
  <math|<around|{|v<rsub|1>,\<ldots\>,v<rsub|m>|}>>: se è indipendente è una
  base; altrimenti un vettore è combinazione degli altri, lo togliamo e lo
  span non cambia. Ripetiamo: i vettori sono finiti, quindi ci si ferma, con
  un insieme che genera ed è indipendente. <strong|Ogni insieme finito di
  generatori contiene una base>; in particolare ogni spazio finitamente
  generato ha una base finita.

  <section|Il lemma di scambio>

  <strong|Forma elementare.> Siano <math|u<rsub|1>,\<ldots\>,u<rsub|r>>
  indipendenti e <math|v=\<alpha\><rsub|1>u<rsub|1>+\<cdots\>+\<alpha\><rsub|r>u<rsub|r>>
  con <math|\<alpha\><rsub|1>\<neq\>0>. Allora
  <math|v,u<rsub|2>,\<ldots\>,u<rsub|r>> sono ancora indipendenti e generano
  lo stesso sottospazio.

  <em|Stesso span.> Da <math|\<alpha\><rsub|1>\<neq\>0>:
  <math|u<rsub|1>=\<alpha\><rsub|1><rsup|-1>(v-\<alpha\><rsub|2>u<rsub|2>-\<cdots\>-\<alpha\><rsub|r>u<rsub|r>)>,
  quindi <math|u<rsub|1>> sta nello span dei nuovi vettori; e <math|v> sta
  nello span dei vecchi.

  <em|Indipendenza.> Se <math|\<beta\>v+\<beta\><rsub|2>u<rsub|2>+\<cdots\>+\<beta\><rsub|r>u<rsub|r>=0>,
  sostituendo <math|v> si ottiene <math|\<beta\>\<alpha\><rsub|1>u<rsub|1>+(\<beta\>\<alpha\><rsub|2>+\<beta\><rsub|2>)u<rsub|2>+\<cdots\>=0>.
  Per l'indipendenza degli <math|u> tutti i coefficienti sono nulli:
  <math|\<beta\>\<alpha\><rsub|1>=0>, quindi <math|\<beta\>=0>, e allora
  anche <math|\<beta\><rsub|2>=\<cdots\>=\<beta\><rsub|r>=0>.

  <strong|Forma per le basi (Steinitz).> Siano
  <math|(u<rsub|1>,\<ldots\>,u<rsub|n>)> una base di <math|V> e
  <math|w<rsub|1>,\<ldots\>,w<rsub|m>> indipendenti. Facciamo entrare i
  <math|w> uno alla volta.

  <\itemize>
    <item>Si scrive <math|w<rsub|1>> nella base. <math|w<rsub|1>\<neq\>0>,
    quindi qualche coefficiente è non nullo: si scambia <math|w<rsub|1>> con
    quel <math|u>. È ancora una base.

    <item>Al passo <math|k>, la base corrente contiene
    <math|w<rsub|1>,\<ldots\>,w<rsub|k-1>> e alcuni <math|u> rimasti. Si
    scrive <math|w<rsub|k>> in questa base. <em|Almeno un coefficiente su un
    <math|u> rimasto è non nullo>: altrimenti <math|w<rsub|k>> sarebbe
    combinazione di <math|w<rsub|1>,\<ldots\>,w<rsub|k-1>>, contro
    l'indipendenza dei <math|w>. Si scambia <math|w<rsub|k>> con quel
    <math|u>.
  </itemize>

  Ogni passo consuma un <math|u>. Se i <math|w> fossero più degli <math|u>, a
  un certo punto non ci sarebbero più <math|u> da scambiare: la base corrente
  sarebbe fatta solo di <math|w<rsub|1>,\<ldots\>,w<rsub|n>>, e
  <math|w<rsub|n+1>> ne sarebbe combinazione, assurdo. Quindi
  <math|m\<leq\>n>. Inoltre, alla fine, <strong|la base ottenuta contiene
  tutti i <math|w>>.

  <figura|<image|geometria-1-assets/scambio.pdf|112.0mm|40.0mm||>|A ogni
  passo un <math|w> entra al posto di un <math|u> e la riga resta una base: i
  <math|w> non possono essere più delle caselle.>

  <strong|Tutte le basi hanno lo stesso numero di elementi.> Se
  <math|(u<rsub|1>,\<ldots\>,u<rsub|n>)> e
  <math|(w<rsub|1>,\<ldots\>,w<rsub|m>)> sono basi, applicando lo scambio nei
  due sensi si ha <math|m\<leq\>n> e <math|n\<leq\>m>.

  <section|La dimensione>

  La <strong|dimensione> <math|dim<rsub|K>V> di uno spazio finitamente
  generato è il numero di vettori di una (qualunque) sua base. È il numero di
  coordinate, cioè di parametri liberi: se <math|dim V=n>, allora
  <math|V\<cong\>K<rsup|n>>. Lo spazio <math|<around|{|0|}>> ha dimensione
  <math|0> (la sua base è l'insieme vuoto).

  <\itemize>
    <item><math|dim K<rsup|n>=n> (base canonica).

    <item><math|dim K<rsub|n>[x]=n+1> (base <math|1,x,\<ldots\>,x<rsup|n>>);
    <math|K[x]> ha dimensione infinita.

    <item><math|dim M<rsub|m,n>(K)=m*n>, <math|dim M<rsub|n>(K)=n<rsup|2>>
    (prossimo esercizio).

    <item><math|\<bbb-C\>> ha dimensione <math|1> su <math|\<bbb-C\>> (ogni
    <math|z=z\<cdot\>1>) e dimensione <math|2> su <math|\<bbb-R\>> (base
    <math|1,i>). La dimensione dipende dal campo degli scalari:
    \S<math|\<bbb-C\>> ha dimensione\<ldots\>\T non ha senso senza dire su
    quale campo.
  </itemize>

  <\guidato|La base canonica delle matrici (lezioni del 07/10 e del 14/10)>
    Sia <math|E<rsub|i*j>> la matrice con <math|1> nella posizione
    <math|(i,j)> e <math|0> altrove. Mostra che le <math|E<rsub|i*j>> sono
    una base di <math|M<rsub|m,n>(K)>.

    <em|Idea.> Ogni <math|E<rsub|i*j>> \Saccende\T una sola casella.

    <em|Conto.> Generano: <math|A=<big|sum><rsub|i,j>a<rsub|i*j>E<rsub|i*j>>,
    perché <math|a<rsub|i*j>E<rsub|i*j>> mette il valore <math|a<rsub|i*j>>
    nella casella <math|(i,j)> e nient'altro. Indipendenti: se
    <math|<big|sum>\<lambda\><rsub|i*j>E<rsub|i*j>=0>, guardando la casella
    <math|(i,j)> si legge <math|\<lambda\><rsub|i*j>=0>. Sono <math|m*n>,
    quindi <math|dim M<rsub|m,n>(K)=m*n>. In <math|M<rsub|2>(K)>:

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|a>|<cell|b>>|<row|<cell|c>|<cell|d>>>>>=a<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>>>>>+b<matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>>>>>+c<matrix|<tformat|<table|<row|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>>>>>+d<matrix|<tformat|<table|<row|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>,
    </equation*>

    e le quattro coordinate sono le quattro entrate.

    <em|Controllo.> <math|dim M<rsub|2>(K)=4=2\<cdot\>2>.
  </guidato>

  Nel caso infinito il confronto tra basi richiede un'altra idea: due basi
  dello stesso spazio sono <em|equipotenti> (esiste una biiezione fra loro).
  Il corso ha sviluppato il caso finito; il caso generale richiede strumenti
  come l'assioma della scelta.

  <section|Contare invece di verificare>

  Sia <math|dim V=n>. Dal lemma di scambio e dall'esistenza delle basi:

  <\itemize>
    <item>un insieme indipendente ha <strong|al più <math|n>> vettori; quindi
    <math|n+1> vettori sono sempre dipendenti;

    <item>un insieme di generatori ha <strong|almeno <math|n>> vettori
    (contiene una base);

    <item><strong|<math|n> vettori indipendenti sono una base>: completandoli
    con lo scambio devono sostituire <em|tutti> i vettori di una base;

    <item><strong|<math|n> generatori sono una base>: contengono una base,
    che ha già <math|n> elementi;

    <item>(<strong|completamento>) ogni insieme indipendente si estende a una
    base: la base finale del lemma di scambio contiene i <math|w>.
  </itemize>

  <figura|<image|geometria-1-assets/contare.pdf|110.0mm|26.0mm||>|Indipendenti:
  al più <math|n> vettori; generatori: almeno <math|n>; basi: esattamente
  <math|n>.>

  <strong|Sottospazi.> Se <math|W\<subseteq\>V> è un sottospazio, una base di
  <math|W> è indipendente anche in <math|V> e si completa a una base di
  <math|V>: quindi <math|dim W\<leq\>dim V>. Se <math|dim W=dim V=n>, la base
  di <math|W> è fatta di <math|n> vettori indipendenti in <math|V>, quindi è
  una base di <math|V>, e <math|W=V>. Infine, per ogni
  <math|0\<leq\>k\<leq\>n> esistono sottospazi di dimensione <math|k>: lo
  span di <math|k> vettori di una base.

  <\officina|10. Contare invece di verificare>
    Per dimostrare che <math|n> vettori sono una base di uno spazio di
    dimensione <math|n> basta <em|una> delle due proprietà: o l'indipendenza
    o la generazione. Per dimostrare che due sottospazi coincidono basta
    un'inclusione e l'uguaglianza delle dimensioni. Per dimostrare che dei
    vettori sono dipendenti basta contarli, se sono più della dimensione.
    Prima di fare conti, chiediti sempre: \Sconosco la dimensione?\T
  </officina>

  <\guidato|Completare un vettore a una base di <math|\<bbb-R\><rsup|2>>
  (lezione del 14/10)>
    Sia <math|v=(a,b)\<neq\>0>. Completa <math|<around|{|v|}>> a una base di
    <math|\<bbb-R\><rsup|2>>.

    <em|Idea.> Basta un secondo vettore fuori dalla retta di <math|v>: due
    vettori indipendenti in dimensione <math|2> sono una base.

    <em|Conto.> Se <math|a\<neq\>0> prendiamo <math|e<rsub|2>=(0,1)>: da
    <math|\<alpha\>(a,b)+\<beta\>(0,1)=0> la prima coordinata dà
    <math|\<alpha\>a=0>, quindi <math|\<alpha\>=0>, e poi <math|\<beta\>=0>.
    Se <math|a=0>, allora <math|b\<neq\>0> e prendiamo
    <math|e<rsub|1>=(1,0)>.

    <em|Controllo.> Con <math|v=(2,3)>: <math|(2,3),(0,1)> sono indipendenti
    (<math|2\<alpha\>=0>), quindi una base, senza verificare la generazione.
  </guidato>

  <section|Esempi con i polinomi>

  <strong|Gradi distinti, vettori indipendenti.> Se
  <math|p<rsub|1>,\<ldots\>,p<rsub|k>> sono polinomi non nulli di gradi tutti
  diversi, sono indipendenti: in una combinazione nulla il termine di grado
  massimo viene da un solo polinomio, quindi il suo coefficiente è zero; si
  ripete con i rimanenti.

  <\guidato|Sottospazi di <math|\<bbb-R\><rsub|3>[x]> (lezione del 14/10)>
    In <math|\<bbb-R\><rsub|3>[x]> (dimensione <math|4>) trova una base di
    <math|W<rsub|0>=<around|{|p(0)=0|}>>,
    <math|W<rsub|1>=<around|{|p(1)=0|}>>,
    <math|W<rsub|0,1>=<around|{|p(0)=p(1)=0|}>> e
    <math|W=<around|{|p(0)=p(1)|}>>.

    <em|Idea.> Una radice <math|c> vuol dire un fattore <math|x-c> (capitolo
    4).

    <em|Conto.> <math|W<rsub|0>>: <math|p(0)=a<rsub|0>=0>, quindi
    <math|p=a<rsub|1>x+a<rsub|2>x<rsup|2>+a<rsub|3>x<rsup|3>>: base
    <math|x,x<rsup|2>,x<rsup|3>>, dimensione <math|3>.

    <math|W<rsub|1>>: <math|p=(x-1)q> con <math|deg q\<leq\>2>; base
    <math|x-1,x(x-1),x<rsup|2>(x-1)> (gradi <math|1,2,3>, quindi
    indipendenti), dimensione <math|3>. Va bene anche
    <math|x-1,(x-1)<rsup|2>,(x-1)<rsup|3>>.

    <math|W<rsub|0,1>>: <math|p> è divisibile per <math|x> e per <math|x-1>,
    quindi <math|p=x(x-1)(a+b*x)>: base <math|x(x-1),x<rsup|2>(x-1)>,
    dimensione <math|2>.

    <math|W>: <math|L(p)=p(1)-p(0)> è lineare e <math|W> sono gli zeri di
    <math|L>. Dato <math|p\<in\>W>, il polinomio <math|q=p-p(0)> si annulla
    in <math|0> e in <math|1>, quindi <math|q\<in\>W<rsub|0,1>> e
    <math|p=p(0)\<cdot\>1+q>. Base <math|1,x(x-1),x<rsup|2>(x-1)>, dimensione
    <math|3>.

    <em|Controllo.> Ogni condizione lineare non banale ha tolto una
    dimensione: <math|4\<rightarrow\>3>; due condizioni indipendenti:
    <math|4\<rightarrow\>2>.
  </guidato>

  <figura|<image|geometria-1-assets/polinomi01.pdf|82.5mm|30.5mm||>|La base
  di <math|W<rsub|0,1>>: <math|x(x-1)> e <math|x<rsup|2>(x-1)> passano per
  <math|0> e per <math|1>.>

  <\verifica|8>
    <strong|a)> Quattro vettori di <math|\<bbb-R\><rsup|3>> possono essere
    indipendenti? Tre vettori di <math|\<bbb-R\><rsup|3>> possono generare
    <math|\<bbb-R\><rsup|3>>?

    <strong|b)> Trova una base e la dimensione di
    <math|<around|{|p\<in\>\<bbb-R\><rsub|2>[x]\<mid\>p(2)=0|}>>.

    <strong|c)> Qual è la dimensione di <math|\<bbb-C\><rsup|2>> su
    <math|\<bbb-C\>>? E su <math|\<bbb-R\>>?
  </verifica>

  <chapter|Somme e somme dirette>

  <\inbreve>
    L'unione di due sottospazi non è un sottospazio; il modo giusto di
    metterli insieme è la <em|somma> <math|U+W>. Quando i due pezzi si
    toccano solo nell'origine la somma è <em|diretta>: ogni vettore si
    scompone in un solo modo. La formula di Grassmann dice quanto è grande la
    somma: le dimensioni si sommano, meno la parte contata due volte.
  </inbreve>

  <section|La somma di due sottospazi>

  Se <math|U,W> sono sottospazi di <math|V>, la loro <strong|somma> è

  <\equation*>
    U+W=<around|{|u+w\<mid\>u\<in\>U,w\<in\>W|}>.
  </equation*>

  <strong|È un sottospazio.> <math|0=0+0>. Se <math|x=u<rsub|1>+w<rsub|1>> e
  <math|y=u<rsub|2>+w<rsub|2>>, allora <math|x+y=(u<rsub|1>+u<rsub|2>)+(w<rsub|1>+w<rsub|2>)>
  con <math|u<rsub|1>+u<rsub|2>\<in\>U> e <math|w<rsub|1>+w<rsub|2>\<in\>W>;
  e <math|\<lambda\>x=\<lambda\>u<rsub|1>+\<lambda\>w<rsub|1>>.

  <strong|È il più piccolo che contiene entrambi.> <math|U\<subseteq\>U+W>
  (<math|u=u+0>) e <math|W\<subseteq\>U+W> (<math|w=0+w>); e un sottospazio
  che contiene <math|U> e <math|W> contiene tutte le somme <math|u+w>. Quindi
  <math|U+W=<math-up|span>(U\<cup\>W)>. In pratica: <strong|unendo dei
  generatori di <math|U> e dei generatori di <math|W> si ottengono generatori
  di <math|U+W>> (non necessariamente indipendenti).

  <section|Somma diretta>

  La somma è <strong|diretta>, e si scrive <math|U\<oplus\>W>, se
  <math|U\<cap\>W=<around|{|0|}>>.

  <\itemize>
    <item>Due rette distinte per l'origine in <math|\<bbb-R\><rsup|2>>: si
    incontrano solo in <math|0> e insieme generano il piano,
    <math|\<bbb-R\><rsup|2>=U\<oplus\>W>.

    <item>Un piano <math|U> per l'origine in <math|\<bbb-R\><rsup|3>> e una
    retta <math|W> non contenuta in esso:
    <math|\<bbb-R\><rsup|3>=U\<oplus\>W>. Se la retta sta nel piano,
    <math|W\<subseteq\>U> e la somma non è diretta.

    <item>Due piani distinti per l'origine in <math|\<bbb-R\><rsup|3>> si
    tagliano in una retta: la loro somma non è mai diretta.
  </itemize>

  <figura|<image|geometria-1-assets/somma-diretta.pdf|155.0mm|55.0mm||>|A
  sinistra un piano e una retta che si incontrano solo nell'origine: somma
  diretta. A destra due piani che si tagliano lungo una retta: la somma è
  tutto <math|\<bbb-R\><rsup|3>>, ma non è diretta.>

  <strong|Proposizione.> La somma <math|U+W> è diretta se e solo se ogni
  <math|z\<in\>U+W> si scrive <em|in un solo modo> come <math|z=u+w> con
  <math|u\<in\>U>, <math|w\<in\>W>.

  <em|Se l'intersezione è nulla, la scrittura è unica.> Se
  <math|z=u+w=u<rprime|'>+w<rprime|'>>, allora
  <math|u-u<rprime|'>=w<rprime|'>-w>. A sinistra c'è un vettore di <math|U>,
  a destra uno di <math|W>: è un vettore di <math|U\<cap\>W=<around|{|0|}>>.
  Quindi <math|u=u<rprime|'>> e <math|w=w<rprime|'>>.

  <em|Se la scrittura è unica, l'intersezione è nulla.> Se ci fosse
  <math|v\<neq\>0> in <math|U\<cap\>W>, avremmo due scritture diverse
  <math|v=v+0=0+v>.

  <figura|<image|geometria-1-assets/decomposizione.pdf|76.5mm|46.8mm||>|Con
  due rette in somma diretta, ogni vettore <math|z> si scompone in un solo
  modo: si tracciano le parallele alle due rette.>

  <strong|Dividere una famiglia indipendente.> Se
  <math|v<rsub|1>,\<ldots\>,v<rsub|n>> sono indipendenti e li dividiamo in
  due gruppi, <math|U=<math-up|span>(v<rsub|1>,\<ldots\>,v<rsub|h>)> e
  <math|W=<math-up|span>(v<rsub|h+1>,\<ldots\>,v<rsub|n>)>, allora
  <math|<math-up|span>(v<rsub|1>,\<ldots\>,v<rsub|n>)=U\<oplus\>W>. La somma
  è tutto lo span (si separa ogni combinazione nei due gruppi); un vettore
  comune si scriverebbe <math|<big|sum><rsub|i\<leq\>h>\<alpha\><rsub|i>v<rsub|i>=<big|sum><rsub|i\<gtr\>h>\<alpha\><rsub|i>v<rsub|i>>,
  e portando tutto a sinistra l'indipendenza dà <math|\<alpha\><rsub|i>=0>
  per ogni <math|i>.

  <strong|Supplementari.> <math|U> è un <strong|supplementare> di <math|W> in
  <math|V> se <math|V=U\<oplus\>W>. Il supplementare non è unico: in
  <math|\<bbb-R\><rsup|2>> ogni retta per l'origine diversa da <math|W> va
  bene; in <math|\<bbb-R\><rsup|3>> ogni retta fuori dal piano <math|W>.
  Completando una base di <math|W> a una base di <math|V>, i vettori aggiunti
  generano un supplementare.

  <section|Le dimensioni>

  <strong|Somma diretta.> Se <math|U\<cap\>W=<around|{|0|}>>, unendo una base
  <math|u<rsub|1>,\<ldots\>,u<rsub|r>> di <math|U> e una base
  <math|w<rsub|1>,\<ldots\>,w<rsub|s>> di <math|W> si ottiene una base di
  <math|U\<oplus\>W>. Genera, perché <math|z=u+w> e ciascun pezzo si scrive
  nella sua base. È indipendente: da <math|<big|sum>\<alpha\><rsub|i>u<rsub|i>+<big|sum>\<beta\><rsub|j>w<rsub|j>=0>
  si ha <math|<big|sum>\<alpha\><rsub|i>u<rsub|i>=-<big|sum>\<beta\><rsub|j>w<rsub|j>\<in\>U\<cap\>W=<around|{|0|}>>,
  quindi le due somme sono nulle e tutti i coefficienti sono zero. Allora

  <\equation*>
    dim(U\<oplus\>W)=dim U+dim W.
  </equation*>

  <strong|Formula di Grassmann.> In generale

  <\equation*>
    dim(U+W)=dim U+dim W-dim(U\<cap\>W).
  </equation*>

  L'intersezione è contata due volte, una in <math|U> e una in <math|W>, e va
  tolta una volta.

  <em|Dimostrazione.> Siano <math|dim U=n>, <math|dim W=p>,
  <math|dim(U\<cap\>W)=q>. Prendiamo una base
  <math|v<rsub|1>,\<ldots\>,v<rsub|q>> di <math|U\<cap\>W> e completiamola
  due volte: a una base <math|v<rsub|1>,\<ldots\>,v<rsub|q>,u<rsub|q+1>,\<ldots\>,u<rsub|n>>
  di <math|U> e a una base <math|v<rsub|1>,\<ldots\>,v<rsub|q>,w<rsub|q+1>,\<ldots\>,w<rsub|p>>
  di <math|W>. Mostriamo che

  <\equation*>
    \<cal-B\>=(v<rsub|1>,\<ldots\>,v<rsub|q>,u<rsub|q+1>,\<ldots\>,u<rsub|n>,w<rsub|q+1>,\<ldots\>,w<rsub|p>)
  </equation*>

  è una base di <math|U+W>; ha <math|q+(n-q)+(p-q)=n+p-q> vettori.

  <em|Genera.> <math|z=u+w>; scrivendo <math|u> nella base di <math|U> e
  <math|w> in quella di <math|W> e sommando, <math|z> è combinazione dei
  vettori di <math|\<cal-B\>> (i coefficienti dei <math|v<rsub|i>> si
  sommano).

  <em|È indipendente.> Supponiamo <math|<big|sum>\<gamma\><rsub|i>v<rsub|i>+<big|sum>\<alpha\><rsub|i>u<rsub|i>+<big|sum>\<beta\><rsub|j>w<rsub|j>=0>.
  Il vettore <math|x=<big|sum>\<beta\><rsub|j>w<rsub|j>> sta in <math|W>, ed
  è uguale a <math|-<big|sum>\<gamma\><rsub|i>v<rsub|i>-<big|sum>\<alpha\><rsub|i>u<rsub|i>\<in\>U>:
  quindi <math|x\<in\>U\<cap\>W> e si scrive
  <math|x=<big|sum>\<delta\><rsub|i>v<rsub|i>>. Allora
  <math|<big|sum>\<delta\><rsub|i>v<rsub|i>-<big|sum>\<beta\><rsub|j>w<rsub|j>=0>
  è una relazione fra vettori della base di <math|W>: tutti i
  <math|\<beta\><rsub|j>> sono zero. Ciò che resta,
  <math|<big|sum>\<gamma\><rsub|i>v<rsub|i>+<big|sum>\<alpha\><rsub|i>u<rsub|i>=0>,
  è una relazione nella base di <math|U>: anche <math|\<gamma\><rsub|i>> e
  <math|\<alpha\><rsub|i>> sono zero.

  <figura|<image|geometria-1-assets/grassmann.pdf|130.0mm|50.0mm||>|La base
  costruita nella dimostrazione: i vettori <math|v> della parte comune si
  contano una volta sola, gli <math|u> completano verso <math|U>, i <math|w>
  verso <math|W>.>

  <\officina|11. Partire dalla base del pezzo comune>
    Per confrontare due spazi, o uno spazio con un suo sottospazio, prendi
    una base del pezzo più piccolo (l'intersezione, il nucleo, un
    sottospazio) e <em|completala>. Così ogni vettore del pezzo grande si
    separa in una parte \Snel pezzo piccolo\T e una parte \Sfuori\T, e le
    dimensioni si contano da sole. È la dimostrazione di Grassmann; sarà
    anche quella del teorema rango\<#2013\>nullità (capitolo 10).
  </officina>

  <\guidato|Due piani di <math|\<bbb-R\><rsup|3>> (lezione del 13/10)>
    Due piani distinti <math|U,W> per l'origine in <math|\<bbb-R\><rsup|3>>:
    quanto vale <math|dim(U+W)>?

    <em|Idea.> Grassmann, sapendo che due piani distinti si tagliano in una
    retta.

    <em|Conto.> <math|dim(U+W)=2+2-1=3>. Un sottospazio di dimensione
    <math|3> in <math|\<bbb-R\><rsup|3>> è tutto <math|\<bbb-R\><rsup|3>>
    (capitolo 8): <math|U+W=\<bbb-R\><rsup|3>>, ma la somma non è diretta. Un
    piano e una retta trasversale danno invece <math|2+1-0=3> e
    <math|\<bbb-R\><rsup|3>=U\<oplus\>W>.

    <em|Controllo.> Più grande è l'intersezione, più piccola è la somma: due
    piani <em|uguali> danno <math|2+2-2=2>.
  </guidato>

  <section|Matrici simmetriche e antisimmetriche>

  La <strong|trasposta> <math|M<rsup|T>> di una matrice <math|m\<times\>n> è
  la matrice <math|n\<times\>m> con <math|(M<rsup|T>)<rsub|i*j>=m<rsub|j*i>>:
  si scambiano righe e colonne. Una matrice quadrata è <strong|simmetrica> se
  <math|M<rsup|T>=M> (<math|a<rsub|i*j>=a<rsub|j*i>>: la diagonale fa da
  specchio) e <strong|antisimmetrica> se <math|M<rsup|T>=-M>
  (<math|a<rsub|i*j>=-a<rsub|j*i>>). In <math|M<rsub|2>(\<bbb-R\>)>:

  <\equation*>
    <text|simmetrica: ><matrix|<tformat|<table|<row|<cell|a>|<cell|b>>|<row|<cell|b>|<cell|d>>>>>,<space|3em><text|antisimmetrica:
    ><matrix|<tformat|<table|<row|<cell|0>|<cell|b>>|<row|<cell|-b>|<cell|0>>>>>.
  </equation*>

  Entrambe formano sottospazi <math|\<cal-S\><rsub|n>> e
  <math|\<cal-A\><rsub|n>> (somme e multipli conservano le due proprietà).
  Sulla diagonale di un'antisimmetrica <math|a<rsub|i*i>=-a<rsub|i*i>>, cioè
  <math|2a<rsub|i*i>=0>, quindi <math|a<rsub|i*i>=0>: <em|purché
  <math|2\<neq\>0> nel campo> (vero in <math|\<bbb-R\>> e <math|\<bbb-C\>>;
  capitolo 2). Allo stesso modo una matrice simmetrica e antisimmetrica
  insieme ha <math|a<rsub|i*j>=-a<rsub|i*j>>, quindi è nulla:
  <math|\<cal-S\><rsub|n>\<cap\>\<cal-A\><rsub|n>=<around|{|0|}>>. E ogni
  matrice reale quadrata si spezza così:

  <\equation*>
    M=<frac|1|2>(M+M<rsup|T>)+<frac|1|2>(M-M<rsup|T>),
  </equation*>

  dove il primo pezzo è simmetrico (la sua trasposta è
  <math|<frac|1|2>(M<rsup|T>+M)>) e il secondo antisimmetrico (la sua
  trasposta è <math|<frac|1|2>(M<rsup|T>-M)=-<frac|1|2>(M-M<rsup|T>)>).
  Quindi <math|M<rsub|n>(\<bbb-R\>)=\<cal-S\><rsub|n>\<oplus\>\<cal-A\><rsub|n>>,
  e la scomposizione è unica.

  <\guidato|Scomporre una matrice (esempio aggiunto)>
    Scrivi <math|M=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|4>|<cell|3>>>>>>
    come simmetrica più antisimmetrica.

    <em|Idea.> Applicare le due formule.

    <em|Conto.> <math|M<rsup|T>=<matrix|<tformat|<table|<row|<cell|1>|<cell|4>>|<row|<cell|2>|<cell|3>>>>>>.
    <math|S=<frac|1|2>(M+M<rsup|T>)=<matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|3>|<cell|3>>>>>>,
    <math|A=<frac|1|2>(M-M<rsup|T>)=<matrix|<tformat|<table|<row|<cell|0>|<cell|-1>>|<row|<cell|1>|<cell|0>>>>>>.

    <em|Controllo.> <math|S+A=M>; <math|S> è simmetrica, <math|A>
    antisimmetrica. In <math|M<rsub|2>(\<bbb-R\>)>:
    <math|dim<space|0.2em>\<cal-S\><rsub|2>=3>,
    <math|dim<space|0.2em>\<cal-A\><rsub|2>=1>, e <math|3+1=4=dim M<rsub|2>>,
    come vuole la somma diretta.
  </guidato>

  <\attenzione|Una base va dimostrata>
    Negli esercizi \Strova una base di\<ldots\>\T non basta esibire dei
    vettori che sembrano giusti. Bisogna spiegare perché <em|generano> (ogni
    vettore del sottospazio si scrive con loro) e perché sono
    <em|indipendenti> (una combinazione nulla ha tutti i coefficienti nulli),
    oppure usare un conto di dimensioni (officina 10). Usa con cura \Se\T e
    \Soppure\T: devono essere chiare le ipotesi e le conclusioni.
  </attenzione>

  <\verifica|9>
    <strong|a)> In <math|\<bbb-R\><rsup|4>>, <math|dim U=dim W=3>. Quali
    valori può avere <math|dim(U\<cap\>W)>?

    <strong|b)> Trova un supplementare della retta
    <math|<math-up|span>((1,1))> in <math|\<bbb-R\><rsup|2>>.

    <strong|c)> Qual è la dimensione di <math|\<cal-S\><rsub|3>> (matrici
    <math|3\<times\>3> simmetriche reali)?
  </verifica>

  <chapter|Matrici, sistemi e applicazioni lineari>

  <\inbreve>
    Un sistema lineare si scrive in una riga, <math|A*x=b>. Il prodotto
    <math|A*x> si legge in due modi: una riga alla volta (le equazioni) o
    come <em|combinazione delle colonne> di <math|A>. Il secondo modo
    trasforma i sistemi in domande sugli span. Introduciamo le applicazioni
    lineari, il nucleo e l'immagine, e il teorema che lega le loro
    dimensioni.
  </inbreve>

  <section|Il prodotto righe per colonne>

  Se <math|A=(a<rsub|i*j>)\<in\>M<rsub|m,n>(K)> e <math|v\<in\>K<rsup|n>>
  (una colonna, cioè una matrice <math|n\<times\>1>), il prodotto
  <math|A*v\<in\>K<rsup|m>> ha componenti

  <\equation*>
    (A*v)<rsub|i>=<big|sum><rsub|j=1><rsup|n>a<rsub|i*j>v<rsub|j>=a<rsub|i1>v<rsub|1>+\<cdots\>+a<rsub|i*n>v<rsub|n>:
  </equation*>

  si percorre la riga <math|i> di <math|A> e la colonna <math|v>, si
  moltiplicano i termini corrispondenti e si somma. Serve che il numero di
  colonne di <math|A> sia uguale al numero di righe di <math|v>.

  Più in generale, se <math|A\<in\>M<rsub|m,n>(K)> e
  <math|B\<in\>M<rsub|n,p>(K)>, il prodotto <math|A*B\<in\>M<rsub|m,p>(K)> ha
  entrate <math|(A*B)<rsub|i*j>=<big|sum><rsub|k=1><rsup|n>a<rsub|i*k>b<rsub|k*j>>
  (riga <math|i> di <math|A> per colonna <math|j> di <math|B>). La dimensione
  interna deve coincidere; quelle esterne danno il risultato:
  <math|(m\<times\>n)(n\<times\>p)=m\<times\>p>.

  Il prodotto, quando è definito, è associativo, <math|(A*B)C=A(B*C)>, e
  distributivo, <math|A(B+C)=A*B+A*C>, <math|(A+B)C=A*C+B*C>. In generale
  <strong|non è commutativo>:

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>>>>>=<matrix|<tformat|<table|<row|<cell|2>|<cell|1>>|<row|<cell|1>|<cell|0>>>>>,<space|2em><matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|2>>>>>.
  </equation*>

  <section|Sistemi in forma matriciale>

  Un sistema di <math|m> equazioni lineari in <math|n> incognite,

  <\equation*>
    <choice|<tformat|<table|<row|<cell|a<rsub|11>x<rsub|1>+\<cdots\>+a<rsub|1n>x<rsub|n>=b<rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|a<rsub|m1>x<rsub|1>+\<cdots\>+a<rsub|m*n>x<rsub|n>=b<rsub|m>>>>>>
  </equation*>

  (le incognite compaiono solo al primo grado) si scrive <math|A*x=b>, con
  <math|A> la <strong|matrice dei coefficienti>, <math|x\<in\>K<rsup|n>> il
  vettore delle incognite e <math|b\<in\>K<rsup|m>> quello dei termini noti.
  Affiancando <math|b> ad <math|A> si ottiene la <strong|matrice completa>
  <math|(A\|b)>. È solo una notazione più compatta: il contenuto non cambia.
  Se <math|b=0> il sistema è <strong|omogeneo>.

  <section|Due modi di leggere <math|A*x=b>>

  <strong|Per righe.> Ogni equazione in due incognite, se non è degenere, è
  una retta del piano; le soluzioni sono i punti comuni. Due rette possono
  incontrarsi in un punto (una soluzione), essere parallele distinte
  (nessuna) o coincidere (infinite).

  <figura|<image|geometria-1-assets/tre-casi.pdf|131.8mm|38.2mm||>|Lettura
  per righe di un sistema <math|2\<times\>2>: rette incidenti, parallele,
  coincidenti.>

  <strong|Per colonne.> Se <math|A<rsub|1>,\<ldots\>,A<rsub|n>\<in\>K<rsup|m>>
  sono le colonne di <math|A>, allora

  <\equation*>
    A*x=x<rsub|1>A<rsub|1>+x<rsub|2>A<rsub|2>+\<cdots\>+x<rsub|n>A<rsub|n>.
  </equation*>

  Per esempio <math|<matrix|<tformat|<table|<row|<cell|a>|<cell|b>>|<row|<cell|c>|<cell|d>>>>><matrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>>>>=<matrix|<tformat|<table|<row|<cell|a*x<rsub|1>+b*x<rsub|2>>>|<row|<cell|c*x<rsub|1>+d*x<rsub|2>>>>>>=x<rsub|1><matrix|<tformat|<table|<row|<cell|a>>|<row|<cell|c>>>>>+x<rsub|2><matrix|<tformat|<table|<row|<cell|b>>|<row|<cell|d>>>>>>.
  Risolvere <math|A*x=b> vuol dire trovare i coefficienti che combinano le
  colonne per ottenere <math|b>. Quindi

  <\equation*>
    A*x=b<text| ha soluzione><space|1em>\<Leftrightarrow\><space|1em>b\<in\><math-up|span>(A<rsub|1>,\<ldots\>,A<rsub|n>).
  </equation*>

  Ecco il ponte tra sistemi e sottospazi: chiedersi se
  <math|w\<in\><math-up|span>(v<rsub|1>,\<ldots\>,v<rsub|n>)> è risolvere il
  sistema <math|x<rsub|1>v<rsub|1>+\<cdots\>+x<rsub|n>v<rsub|n>=w>, e le
  incognite sono le coordinate di <math|w> rispetto ai generatori, se
  esistono.

  <figura|<image|geometria-1-assets/colonne.pdf|131.8mm|48.9mm||>|A sinistra
  colonne non parallele: ogni <math|b> del piano si raggiunge. A destra
  colonne parallele: lo span è una retta, e un <math|b> fuori non si
  raggiunge.>

  <section|Applicazioni lineari>

  Siano <math|V,V<rprime|'>> spazi vettoriali sullo stesso campo.
  <math|F:V\<rightarrow\>V<rprime|'>> è <strong|lineare> se

  <\equation*>
    F(v+v<rprime|'>)=F(v)+F(v<rprime|'>),<space|2em>F(\<alpha\>v)=\<alpha\>F(v)
  </equation*>

  (a sinistra la somma di <math|V>, a destra quella di <math|V<rprime|'>>).
  Applicando più volte le due regole, <math|F> conserva tutte le
  combinazioni: <math|F(\<alpha\><rsub|1>v<rsub|1>+\<cdots\>+\<alpha\><rsub|r>v<rsub|r>)=\<alpha\><rsub|1>F(v<rsub|1>)+\<cdots\>+\<alpha\><rsub|r>F(v<rsub|r>)>.
  Inoltre <math|F(0)=0>: da <math|F(0)=F(0+0)=F(0)+F(0)> si toglie
  <math|F(0)>.

  Ogni matrice <math|A\<in\>M<rsub|m,n>(K)> dà l'applicazione
  <math|F<rsub|A>:K<rsup|n>\<rightarrow\>K<rsup|m>>, <math|F<rsub|A>(x)=A*x>,
  che è lineare per la distributività: <math|A(x+y)=A*x+A*y> e
  <math|A(\<alpha\>x)=\<alpha\>(A*x)>. Anche la mappa delle coordinate del
  capitolo 8 e <math|p\<mapsto\>p(1)-p(0)> sono lineari.

  <section|Nucleo e immagine>

  Per <math|F:V\<rightarrow\>V<rprime|'>> lineare:

  <\itemize>
    <item>l'<strong|immagine> <math|<math-up|Im>(F)=<around|{|F(v)\<mid\>v\<in\>V|}>\<subseteq\>V<rprime|'>>
    è l'insieme dei vettori raggiunti;

    <item>il <strong|nucleo> <math|ker(F)=<around|{|v\<in\>V\<mid\>F(v)=0|}>\<subseteq\>V>
    è l'insieme dei vettori mandati in zero.
  </itemize>

  <strong|Sono sottospazi.> Nucleo: <math|F(0)=0>; se <math|F(u)=F(v)=0>
  allora <math|F(u+v)=0+0=0> e <math|F(\<alpha\>u)=\<alpha\>0=0>. Immagine:
  <math|0=F(0)>; se <math|w=F(u)> e <math|w<rprime|'>=F(u<rprime|'>)>, allora
  <math|w+w<rprime|'>=F(u+u<rprime|'>)> e <math|\<alpha\>w=F(\<alpha\>u)>.

  Per una matrice:

  <\equation*>
    ker(F<rsub|A>)=<around|{|x\<mid\>A*x=0|}>,<space|2em><math-up|Im>(F<rsub|A>)=<math-up|span>(A<rsub|1>,\<ldots\>,A<rsub|n>).
  </equation*>

  Il nucleo è l'insieme delle soluzioni del sistema omogeneo; l'immagine è lo
  span delle colonne, e <math|A*x=b> è risolubile se e solo se
  <math|b\<in\><math-up|Im>(F<rsub|A>)>.

  <strong|Proposizione.> <math|F> lineare è iniettiva se e solo se
  <math|ker(F)=<around|{|0|}>>.

  <em|Dimostrazione.> Se <math|F> è iniettiva e <math|F(v)=0=F(0)>, allora
  <math|v=0>. Viceversa, se il nucleo è <math|<around|{|0|}>> e
  <math|F(v)=F(v<rprime|'>)>, allora <math|F(v-v<rprime|'>)=F(v)-F(v<rprime|'>)=0>,
  quindi <math|v-v<rprime|'>=0>.

  <section|La forma delle soluzioni>

  <strong|Teorema.> Se <math|\<xi\>> è una soluzione di <math|A*x=b>, allora
  l'insieme <math|S> di tutte le soluzioni è

  <\equation*>
    S=\<xi\>+S<rsub|0>=<around|{|\<xi\>+x<rsub|0>\<mid\>A*x<rsub|0>=0|}>,
  </equation*>

  dove <math|S<rsub|0>=ker(F<rsub|A>)> sono le soluzioni del sistema omogeneo
  associato.

  <em|Dimostrazione (due inclusioni).> Se <math|A*x<rsub|0>=0>, allora
  <math|A(\<xi\>+x<rsub|0>)=b+0=b>. Se <math|A*x=b>, allora
  <math|A(x-\<xi\>)=b-b=0>, quindi <math|x-\<xi\>\<in\>S<rsub|0>> e
  <math|x=\<xi\>+(x-\<xi\>)>.

  L'insieme delle soluzioni è un <strong|traslato> del sottospazio
  <math|S<rsub|0>>: un <em|sottospazio affine>, che in generale non passa per
  l'origine. Conseguenze: se <math|S<rsub|0>=<around|{|0|}>>, un sistema
  compatibile ha una sola soluzione; se <math|S<rsub|0>> è più grande, ogni
  sistema compatibile ha tante soluzioni quante <math|S<rsub|0>>. Risolvere
  un sistema vuol dire quindi: trovare <em|una> soluzione particolare e una
  base di <math|S<rsub|0>>.

  <figura|<image|geometria-1-assets/traslato.pdf|85.0mm|39.5mm||>|Le
  soluzioni di <math|A*x=b> sono la parallela a <math|ker A> passante per una
  soluzione particolare <math|\<xi\>>.>

  <\officina|12. La differenza di due soluzioni>
    Quando due oggetti hanno la stessa immagine tramite un'applicazione
    lineare, <em|sottrai>: la differenza va in zero, cioè sta nel nucleo.
    Così si dimostra che un nucleo nullo dà l'iniettività, che le soluzioni
    di <math|A*x=b> sono <math|\<xi\>+ker>, e (capitolo 9) che una somma
    diretta ha scomposizioni uniche. Linearità più sottrazione trasformano
    \Sdue cose uguali\T in \Suna cosa nulla\T.
  </officina>

  <section|Rango e teorema delle dimensioni>

  Il <strong|rango> di <math|A> è la dimensione dello spazio generato dalle
  colonne:

  <\equation*>
    <math-up|rank>(A)=dim<space|0.2em><math-up|span>(A<rsub|1>,\<ldots\>,A<rsub|n>)=dim<space|0.2em><math-up|Im>(F<rsub|A>).
  </equation*>

  Non è solo un'uguaglianza di numeri: lo span delle colonne e l'immagine
  sono lo stesso sottospazio di <math|K<rsup|m>>.

  <strong|Teorema (rango\<#2013\>nullità).> Se
  <math|F:V\<rightarrow\>V<rprime|'>> è lineare e <math|V> ha dimensione
  finita,

  <\equation*>
    dim V=dim ker(F)+dim<space|0.2em><math-up|Im>(F).
  </equation*>

  <em|Dimostrazione.> Sia <math|v<rsub|1>,\<ldots\>,v<rsub|k>> una base del
  nucleo; completiamola a una base <math|v<rsub|1>,\<ldots\>,v<rsub|n>> di
  <math|V> (officina 11). Mostriamo che <math|F(v<rsub|k+1>),\<ldots\>,F(v<rsub|n>)>
  è una base dell'immagine.

  <em|Generano.> Se <math|w=F(v)> e <math|v=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>v<rsub|i>>,
  allora <math|w=<big|sum>\<alpha\><rsub|i>F(v<rsub|i>)>, e i primi <math|k>
  termini sono nulli: <math|w=<big|sum><rsub|i\<gtr\>k>\<alpha\><rsub|i>F(v<rsub|i>)>.

  <em|Sono indipendenti.> Se <math|<big|sum><rsub|i\<gtr\>k>\<alpha\><rsub|i>F(v<rsub|i>)=0>,
  allora <math|F(<big|sum><rsub|i\<gtr\>k>\<alpha\><rsub|i>v<rsub|i>)=0>,
  quindi <math|u=<big|sum><rsub|i\<gtr\>k>\<alpha\><rsub|i>v<rsub|i>> sta nel
  nucleo e si scrive <math|u=<big|sum><rsub|i\<leq\>k>\<beta\><rsub|i>v<rsub|i>>.
  Allora <math|<big|sum><rsub|i\<leq\>k>\<beta\><rsub|i>v<rsub|i>-<big|sum><rsub|i\<gtr\>k>\<alpha\><rsub|i>v<rsub|i>=0>
  è una relazione fra vettori della base di <math|V>: tutti i coefficienti
  sono nulli, in particolare gli <math|\<alpha\><rsub|i>>.

  Quindi <math|dim<space|0.2em><math-up|Im>(F)=n-k=dim V-dim ker(F)>.

  <figura|<image|geometria-1-assets/rango-nullita.pdf|110.0mm|40.0mm||>|La
  base di <math|V> si divide in un blocco che va in <math|0> e un blocco che
  va in una base dell'immagine.>

  Per una matrice <math|A\<in\>M<rsub|m,n>(K)>, con <math|V=K<rsup|n>>:

  <\equation*>
    dim S<rsub|0>=dim ker(F<rsub|A>)=n-<math-up|rank>(A),
  </equation*>

  dove <math|n> è il numero di <em|colonne> (di incognite). È il numero di
  parametri liberi delle soluzioni omogenee. Se <math|<math-up|rank>(A)=n>
  l'unica soluzione omogenea è <math|0>; se <math|<math-up|rank>(A)\<less\>n>
  ce ne sono infinite (su un campo infinito).

  <\guidato|Nucleo e immagine di una matrice <math|3\<times\>3> (lezione del
  22/10)>
    Trova nucleo e immagine di <math|F:\<bbb-R\><rsup|3>\<rightarrow\>\<bbb-R\><rsup|3>>,
    <math|F(x)=A*x>, con <math|A=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|4>|<cell|5>|<cell|6>>|<row|<cell|7>|<cell|8>|<cell|9>>>>>>.

    <em|Idea.> Il nucleo è il sistema omogeneo; l'immagine è lo span delle
    colonne. Le dimensioni devono sommare a <math|3>.

    <em|Conto.> Nucleo: <math|x<rsub|1>+2x<rsub|2>+3x<rsub|3>=0>,
    <math|4x<rsub|1>+5x<rsub|2>+6x<rsub|3>=0>,
    <math|7x<rsub|1>+8x<rsub|2>+9x<rsub|3>=0>. Togliendo dalla seconda
    <math|4> volte la prima: <math|-3x<rsub|2>-6x<rsub|3>=0>, cioè
    <math|x<rsub|2>=-2x<rsub|3>>; allora <math|x<rsub|1>=-2x<rsub|2>-3x<rsub|3>=x<rsub|3>>.
    La terza è la seconda più (seconda meno prima), quindi non aggiunge
    nulla. <math|ker F=<math-up|span>((1,-2,1))>, di dimensione <math|1>.

    Immagine: le colonne sono <math|A<rsub|1>=(1,4,7)>,
    <math|A<rsub|2>=(2,5,8)>, <math|A<rsub|3>=(3,6,9)=2A<rsub|2>-A<rsub|1>>.
    Quindi <math|<math-up|Im> F=<math-up|span>(A<rsub|1>,A<rsub|2>)>, di
    dimensione <math|2> (non sono multipli). <math|A<rsub|1>> e
    <math|A<rsub|2>> soddisfano <math|x-2y+z=0> (<math|1-8+7=0>,
    <math|2-10+8=0>); il piano <math|x-2y+z=0> ha dimensione <math|2> e
    contiene <math|<math-up|Im> F>, quindi coincide con <math|<math-up|Im> F>
    (officina 10).

    <em|Controllo.> <math|1+2=3=dim<space|0.2em>\<bbb-R\><rsup|3>>; e
    <math|A(1,-2,1)<rsup|T>=(1-4+3,4-10+6,7-16+9)=(0,0,0)>.
  </guidato>

  <\verifica|10>
    <strong|a)> Se <math|A\<in\>M<rsub|3,5>(\<bbb-R\>)> ha rango <math|3>,
    quanto vale <math|dim ker F<rsub|A>>? <math|A*x=b> ha soluzione per ogni
    <math|b>?

    <strong|b)> Un'applicazione lineare <math|\<bbb-R\><rsup|3>\<rightarrow\>\<bbb-R\><rsup|2>>
    può essere iniettiva?

    <strong|c)> Sapendo che <math|\<xi\>=(1,0,0)> risolve <math|A*x=(1,4,7)>
    con la matrice dell'ultimo esercizio, scrivi tutte le soluzioni.
  </verifica>

  <chapter|L'eliminazione di Gauss>

  <\inbreve>
    Un sistema \Sa scala\T si risolve dal basso verso l'alto, una variabile
    alla volta. L'algoritmo di Gauss porta qualunque sistema in quella forma
    con tre mosse che non cambiano le soluzioni. Con lo stesso strumento
    decidiamo se un vettore sta in uno span, troviamo basi, equazioni,
    intersezioni e somme di sottospazi.
  </inbreve>

  <section|Matrici a scala>

  Una matrice è <strong|a scala> se

  <\enumerate>
    <item>le righe nulle, se ci sono, stanno in fondo;

    <item>la prima entrata non nulla di ogni riga (il <strong|pivot>) sta più
    a destra del pivot della riga precedente;

    <item>sotto ogni pivot ci sono solo zeri.
  </enumerate>

  A destra e sopra i pivot le entrate sono qualsiasi. Una matrice <em|non> è
  a scala se, per esempio, la seconda e la terza riga cominciano nella stessa
  colonna.

  <figura|<image|geometria-1-assets/scala.pdf|95.0mm|50.0mm||>|Una matrice a
  scala: i pivot <math|p\<neq\>0> scendono a gradini verso destra; sotto la
  linea ci sono solo zeri; <math|\<ast\>> sono entrate qualsiasi.>

  <strong|Risolvere un sistema a scala.> Si parte dall'ultima equazione non
  nulla e si risale. Le incognite delle colonne con pivot (<strong|variabili
  pivot>) si ricavano; quelle delle colonne senza pivot sono <strong|libere>:
  si fissano come parametri. Per esempio

  <\equation*>
    <choice|<tformat|<table|<row|<cell|2x<rsub|1>+x<rsub|2>-2x<rsub|3>=2>>|<row|<cell|x<rsub|2>-2x<rsub|3>=3>>>>>
  </equation*>

  ha pivot nelle colonne di <math|x<rsub|1>> e <math|x<rsub|2>>;
  <math|x<rsub|3>> è libera. Dalla seconda <math|x<rsub|2>=3+2x<rsub|3>>;
  sostituendo nella prima <math|2x<rsub|1>+3=2>, cioè
  <math|x<rsub|1>=-<frac|1|2>>. Le soluzioni sono
  <math|(-<frac|1|2>,3+2t,t)>, <math|t\<in\>K>. Quale variabile chiamare
  \Slibera\T dipende dalla forma a scala scelta: la stessa famiglia di
  soluzioni si può scrivere con parametri diversi.

  <strong|Quando non c'è soluzione.> Un sistema a scala è impossibile
  esattamente quando la matrice completa ha una riga <math|(0\<cdots\>0\|c)>
  con <math|c\<neq\>0>, cioè l'equazione <math|0=c>: un <em|pivot nella
  colonna dei termini noti>. Per esempio

  <\equation*>
    <matrix|<tformat|<cwith|1|-1|3|3|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>>>>><space|2em>\<leadsto\><space|2em>x<rsub|1>+2x<rsub|2>=3,<space|1em>x<rsub|2>=1,<space|1em>0=1.
  </equation*>

  Se una riga così non c'è, il sistema a scala si risolve sempre.

  <section|Le operazioni elementari di riga>

  Sulla matrice completa <math|(A\|b)> si possono fare tre <strong|operazioni
  elementari di riga>:

  <\enumerate>
    <item>scambiare due righe;

    <item>moltiplicare una riga per uno scalare <math|\<lambda\>\<neq\>0>;

    <item>sostituire la riga <math|R<rsub|j>> con
    <math|R<rsub|j>+\<lambda\>R<rsub|k>>, <math|k\<neq\>j>.
  </enumerate>

  <figura|<image|geometria-1-assets/elementari.pdf|144.0mm|33.8mm||>|Le tre
  operazioni elementari di riga. In grigio le righe che cambiano.>

  <strong|Non cambiano le soluzioni.> Scambiare due equazioni non ne cambia
  il contenuto. Moltiplicare per <math|\<lambda\>\<neq\>0> si annulla
  moltiplicando per <math|\<lambda\><rsup|-1>> (con <math|\<lambda\>=0>
  l'equazione diventerebbe <math|0=0> e si perderebbe informazione). Chi
  soddisfa <math|R<rsub|j>> e <math|R<rsub|k>> soddisfa anche
  <math|R<rsub|j>+\<lambda\>R<rsub|k>>, e l'operazione si annulla con
  <math|R<rsub|j>-\<lambda\>R<rsub|k>>. Ogni mossa è <em|reversibile>, quindi
  le soluzioni restano le stesse in entrambe le direzioni.

  <strong|Non cambiano lo span delle righe.> Uno scambio riordina i
  generatori; <math|\<lambda\>R<rsub|j>> e <math|R<rsub|j>> generano la
  stessa retta. Per la terza mossa, se <math|S> e <math|S<rprime|'>> sono gli
  span delle righe prima e dopo: la nuova riga
  <math|R<rsub|j>+\<lambda\>R<rsub|k>> sta in <math|S>, quindi
  <math|S<rprime|'>\<subseteq\>S>; e <math|R<rsub|j>=(R<rsub|j>+\<lambda\>R<rsub|k>)-\<lambda\>R<rsub|k>>
  sta in <math|S<rprime|'>>, quindi <math|S\<subseteq\>S<rprime|'>>.

  <\attenzione|Lo span delle colonne invece cambia>
    Le operazioni di riga possono cambiare lo span delle <em|colonne>. Con
    <math|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>> e la
    mossa <math|R<rsub|2>\<leftarrow\>R<rsub|2>-R<rsub|1>> si ottiene
    <math|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>>>>>: la
    colonna generava la retta di <math|(1,1)>, ora quella di <math|(1,0)>.
    Gauss serve a capire <em|quali> colonne sono indipendenti (le posizioni
    dei pivot), ma lo span delle colonne va preso dalla matrice
    <em|originale>. Le operazioni di colonna hanno il comportamento opposto:
    conservano lo span delle colonne, non quello delle righe.
  </attenzione>

  <section|L'algoritmo>

  Gauss porta ogni matrice a scala, lavorando su rettangoli sempre più
  piccoli.

  <\enumerate>
    <item>Cerca la prima colonna non nulla (le colonne tutte nulle si
    saltano).

    <item>Se serve, scambia le righe per avere in alto un elemento
    <math|a\<neq\>0>: sarà il pivot (volendo, si divide la riga per <math|a>
    per avere pivot <math|1>).

    <item>Annulla tutto sotto il pivot: per ogni riga <math|i> sotto,
    <math|R<rsub|i>\<leftarrow\>R<rsub|i>-<frac|a<rsub|i1>|a>R<rsub|1>> (la
    nuova prima entrata è <math|a<rsub|i1>-<frac|a<rsub|i1>|a>a=0>).

    <item>La prima riga e la colonna del pivot non si toccano più (non si
    cancellano: si mettono da parte). Ripeti sul rettangolo sotto e a destra
    del pivot.
  </enumerate>

  Quando si lavora su un rettangolo interno, \S<math|a<rsub|11>>\T indica la
  sua prima entrata, non quella della matrice originale: tieni distinti gli
  indici dei due livelli.

  <figura|<image|geometria-1-assets/gauss-passi.pdf|155.0mm|37.5mm||>|L'algoritmo
  è ricorsivo: sistemato un pivot e gli zeri sotto di esso, si ripete sul
  rettangolo grigio rimasto.>

  <\guidato|Gauss con uno scambio di righe (esempio aggiunto)>
    Risolvi <math|x<rsub|2>+x<rsub|3>=1>,
    <math|x<rsub|1>+2x<rsub|2>+x<rsub|3>=2>,
    <math|2x<rsub|1>+3x<rsub|2>+x<rsub|3>=3>.

    <em|Idea.> In alto a sinistra c'è uno <math|0>: prima uno scambio, poi le
    eliminazioni.

    <em|Conto.>

    <\equation*>
      <matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|2>|<cell|3>|<cell|1>|<cell|3>>>>><above|\<longrightarrow\>|R<rsub|1>\<leftrightarrow\>R<rsub|2>><matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|3>|<cell|1>|<cell|3>>>>><above|\<longrightarrow\>|R<rsub|3>-2R<rsub|1>><matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|-1>|<cell|-1>|<cell|-1>>>>><above|\<longrightarrow\>|R<rsub|3>+R<rsub|2>><matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>.
    </equation*>

    Nessuna riga <math|0=c>: il sistema è compatibile. Pivot nelle colonne
    <math|1,2>; <math|x<rsub|3>=t> libera. <math|x<rsub|2>=1-t>,
    <math|x<rsub|1>=2-2(1-t)-t=t>. Soluzioni: <math|(0,1,0)+t(1,-1,1)>.

    <em|Controllo.> Con <math|t=1>, <math|(1,0,1)>: <math|0+1=1>,
    <math|1+0+1=2>, <math|2+0+1=3>. E <math|(1,-1,1)> risolve l'omogeneo,
    come vuole <math|S=\<xi\>+S<rsub|0>> (capitolo 10).
  </guidato>

  <section|Che cosa dice una forma a scala>

  Sia <math|(A\|b)> ridotta a scala, con <math|n> incognite e <math|k> pivot
  nella parte dei coefficienti.

  <\itemize>
    <item><strong|Esistenza>: c'è soluzione se e solo se non c'è un pivot
    nella colonna dei termini noti, cioè se il numero di righe non nulle di
    <math|(A\|b)> è uguale a quello di <math|A>.

    <item><strong|Unicità>: se compatibile e <math|k=n> (un pivot per ogni
    incognita), la soluzione è unica.

    <item><strong|Parametri>: se compatibile e <math|k\<less\>n>, ci sono
    <math|n-k> variabili libere: le soluzioni dipendono da <math|n-k>
    parametri. Su un campo infinito sono infinite; su un campo finito con
    <math|q> elementi sono esattamente <math|q<rsup|n-k>>.
  </itemize>

  <\guidato|Due variabili libere (lezione del 22/10)>
    Risolvi <math|x<rsub|1>+x<rsub|2>-x<rsub|3>+2x<rsub|4>=2>,
    <math|x<rsub|3>+x<rsub|4>=-1>.

    <em|Idea.> È già a scala: <math|<matrix|<tformat|<cwith|1|-1|5|5|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|1>|<cell|-1>|<cell|2>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|-1>>>>>>.
    Pivot nelle colonne <math|1> e <math|3>; libere <math|x<rsub|2>=s> e
    <math|x<rsub|4>=t>.

    <em|Conto.> <math|x<rsub|3>=-1-t>; <math|x<rsub|1>=2-s+x<rsub|3>-2t=2-s-1-t-2t=1-s-3t>.
    Raccogliendo i parametri:

    <\equation*>
      x=<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-1>>|<row|<cell|0>>>>>+s<matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>+t<matrix|<tformat|<table|<row|<cell|-3>>|<row|<cell|0>>|<row|<cell|-1>>|<row|<cell|1>>>>>.
    </equation*>

    <em|Controllo.> <math|n-k=4-2=2> parametri. Con <math|s=t=0>:
    <math|1+0+1+0=2> e <math|-1+0=-1>.
  </guidato>

  <section|Gauss al lavoro sui sottospazi>

  <strong|Un vettore sta in uno span?> Per sapere se
  <math|w\<in\><math-up|span>(v<rsub|1>,\<ldots\>,v<rsub|k>)> si riduce
  <math|(v<rsub|1>\<cdots\>v<rsub|k>\|w)>: <math|w> sta nello span se e solo
  se non compare una riga <math|0=c\<neq\>0>. Con un <math|w> <em|generico>
  si ottengono le <em|equazioni> dello span.

  <\guidato|Dai generatori all'equazione (lezione del 22/10)>
    Trova un'equazione di <math|<math-up|span>(v<rsub|1>,v<rsub|2>)> con
    <math|v<rsub|1>=(1,-1,0)> e <math|v<rsub|2>=(0,1,-1)>.

    <em|Idea.> Ridurre con un termine noto generico <math|w=(x,y,z)> e
    imporre che l'ultima riga non sia impossibile.

    <em|Conto.>

    <\equation*>
      <matrix|<tformat|<cwith|1|-1|3|3|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|0>|<cell|x>>|<row|<cell|-1>|<cell|1>|<cell|y>>|<row|<cell|0>|<cell|-1>|<cell|z>>>>><above|\<longrightarrow\>|R<rsub|2>+R<rsub|1>><matrix|<tformat|<cwith|1|-1|3|3|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|0>|<cell|x>>|<row|<cell|0>|<cell|1>|<cell|x+y>>|<row|<cell|0>|<cell|-1>|<cell|z>>>>><above|\<longrightarrow\>|R<rsub|3>+R<rsub|2>><matrix|<tformat|<cwith|1|-1|3|3|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|0>|<cell|x>>|<row|<cell|0>|<cell|1>|<cell|x+y>>|<row|<cell|0>|<cell|0>|<cell|x+y+z>>>>>.
    </equation*>

    L'ultima riga dice <math|0=x+y+z>: <math|w\<in\><math-up|span>(v<rsub|1>,v<rsub|2>)\<Leftrightarrow\>x+y+z=0>.
    È un'<em|equazione cartesiana> del piano.

    <em|Controllo.> <math|1-1+0=0> e <math|0+1-1=0>; il vettore
    <math|(1,1,-2)> soddisfa l'equazione, e infatti
    <math|(1,1,-2)=v<rsub|1>+2v<rsub|2>>.
  </guidato>

  <figura|<image|geometria-1-assets/piano-span.pdf|72.0mm|48.0mm||>|Il piano
  generato da <math|v<rsub|1>> e <math|v<rsub|2>> è il piano <math|x+y+z=0>:
  due descrizioni dello stesso sottospazio, con generatori e con
  un'equazione.>

  <strong|Una base da equazioni.> Per <math|W=<around|{|x\<mid\>A*x=0|}>>: si
  riduce <math|A> a scala, si dà un parametro a ogni variabile libera, si
  esprimono le variabili pivot, si raccolgono i parametri. I vettori che
  moltiplicano i parametri generano <math|W> e sono indipendenti (ognuno ha
  un <math|1> nella posizione della \Ssua\T variabile libera, dove gli altri
  hanno <math|0>): sono una base, tanti quante le variabili libere.

  <\guidato|Una base di un sottospazio di <math|\<bbb-R\><rsup|4>> (lezione
  del 22/10)>
    Trova una base di <math|W=<around|{|x\<in\>\<bbb-R\><rsup|4>\<mid\>x<rsub|1>+2x<rsub|2>=0,x<rsub|3>-x<rsub|4>=0|}>>.

    <em|Idea.> La matrice <math|<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-1>>>>>>
    è già a scala; libere <math|x<rsub|2>=t>, <math|x<rsub|4>=u>.

    <em|Conto.> <math|x<rsub|1>=-2t>, <math|x<rsub|3>=u>:
    <math|x=t(-2,1,0,0)+u(0,0,1,1)>. Base: <math|(-2,1,0,0),(0,0,1,1)>;
    <math|dim W=2>.

    <em|Controllo.> Rango\<#2013\>nullità: <math|4-2=2>.
  </guidato>

  <strong|Indipendenza e rango.> <math|v<rsub|1>,\<ldots\>,v<rsub|k>\<in\>K<rsup|n>>
  sono indipendenti se e solo se <math|(v<rsub|1>\<cdots\>v<rsub|k>)\<lambda\>=0>
  ha solo la soluzione nulla, cioè se dopo Gauss <em|ogni colonna ha un
  pivot>. Una colonna senza pivot dà una variabile libera, quindi una
  combinazione nulla non banale. Le colonne pivot della matrice originale
  sono una sottofamiglia indipendente che genera lo stesso span: così si
  estrae una base da un insieme di generatori.

  <strong|Intersezione e somma.> Per l'<em|intersezione> si mettono insieme
  le <em|equazioni>: <math|<around|{|A<rsub|1>x=0|}>\<cap\><around|{|A<rsub|2>x=0|}>>
  è il sistema con tutte le righe di <math|A<rsub|1>> e di <math|A<rsub|2>>.
  Per la <em|somma> si mettono insieme i <em|generatori>:
  <math|<math-up|span>(v<rsub|1>,\<ldots\>,v<rsub|r>)+<math-up|span>(w<rsub|1>,\<ldots\>,w<rsub|s>)=<math-up|span>(v<rsub|1>,\<ldots\>,v<rsub|r>,w<rsub|1>,\<ldots\>,w<rsub|s>)>,
  e Gauss elimina i doppioni. Se un sottospazio è dato con generatori e
  l'altro con equazioni, conviene prima tradurre.

  <\officina|13. Che cosa non cambia>
    Davanti a un procedimento che trasforma un oggetto, chiediti che cosa
    resta <em|invariato>. Le operazioni di riga conservano le soluzioni e lo
    span delle righe, non lo span delle colonne. Ogni volta che usi Gauss per
    rispondere a una domanda, controlla che la risposta dipenda solo da ciò
    che è invariato: le soluzioni sì, i vettori colonna della matrice ridotta
    no.
  </officina>

  <\verifica|11>
    <strong|a)> La matrice <math|<matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|4>>>>>>
    è a scala? Se no, riducila.

    <strong|b)> <math|(1,2,3)> sta in <math|<math-up|span>((1,-1,0),(0,1,-1))>?

    <strong|c)> Un sistema di <math|3> equazioni in <math|5> incognite,
    compatibile, con <math|3> pivot: da quanti parametri dipendono le
    soluzioni?
  </verifica>

  <chapter|Il rango e le matrici elementari>

  <\inbreve>
    Il rango misura quante colonne indipendenti ha una matrice. Lo calcoliamo
    contando i pivot, e scopriamo che coincide con il numero di righe
    indipendenti. Il teorema di Rouché\<#2013\>Capelli dice quando un sistema
    ha soluzione. Infine le operazioni di riga diventano moltiplicazioni per
    matrici invertibili.
  </inbreve>

  <section|Rouché\<#2013\>Capelli>

  Sia <math|A\<in\>M<rsub|m,n>(K)> con colonne
  <math|a<rsub|1>,\<ldots\>,a<rsub|n>>, e <math|<wide|A|~>=(A\|b)> la matrice
  completa.

  <strong|Teorema (Rouché\<#2013\>Capelli).> <math|A*x=b> ha soluzione se e
  solo se <math|<math-up|rank>(A)=<math-up|rank>(<wide|A|~>)>.

  Serve un'osservazione: <em|<math|v\<in\><math-up|span>(v<rsub|1>,\<ldots\>,v<rsub|m>)>
  se e solo se <math|<math-up|span>(v<rsub|1>,\<ldots\>,v<rsub|m>,v)=<math-up|span>(v<rsub|1>,\<ldots\>,v<rsub|m>)>>.
  Lo span senza <math|v> è sempre contenuto in quello con <math|v> (basta il
  coefficiente <math|0> davanti a <math|v>). Se
  <math|v=<big|sum>\<beta\><rsub|i>v<rsub|i>>, sostituendo, ogni combinazione
  di <math|v<rsub|1>,\<ldots\>,v<rsub|m>,v> diventa una combinazione dei soli
  <math|v<rsub|i>>: gli span coincidono. Viceversa, se gli span coincidono,
  <math|v> (che sta nel primo) sta nel secondo.

  <em|Dimostrazione del teorema.> <math|A*x=b> è risolubile
  <math|\<Leftrightarrow\>b\<in\><math-up|span>(a<rsub|1>,\<ldots\>,a<rsub|n>)\<Leftrightarrow\><math-up|span>(a<rsub|1>,\<ldots\>,a<rsub|n>,b)=<math-up|span>(a<rsub|1>,\<ldots\>,a<rsub|n>)>.
  Il primo span contiene il secondo; sono uguali se e solo se hanno la stessa
  dimensione (capitolo 8), cioè <math|<math-up|rank>(<wide|A|~>)=<math-up|rank>(A)>.

  <figura|<image|geometria-1-assets/rouche.pdf|127.5mm|44.6mm||>|Aggiungere
  <math|b> alle colonne non deve far crescere il rango. A sinistra <math|b>
  sta nel piano delle colonne: compatibile. A destra ne esce: il rango sale e
  il sistema è impossibile.>

  Con la formula del capitolo 10, la soluzione generale di un sistema
  compatibile è <math|x=\<xi\>+t<rsub|1>v<rsub|1>+\<cdots\>+t<rsub|k>v<rsub|k>>,
  dove <math|\<xi\>> è una soluzione particolare,
  <math|v<rsub|1>,\<ldots\>,v<rsub|k>> una base delle soluzioni omogenee e
  <math|k=n-<math-up|rank>(A)>. Il sistema omogeneo dà la <em|direzione>, la
  soluzione particolare il <em|punto di partenza>.

  <section|Il rango si conta con i pivot>

  <strong|Vettori a scala sono indipendenti.> Siano
  <math|v<rsub|1>,\<ldots\>,v<rsub|k>> non nulli \Sa scala\T: la posizione
  del pivot avanza da un vettore al successivo, e gli altri vettori hanno
  <math|0> nella posizione del pivot di <math|v<rsub|k>>. In una combinazione
  nulla <math|x<rsub|1>v<rsub|1>+\<cdots\>+x<rsub|k>v<rsub|k>=0>, quella
  coordinata dà <math|x<rsub|k>p<rsub|k>=0> con <math|p<rsub|k>\<neq\>0>,
  quindi <math|x<rsub|k>=0>; poi la coordinata del pivot di
  <math|v<rsub|k-1>> dà <math|x<rsub|k-1>=0>, e così via a ritroso (officina
  8).

  <strong|Rango di una matrice a scala.> Se <math|S> è a scala con <math|k>
  righe non nulle, le sue <math|k> colonne pivot sono vettori a scala, quindi
  indipendenti. Tutte le colonne di <math|S> hanno zeri dalla riga <math|k+1>
  in giù, quindi stanno in <math|<math-up|span>(e<rsub|1>,\<ldots\>,e<rsub|k>)>,
  che ha dimensione <math|k>. Allora le <math|k> colonne pivot sono una base
  dello span delle colonne:

  <\equation*>
    <math-up|rank>(S)=<text|numero di pivot>=<text|numero di righe non
    nulle>.
  </equation*>

  <strong|Gauss non cambia il rango.> Se <math|S> si ottiene da <math|A> con
  operazioni di riga, i sistemi <math|A*x=0> e <math|S*x=0> hanno le stesse
  soluzioni. Per rango\<#2013\>nullità <math|n-<math-up|rank>(A)=n-<math-up|rank>(S)>,
  quindi <math|<math-up|rank>(A)=<math-up|rank>(S)>. <strong|Il rango di una
  matrice è il numero di pivot di una sua forma a scala.>

  <\guidato|Il rango con Gauss (esempio aggiunto)>
    Calcola il rango di <math|A=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|4>|<cell|5>|<cell|6>>|<row|<cell|7>|<cell|8>|<cell|9>>>>>>.

    <em|Idea.> Ridurre a scala e contare i pivot.

    <em|Conto.> <math|R<rsub|2>-4R<rsub|1>> e <math|R<rsub|3>-7R<rsub|1>>
    danno <math|<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|-3>|<cell|-6>>|<row|<cell|0>|<cell|-6>|<cell|-12>>>>>>;
    poi <math|R<rsub|3>-2R<rsub|2>> dà <math|<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|-3>|<cell|-6>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>.
    Due pivot: <math|<math-up|rank>(A)=2>.

    <em|Controllo.> È il risultato del capitolo 10: immagine di dimensione
    <math|2>, nucleo di dimensione <math|3-2=1>. Le colonne pivot sono la
    prima e la seconda: <math|A<rsub|1>,A<rsub|2>> sono una base dello span
    delle colonne di <math|A> (le colonne originali, non quelle ridotte).
  </guidato>

  <section|Rango per righe e rango per colonne>

  Il <strong|rango per righe> <math|<math-up|rank><rsub|<math-up|righe>>(A)>
  è la dimensione dello span delle righe (vettori di <math|K<rsup|n>>); il
  rango per colonne, quello visto finora, è la dimensione dello span delle
  colonne (vettori di <math|K<rsup|m>>). Vivono in spazi diversi, eppure:

  <\equation*>
    <math-up|rank><rsub|<math-up|righe>>(A)=<math-up|rank><rsub|<math-up|col>>(A).
  </equation*>

  <em|Dimostrazione.> Per una matrice a scala <math|S> con <math|k> pivot: le
  colonne pivot danno <math|<math-up|rank><rsub|<math-up|col>>(S)=k>; le
  <math|k> righe non nulle sono vettori a scala, quindi indipendenti, e
  <math|<math-up|rank><rsub|<math-up|righe>>(S)=k>. Le operazioni di riga non
  cambiano lo span delle righe (capitolo 11), quindi
  <math|<math-up|rank><rsub|<math-up|righe>>(A)=<math-up|rank><rsub|<math-up|righe>>(S)>;
  e non cambiano il rango per colonne (sezione precedente). Mettendo insieme:
  <math|<math-up|rank><rsub|<math-up|righe>>(A)=<math-up|rank><rsub|<math-up|righe>>(S)=<math-up|rank><rsub|<math-up|col>>(S)=<math-up|rank><rsub|<math-up|col>>(A)>.

  <strong|Conseguenze.> <math|<math-up|rank>(A)\<leq\>m> (righe) e
  <math|<math-up|rank>(A)\<leq\>n> (colonne), quindi
  <math|<math-up|rank>(A)\<leq\>min<around|{|m,n|}>>. E
  <math|<math-up|rank>(A)=<math-up|rank>(A<rsup|T>)>: le righe di <math|A>
  sono le colonne di <math|A<rsup|T>>.

  <\officina|14. Due strade per lo stesso numero>
    Per dimostrare che due numeri definiti in modo diverso sono uguali, cerca
    un caso semplice in cui si calcolano entrambi, e un procedimento che
    porta ogni caso a quello semplice <em|senza cambiare nessuno dei due>.
    Qui il caso semplice è la matrice a scala, e il procedimento è Gauss, che
    conserva sia lo span delle righe sia (tramite le soluzioni omogenee) il
    rango per colonne.
  </officina>

  <section|Matrici elementari>

  Ogni operazione di riga su <math|A\<in\>M<rsub|m,n>(K)> è il prodotto a
  sinistra per una matrice <math|m\<times\>m>. L'idea:
  <math|e<rsub|i><rsup|T>A> è la riga <math|i> di <math|A>
  (<math|e<rsub|i><rsup|T>> è la riga con <math|1> al posto <math|i>), quindi
  la riga <math|i> di <math|P*A> è \Sla riga <math|i> di <math|P> che combina
  le righe di <math|A>\T.

  <\itemize>
    <item><strong|Scambio>: <math|P<rsub|i*j>> è l'identità con le righe
    <math|i> e <math|j> scambiate; <math|P<rsub|i*j>A> scambia le righe
    <math|i> e <math|j> di <math|A>. Scambiare due volte non fa nulla:
    <math|P<rsub|i*j><rsup|2>=I>, <math|P<rsub|i*j><rsup|-1>=P<rsub|i*j>>.

    <item><strong|Riga per <math|\<lambda\>\<neq\>0>>:
    <math|D<rsub|i>(\<lambda\>)=<math-up|diag>(1,\<ldots\>,\<lambda\>,\<ldots\>,1)>.
    Le diagonali si moltiplicano entrata per entrata, quindi
    <math|D<rsub|i>(\<lambda\>)<rsup|-1>=D<rsub|i>(\<lambda\><rsup|-1>)>. Una
    diagonale è invertibile se e solo se nessun elemento diagonale è zero.

    <item><strong|Riga più multiplo di un'altra>:
    <math|E<rsub|i*j>(\<lambda\>)=I+\<lambda\>E<rsub|i*j>> (l'identità con
    <math|\<lambda\>> al posto <math|(i,j)>, <math|i\<neq\>j>) manda
    <math|R<rsub|i>> in <math|R<rsub|i>+\<lambda\>R<rsub|j>>. Si annulla con
    <math|-\<lambda\>>: <math|E<rsub|i*j>(\<lambda\>)<rsup|-1>=E<rsub|i*j>(-\<lambda\>)>.
  </itemize>

  <\guidato|Una matrice elementare in azione (esempio aggiunto)>
    Verifica che <math|E<rsub|21>(-4)=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-4>|<cell|1>>>>>>
    esegue <math|R<rsub|2>\<leftarrow\>R<rsub|2>-4R<rsub|1>> su
    <math|A=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|4>|<cell|5>>>>>>.

    <em|Idea.> Calcolare il prodotto righe per colonne.

    <em|Conto.> <math|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-4>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|4>|<cell|5>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|4-4>|<cell|5-8>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|-3>>>>>>:
    la prima riga è rimasta, la seconda è <math|R<rsub|2>-4R<rsub|1>>.

    <em|Controllo.> <math|E<rsub|21>(4)E<rsub|21>(-4)=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|4>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-4>|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>>.
  </guidato>

  <section|Il gruppo delle matrici invertibili>

  <math|P\<in\>M<rsub|m>(K)> è <strong|invertibile> se esiste <math|Q> con
  <math|P*Q=Q*P=I<rsub|m>>. Le invertibili formano un gruppo rispetto al
  prodotto, il <strong|gruppo lineare generale>
  <math|<math-up|GL><rsub|m>(K)>: il prodotto di invertibili è invertibile,
  con

  <\equation*>
    (P*Q)<rsup|-1>=Q<rsup|-1>P<rsup|-1>,
  </equation*>

  perché <math|(P*Q)(Q<rsup|-1>P<rsup|-1>)=P(Q*Q<rsup|-1>)P<rsup|-1>=P*P<rsup|-1>=I>
  (e allo stesso modo nell'altro ordine). Per <math|m\<geq\>2> il gruppo non
  è commutativo; per <math|m=1>, <math|<math-up|GL><rsub|1>(K)=K\<setminus\><around|{|0|}>>,
  che lo è. L'identità commuta con tutte.

  <strong|Gauss come prodotto.> Se da <math|A> si arriva a <math|S> con le
  operazioni <math|E<rsub|1>,\<ldots\>,E<rsub|r>>, allora
  <math|S=E<rsub|r>\<cdots\>E<rsub|1>A=P*A> con
  <math|P=E<rsub|r>\<cdots\>E<rsub|1>> invertibile. Le inverse delle
  elementari sono elementari.

  <strong|Un'invertibile ha rango massimo.> Se
  <math|P\<in\><math-up|GL><rsub|m>(K)> e <math|P*x=0>, allora
  <math|x=P<rsup|-1>P*x=0>: il nucleo è <math|<around|{|0|}>> e, per
  rango\<#2013\>nullità, <math|<math-up|rank>(P)=m>. (Oppure: ogni
  <math|y=P(P<rsup|-1>y)> sta nell'immagine.)

  <strong|Ogni invertibile è un prodotto di elementari.> Una forma a scala di
  <math|P> ha <math|m> pivot, quindi nessuna riga nulla. Si continua la
  riduzione: si rendono i pivot uguali a <math|1> e si annullano anche le
  entrate <em|sopra> i pivot, fino a ottenere <math|I<rsub|m>>:
  <math|E<rsub|r>\<cdots\>E<rsub|1>P=I<rsub|m>>. Allora
  <math|P=E<rsub|1><rsup|-1>\<cdots\>E<rsub|r><rsup|-1>>. Le elementari
  <em|generano il gruppo> <math|<math-up|GL><rsub|m>(K)>: si intende
  generazione per prodotti, non come spazio vettoriale.

  <section|Equivalenza a sinistra e a destra>

  <math|A,B\<in\>M<rsub|m,n>(K)> sono <strong|equivalenti a sinistra>,
  <math|A\<sim\><rsub|s>B>, se <math|B=P*A> per una
  <math|P\<in\><math-up|GL><rsub|m>(K)>. È una relazione di equivalenza:
  riflessiva (<math|P=I>), simmetrica (<math|A=P<rsup|-1>B>), transitiva
  (<math|C=Q*B=(Q*P)A>, e <math|Q*P> è invertibile). Poiché le invertibili
  sono prodotti di elementari:

  <\equation*>
    A\<sim\><rsub|s>B<space|1em>\<Leftrightarrow\><space|1em>B<text| si
    ottiene da >A<text| con operazioni elementari di riga.>
  </equation*>

  <strong|Forma completamente ridotta.> Partendo da una forma a scala si
  dividono le righe per i pivot (pivot <math|=1>) e si annullano le entrate
  sopra ogni pivot. Si ottiene una matrice con pivot <math|1>, unici non
  nulli nella loro colonna, che avanzano verso destra, e righe nulle in
  fondo. Da essa si leggono subito rango, variabili pivot e libere, soluzioni
  e base delle soluzioni omogenee. È una <em|forma canonica>: in ogni classe
  di equivalenza a sinistra ce n'è <em|una sola> (a lezione è stato
  enunciato).

  In modo simmetrico, <math|A\<sim\><rsub|d>B> (<strong|a destra>) se
  <math|B=A*Q> con <math|Q\<in\><math-up|GL><rsub|n>(K)>: moltiplicare a
  destra per un'elementare esegue un'<em|operazione di colonna> (scambio di
  colonne, colonna per <math|\<lambda\>\<neq\>0>, colonna più multiplo di
  un'altra). Le prove sono le stesse; cambia il lato: <math|P*A> agisce sulle
  righe, <math|A*Q> sulle colonne.

  <\verifica|12>
    <strong|a)> Una matrice <math|4\<times\>6> può avere rango <math|5>?

    <strong|b)> Per quali <math|k> il sistema <math|x+y=1>, <math|2x+2y=k> è
    compatibile? Usa Rouché\<#2013\>Capelli.

    <strong|c)> Qual è l'inversa di <math|P<rsub|12>D<rsub|1>(3)> in
    <math|M<rsub|2>(\<bbb-R\>)>?
  </verifica>

  <appendix|La cassetta degli attrezzi>

  Le dimostrazioni di questo libro usano pochi schemi, sempre gli stessi.
  Quando non sai da dove cominciare, guarda la forma della frase da
  dimostrare e cerca qui l'attrezzo adatto.

  <\padded>
    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-valign|t>|<cwith|1|-1|2|2|cell-hyphen|t>|<cwith|1|-1|1|1|cell-hyphen|t>|<cwith|1|-1|1|1|cell-width|0.33par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|2|2|cell-width|0.53par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tsep|0.45fn>|<cwith|1|-1|1|-1|cell-bsep|0.45fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|2|-1|1|-1|cell-bborder|0.25pt>|<cwith|1|-1|1|1|cell-lsep|0fn>|<cwith|1|-1|3|3|cell-rsep|0fn>|<cwith|1|-1|3|3|cell-halign|r>|<table|<row|<cell|<strong|Se
    la frase dice\<ldots\>>>|<cell|<strong|prova
    a\<ldots\>>>|<cell|<strong|vedi>>>|<row|<cell|\S<math|A=B>\T
    (insiemi)>|<cell|due inclusioni, ognuna con un elemento
    generico>|<cell|off. 1>>|<row|<cell|\Sl'unico <math|x> tale
    che\<ldots\>\T>|<cell|esistenza e unicità, separate>|<cell|off.
    2>>|<row|<cell|\Sc'è un solo\<ldots\>\T>|<cell|prendine due e mostra che
    coincidono>|<cell|off. 3>>|<row|<cell|\Sil nuovo oggetto ha la
    proprietà\<ldots\>\T>|<cell|parti dalle definizioni e cita ogni
    passaggio>|<cell|off. 4>>|<row|<cell|\Sper ogni grado
    <math|n>\T>|<cell|induzione: base e passo>|<cell|off.
    5>>|<row|<cell|\Squeste <math|n>-uple, funzioni, matrici
    soddisfano\<ldots\>\T>|<cell|riduciti alle componenti e usa il
    campo>|<cell|off. 6>>|<row|<cell|\S<math|W> è (non è) un
    sottospazio\T>|<cell|<math|0>, somma, multiplo; oppure un solo
    controesempio>|<cell|off. 7>>|<row|<cell|\Ssono linearmente
    indipendenti\T>|<cell|combinazione nulla <math|\<Rightarrow\>> tutti i
    coefficienti nulli>|<cell|off. 8>>|<row|<cell|\Sè massimale\T, \Sè
    minimale\T>|<cell|per assurdo, con un vettore in più o in
    meno>|<cell|off. 9>>|<row|<cell|\Sè una base\T, \Si due sottospazi
    coincidono\T>|<cell|conta le dimensioni: basta una proprietà o
    un'inclusione>|<cell|off. 10>>|<row|<cell|\Sla dimensione di una somma,
    di nucleo e immagine\T>|<cell|prendi una base del pezzo comune e
    completala>|<cell|off. 11>>|<row|<cell|\S<math|F> è iniettiva\T, \Stutte
    le soluzioni sono\<ldots\>\T>|<cell|sottrai: la differenza sta nel
    nucleo>|<cell|off. 12>>|<row|<cell|\Sdopo Gauss si legge
    che\<ldots\>\T>|<cell|controlla che la risposta dipenda solo da ciò che
    Gauss non cambia>|<cell|off. 13>>|<row|<cell|\Sdue numeri definiti in
    modo diverso coincidono\T>|<cell|un caso semplice dove si calcolano
    entrambi e una riduzione che li conserva>|<cell|off. 14>>>>>
  </padded>

  Prima di chiudere una dimostrazione rileggi l'enunciato: hai provato
  entrambe le direzioni di un \Sse e solo se\T, entrambe le inclusioni, sia
  l'esistenza sia l'unicità? Hai detto su quale campo lavori?

  <appendix|Risposte alle verifiche>

  <strong|Verifica 1.> <strong|a)> <math|\<exists\>y\<in\>Y> tale che
  <math|\<forall\>x\<in\>X>, <math|f(x)\<neq\>y>: c'è un elemento del
  codominio che nessuno raggiunge. <strong|b)> Iniettiva sì
  (<math|2n=2m\<Rightarrow\>n=m>); suriettiva no: <math|1> non è il doppio di
  un intero. <strong|c)> Per definire <math|f<rsup|-1>(y)> per <em|ogni>
  <math|y\<in\>Y> serve che <math|y> abbia almeno una controimmagine: senza
  suriettività qualche <math|y> resterebbe senza valore.

  <strong|Verifica 2.> <strong|a)> <math|1+1+1=(1+1)+1=0+1=1>;
  <math|(1+1)\<cdot\>1=0\<cdot\>1=0>. <strong|b)> In <math|\<bbb-N\>> manca
  l'opposto: nessun naturale sommato a <math|1> dà <math|0> (e manca anche
  l'inverso di <math|2>). <strong|c)> <math|0\<cdot\>x=(0+0)x=0\<cdot\>x+0\<cdot\>x>;
  sommando a entrambi i membri l'opposto di <math|0\<cdot\>x> si ottiene
  <math|0=0\<cdot\>x>.

  <strong|Verifica 3.> <strong|a)> <math|\|3+4i\|=<sqrt|9+16>=5>;
  <math|(3+4i)<rsup|-1>=<frac|3-4i|25>>. <strong|b)> <math|i> ha modulo
  <math|1> e argomento <math|\<pi\>/2>: moltiplicare per <math|i> ruota di un
  angolo retto in senso antiorario, senza cambiare le lunghezze. <strong|c)>
  <math|32\<neq\>0>, quindi le soluzioni sono <math|5>: modulo
  <math|<sqrt|32|5>=2>, argomenti <math|2k\<pi\>/5>. L'unica reale è
  <math|k=0>, cioè <math|z=2>.

  <strong|Verifica 4.> <strong|a)> <math|(z<rsup|2>+1)<rsup|3>=(z-i)<rsup|3>(z+i)<rsup|3>>:
  due radici distinte, <math|i> e <math|-i>, ciascuna di molteplicità
  <math|3> (in tutto <math|6>, il grado). <strong|b)> No: con coefficienti
  reali, da <math|i> e <math|2i> seguono anche <math|-i> e <math|-2i>; con
  <math|1> sarebbero <math|5> radici, più del grado <math|3>. <strong|c)>
  <math|z<rsup|2>-2<math-up|Re>(2+i)z+\|2+i\|<rsup|2>=z<rsup|2>-4z+5>.

  <strong|Verifica 5.> <strong|a)> <math|1\<odot\>(x,y)=(x,0)\<neq\>(x,y)> se
  <math|y\<neq\>0>: fallisce l'assioma <math|1v=v> (gli altri valgono).
  <strong|b)> No: se <math|p(0)=q(0)=1> allora <math|(p+q)(0)=2>; e il
  polinomio nullo non ci sta. <strong|c)> La matrice <math|2\<times\>3> con
  tutte le entrate nulle; la funzione costante <math|0>.

  <strong|Verifica 6.> <strong|a)> No: <math|(1,0)> e <math|(0,1)> ci stanno,
  <math|(1,1)> no (<math|1\<cdot\>1\<neq\>0>). <strong|b)> Il primo sì:
  contiene il polinomio nullo, e <math|(p+q)(1)=0+0>,
  <math|(\<lambda\>p)(1)=\<lambda\>\<cdot\>0>. Il secondo no: non contiene il
  polinomio nullo. <strong|c)> <math|x<rsub|1>=-x<rsub|2>-x<rsub|3>>; con
  <math|x<rsub|2>=s>, <math|x<rsub|3>=t>: <math|x=s(-1,1,0)+t(-1,0,1)>.

  <strong|Verifica 7.> <strong|a)> Dipendenti: <math|(2,4)=2(1,2)>. Generano
  solo la retta <math|<math-up|span>((1,2))>, cioè <math|y=2x>. <strong|b)>
  No: <math|1\<cdot\>0=0> è una combinazione nulla con un coefficiente
  diverso da zero. <strong|c)> <math|\<alpha\>+\<beta\>=5>,
  <math|\<alpha\>-\<beta\>=-1>: <math|\<alpha\>=2>, <math|\<beta\>=3>.
  Controllo: <math|2(1,1)+3(1,-1)=(5,-1)>.

  <strong|Verifica 8.> <strong|a)> Quattro vettori di
  <math|\<bbb-R\><rsup|3>> sono sempre dipendenti (al più <math|3>
  indipendenti). Tre vettori generano <math|\<bbb-R\><rsup|3>> se e solo se
  sono indipendenti (allora sono una base); tre vettori complanari no.
  <strong|b)> <math|p=(x-2)q> con <math|deg q\<leq\>1>: base
  <math|x-2,x(x-2)>, dimensione <math|2>. <strong|c)> Su <math|\<bbb-C\>>
  dimensione <math|2>; su <math|\<bbb-R\>> dimensione <math|4>, con base
  <math|(1,0),(i,0),(0,1),(0,i)>.

  <strong|Verifica 9.> <strong|a)> <math|U+W> ha dimensione <math|3> o
  <math|4> (contiene <math|U>), quindi per Grassmann
  <math|dim(U\<cap\>W)=6-dim(U+W)\<in\><around|{|2,3|}>>; vale <math|3> solo
  se <math|U=W>. <strong|b)> Una qualunque altra retta per l'origine, per
  esempio <math|<math-up|span>((1,0))>: le due rette si incontrano solo in
  <math|0> e le dimensioni danno <math|1+1=2>. <strong|c)> <math|6>: una
  simmetrica <math|3\<times\>3> è determinata dalle entrate sulla diagonale e
  sopra (<math|3+2+1>).

  <strong|Verifica 10.> <strong|a)> <math|dim ker=5-3=2>. Sì: l'immagine ha
  dimensione <math|3> dentro <math|\<bbb-R\><rsup|3>>, quindi è tutto
  <math|\<bbb-R\><rsup|3>>. <strong|b)> No: <math|dim
  ker=3-dim<space|0.2em><math-up|Im>\<geq\>3-2=1>, quindi il nucleo non è
  <math|<around|{|0|}>>. <strong|c)> <math|S=(1,0,0)+<math-up|span>((1,-2,1))=<around|{|(1+t,-2t,t)|}>>.
  Infatti <math|A(1,0,0)<rsup|T>> è la prima colonna <math|(1,4,7)>.

  <strong|Verifica 11.> <strong|a)> No: seconda e terza riga hanno il primo
  elemento non nullo nella stessa colonna. Con
  <math|R<rsub|3>\<leftarrow\>R<rsub|3>-<frac|4|3>R<rsub|2>> si ottiene
  <math|<matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>.
  <strong|b)> No: lo span è il piano <math|x+y+z=0> (capitolo 11) e
  <math|1+2+3=6\<neq\>0>. <strong|c)> <math|5-3=2> parametri.

  <strong|Verifica 12.> <strong|a)> No: <math|<math-up|rank>\<leq\>min<around|{|4,6|}>=4>.
  <strong|b)> <math|A=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|2>>>>>>
  ha rango <math|1>; la completa <math|<matrix|<tformat|<cwith|1|-1|3|3|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|2>|<cell|k>>>>>>
  ha rango <math|1> se e solo se la seconda riga è il doppio della prima,
  cioè <math|k=2>. Compatibile solo per <math|k=2>. <strong|c)>
  <math|(P<rsub|12>D<rsub|1>(3))<rsup|-1>=D<rsub|1>(3)<rsup|-1>P<rsub|12><rsup|-1>=D<rsub|1>(1/3)P<rsub|12>=<matrix|<tformat|<table|<row|<cell|0>|<cell|1/3>>|<row|<cell|1>|<cell|0>>>>>>.
  Controllo: <math|P<rsub|12>D<rsub|1>(3)=<matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|3>|<cell|0>>>>>>,
  e il prodotto con <math|<matrix|<tformat|<table|<row|<cell|0>|<cell|1/3>>|<row|<cell|1>|<cell|0>>>>>>
  è l'identità.
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
    <associate|auto-10|<tuple|9|33>>
    <associate|auto-11|<tuple|10|37>>
    <associate|auto-12|<tuple|11|41>>
    <associate|auto-13|<tuple|12|46>>
    <associate|auto-14|<tuple|A|49>>
    <associate|auto-15|<tuple|B|50>>
    <associate|auto-2|<tuple|1|4>>
    <associate|auto-3|<tuple|2|8>>
    <associate|auto-4|<tuple|3|10>>
    <associate|auto-5|<tuple|4|15>>
    <associate|auto-6|<tuple|5|18>>
    <associate|auto-7|<tuple|6|22>>
    <associate|auto-8|<tuple|7|26>>
    <associate|auto-9|<tuple|8|29>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Come
      usare questo libro> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Insiemi
      e applicazioni> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Campi:
      le regole del calcolo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>I
      numeri complessi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Polinomi
      e radici> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Spazi
      vettoriali> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Sottospazi>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Generatori,
      indipendenza, basi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Dimensione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Somme
      e somme dirette> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Matrici,
      sistemi e applicazioni lineari> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>L'eliminazione
      di Gauss> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Il
      rango e le matrici elementari> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendice
      A<space|2spc>La cassetta degli attrezzi>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendice
      B<space|2spc>Risposte alle verifiche>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>