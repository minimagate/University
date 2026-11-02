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
  </hide-preamble>

  <assign|page-this-header|><assign|page-this-footer|>

  <\with|par-mode|center>
    <vspace*|7.5cm>

    <with|font-size|3.6|Aritmetica>

    <vspace|1.4fn>

    <with|font-shape|small-caps|font-size|1.25|ottobre 2026>
  </with>

  <chapter*|Come usare questo libro>

  Questo libro raccoglie le lezioni di Aritmetica dal 23 settembre al 31
  ottobre e le rimette in un ordine che costruisce un mattone alla volta. Non
  dà nulla per scontato: ogni idea parte da un esempio concreto, poi diventa
  una definizione, poi un risultato con la sua spiegazione.

  I temi sono tre e si intrecciano di continuo: <strong|contare> oggetti
  senza dimenticarne né ripeterne nessuno; capire come sono fatti gli
  <strong|interi> (divisori, MCD, primi); lavorare con i <strong|resti>, cioè
  con l'aritmetica modulare, fino ai primi passi nei gruppi e negli anelli.

  Lungo il testo trovi cinque tipi di riquadro.

  <\itemize>
    <item><strong|In breve>: all'inizio di ogni capitolo, che cosa impareremo
    e perché.

    <item><strong|Esercizio guidato>: un problema risolto passo per passo.
    Prova a fare ogni passo da solo prima di leggerlo. Alcuni vengono dalla
    raccolta <em|Esercizi scelti di Algebra> di Chirivì, Del Corso e
    Dvornicich (Springer, 2017): li segnaliamo con il numero originale.

    <item><strong|Attenzione>: un errore tipico, e come evitarlo.

    <item><strong|Immagine mentale>: un modo di vedere un'idea che la rende
    facile da ricordare.

    <item><strong|Officina della dimostrazione>: in ogni capitolo un attrezzo
    del ragionamento. Le dimostrazioni di aritmetica usano pochi schemi che
    ritornano sempre: verificare una base e un passo, mostrare che un oggetto
    esiste, che è unico, che una condizione è necessaria e sufficiente, che
    una definizione non dipende dalle scelte. Le officine li presentano uno
    alla volta; l'appendice A li riassume.
  </itemize>

  Ogni capitolo finisce con una breve <strong|verifica>. Le risposte sono
  nell'appendice B. Servono solo carta e matita.

  <strong|Convenzioni.> <math|\<bbb-N\>=<around|{|0,1,2,\<ldots\>|}>> sono i
  naturali, <math|\<bbb-Z\>> gli interi, <math|\<bbb-Q\>> i razionali,
  <math|\<bbb-R\>> i reali, <math|\<bbb-C\>> i complessi. Scriviamo
  <math|gcd(a,b)> per il massimo comune divisore (MCD) e
  <math|<math-up|mcm>(a,b)> per il minimo comune multiplo. I divisori che
  contiamo sono positivi, salvo avviso. Le figure, gli esempi aggiuntivi e le
  verifiche sono integrazioni didattiche, non parole del docente.

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Come usare
    questo libro> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Imparare
    a dimostrare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Contare
    senza ripetere> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>Dalle
    ricorrenze alle formule> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>Dividere,
    trovare il MCD, scomporre> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>Equazioni
    negli interi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>Dagli
    interi alle classi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Ricomporre
    i resti> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8<space|2spc>Potenze
    e cifre periodiche> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9<space|2spc>Il
    linguaggio dei gruppi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|10<space|2spc>Quadratiche
    e potenze prime> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendice
    A<space|2spc>La cassetta degli attrezzi>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendice
    B<space|2spc>Risposte alle verifiche>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>
  </table-of-contents>

  <chapter|Imparare a dimostrare>

  <\inbreve>
    Una dimostrazione è una spiegazione che non lascia buchi: convince che
    una frase è vera <em|in tutti i casi>, non solo in quelli che abbiamo
    provato. In questo capitolo impariamo a leggere le frasi matematiche e
    costruiamo il primo grande attrezzo: l'induzione, cioè una partenza
    sicura più una regola per avanzare.
  </inbreve>

  <section|Insiemi e frasi matematiche>

  Un <strong|insieme> è una collezione di oggetti, i suoi <strong|elementi>.
  Per esempio <math|A=<around|{|1,3,5|}>> contiene tre numeri. Scriviamo
  <math|3\<in\>A> (\S3 appartiene ad <math|A>\T) e <math|2\<nin\>A>.
  L'insieme vuoto, senza elementi, è <math|\<varnothing\>>.

  <math|A\<subseteq\>B> significa che ogni elemento di <math|A> sta anche in
  <math|B>. Due insiemi sono uguali quando hanno gli stessi elementi: per
  provare <math|A=B> si mostrano le due inclusioni <math|A\<subseteq\>B> e
  <math|B\<subseteq\>A>.

  Con due insiemi costruiamo l'<strong|unione> <math|A\<cup\>B> (gli elementi
  che stanno in almeno uno dei due), l'<strong|intersezione> <math|A\<cap\>B>
  (quelli che stanno in entrambi) e la <strong|differenza>
  <math|A\<setminus\>B> (quelli di <math|A> che non stanno in <math|B>).

  <figura|<image|aritmetica-1-assets/insiemi.pdf|150.0mm|43.8mm||>|In grigio,
  da sinistra: unione, intersezione, differenza.>

  I numeri crescono insieme alle equazioni che vogliamo risolvere. I naturali
  servono a contare; per risolvere <math|x+3=0> servono gli interi; per
  <math|5x=-8> i razionali; per <math|x<rsup|2>=2> i reali; per
  <math|x<rsup|2>=-1> i complessi.

  Una <strong|proprietà> <math|P(n)> è una frase che diventa vera o falsa
  quando scegliamo <math|n>. Per esempio <math|P(n)>: \S<math|n> è pari\T. Il
  simbolo <math|\<forall\>> si legge \Sper ogni\T, il simbolo
  <math|\<exists\>> si legge \Sesiste\T.

  <\officina|1. Leggere un enunciato>
    Prima di dimostrare qualcosa, chiediti che forma ha la frase. Ogni forma
    chiede un lavoro diverso.

    <\itemize>
      <item><em|\SPer ogni <math|x>, vale <math|P(x)>.\T> Prendi un <math|x>
      qualsiasi, senza sceglierlo tu, e ragiona solo con ciò che sai di lui.
      Per smentire la frase basta <em|un> controesempio: \Sogni primo è
      dispari\T è falsa perché c'è <math|2>.

      <item><em|\SEsiste <math|x> con <math|P(x)>.\T> Basta mostrarne uno,
      oppure spiegare perché non può mancare.

      <item><em|\SSe <math|P>, allora <math|Q>\T> (<math|P\<Rightarrow\>Q>).
      Supponi <math|P> vera e arriva a <math|Q>. <math|P> è
      l'<strong|ipotesi>, <math|Q> la <strong|tesi>.

      <item><em|\S<math|P> se e solo se <math|Q>\T>
      (<math|P\<Leftrightarrow\>Q>). Sono due dimostrazioni:
      <math|P\<Rightarrow\>Q> e <math|Q\<Rightarrow\>P>.

      <item><em|\SEsiste un unico <math|x>.\T> Anche qui due lavori: trovare
      un <math|x> (esistenza) e mostrare che due <math|x> con la proprietà
      coincidono (unicità).
    </itemize>
  </officina>

  <\immagine|Riscrivi la domanda>
    Prima di calcolare, riscrivi la domanda con tutte le sue condizioni.
    \STrova <math|x>\T è incompleto: <math|x> è naturale, intero, reale, o un
    resto? La stessa equazione può avere risposte diverse in insiemi diversi.
  </immagine>

  <section|Il primo numero da cui partire>

  I naturali cominciano da <math|0> e ogni naturale ha un successivo
  <math|n+1>. Una proprietà fondamentale li caratterizza:

  <\equation*>
    <text|<strong|principio del minimo>: ogni insieme non vuoto di naturali
    ha un elemento più piccolo.>
  </equation*>

  Sembra ovvio, ma dipende davvero dall'insieme in cui lavoriamo. Gli interi
  non hanno un minimo (si scende per sempre: <math|-1,-2,-3,\<ldots\>>). I
  reali positivi non hanno minimo: se <math|x\<gtr\>0>, anche <math|x/2> è
  positivo ed è più piccolo.

  <section|Induzione: una base e un passo>

  Immagina una fila infinita di tessere del domino. Per essere sicuro che
  cadano tutte bastano due cose: che cada la prima, e che ogni tessera,
  cadendo, faccia cadere la successiva.

  <figura|<image|aritmetica-1-assets/domino-induzione.pdf|155.0mm|50.0mm||>|La
  base fa cadere la prima tessera; il passo garantisce che nessuna tessera
  interrompa la catena.>

  Il <strong|principio di induzione> traduce esattamente questa immagine. Per
  dimostrare <math|P(n)> per ogni <math|n\<geq\>n<rsub|0>> bastano due
  verifiche:

  <\enumerate>
    <item><strong|Base>: <math|P(n<rsub|0>)> è vera.

    <item><strong|Passo>: per ogni <math|n\<geq\>n<rsub|0>>, se <math|P(n)> è
    vera allora anche <math|P(n+1)> è vera.
  </enumerate>

  Nel passo <em|supponiamo> <math|P(n)> solo per un momento, per vedere che
  cosa ne segue. Non stiamo dando per buona la conclusione: stiamo
  controllando che la catena non si spezzi.

  <\guidato|La somma dei dispari>
    Vogliamo dimostrare che, per ogni <math|n\<geq\>1>,

    <\equation*>
      1+3+5+\<cdots\>+(2n-1)=n<rsup|2>.
    </equation*>

    <em|Base.> Per <math|n=1> a sinistra c'è <math|1>, a destra
    <math|1<rsup|2>=1>.

    <em|Passo.> Supponiamo la formula vera per <math|n>. La somma successiva
    aggiunge il dispari <math|2n+1>:

    <\equation*>
      <wide*|1+3+\<cdots\>+(2n-1)|\<wide-underbrace\>><rsub|n<rsup|2>>+(2n+1)=n<rsup|2>+2n+1=(n+1)<rsup|2>.
    </equation*>

    Base e passo sono verificati, quindi la formula vale per ogni
    <math|n\<geq\>1>. La figura mostra anche <em|perché> è vera: ogni nuovo
    dispari è una cornice a forma di L che allarga il quadrato di un passo.
  </guidato>

  <figura|<image|aritmetica-1-assets/dispari.pdf|117.5mm|52.5mm||>|Il
  quadrato <math|5\<times\>5> è fatto di cornici di 1, 3, 5, 7, 9 caselle.>

  <\officina|2. Come si scrive un'induzione>
    Una dimostrazione per induzione ha sempre la stessa forma. Scrivila così:

    <\enumerate>
      <item>\SSia <math|P(n)> la frase \<ldots\>\T (scrivila per esteso: è la
      cosa più importante).

      <item>\SBase: per <math|n=n<rsub|0>> \<ldots\>\T (verifica diretta).

      <item>\SPasso: supponiamo vera <math|P(n)> per un certo
      <math|n\<geq\>n<rsub|0>>. Allora \<ldots\>\T (usa l'ipotesi <math|P(n)>
      da qualche parte, altrimenti non serviva l'induzione).

      <item>\SPer il principio di induzione, <math|P(n)> vale per ogni
      <math|n\<geq\>n<rsub|0>>.\T
    </enumerate>

    Un trucco: nel passo, scrivi prima l'enunciato <math|P(n+1)> che vuoi
    raggiungere, poi cerca dentro di esso un pezzo che assomigli a
    <math|P(n)>.
  </officina>

  La notazione <math|<big|sum><rsub|k=1><rsup|n>a<rsub|k>> abbrevia
  <math|a<rsub|1>+a<rsub|2>+\<cdots\>+a<rsub|n>>. L'indice <math|k> è un
  segnaposto: si può chiamare in un altro modo, purché si aggiornino insieme
  termini ed estremi. Per esempio <math|<big|sum><rsub|i=0><rsup|n-1>(2i+1)=<big|sum><rsub|k=1><rsup|n>(2k-1)>.

  Un altro classico: <math|1+2+\<cdots\>+n=n(n+1)/2>. L'induzione la verifica
  (il passo aggiunge <math|n+1>). Per <em|scoprirla>, invece, scrivi la somma
  due volte, una al contrario: ogni colonna vale <math|n+1>, le colonne sono
  <math|n>, e abbiamo contato tutto due volte.

  <section|Perché l'induzione funziona>

  Supponiamo di aver verificato base e passo, e immaginiamo per assurdo che
  ci sia un numero per cui <math|P> è falsa. Fra questi \Scontroesempi\T
  prendiamo il più piccolo, <math|m>: esiste per il principio del minimo. Non
  è <math|n<rsub|0>>, perché la base è vera. Quindi
  <math|m-1\<geq\>n<rsub|0>> e, essendo <math|m> il primo controesempio,
  <math|P(m-1)> è vera. Ma allora il passo rende vera <math|P(m)>:
  contraddizione. Dunque non ci sono controesempi.

  Vale anche il viceversa: l'induzione implica il principio del minimo. Sia
  <math|S\<subseteq\>\<bbb-N\>> un insieme senza minimo; mostriamo che è
  vuoto. Sia <math|Q(n)> la frase \Snessuno dei numeri <math|0,1,\<ldots\>,n>
  sta in <math|S>\T. <math|Q(0)> è vera, altrimenti <math|0> sarebbe il
  minimo di <math|S>. Se <math|Q(n)> è vera e <math|n+1> stesse in <math|S>,
  sarebbe il minimo, perché tutti i numeri prima di lui ne sono fuori. Quindi
  vale <math|Q(n+1)>. Per induzione <math|Q(n)> vale sempre: <math|S> è
  vuoto.

  <\officina|3. Per assurdo, e il minimo controesempio>
    Per dimostrare una frase <em|per assurdo> supponi che sia falsa e arriva
    a una contraddizione: qualcosa che è insieme vero e falso.

    Per le frasi su tutti i naturali c'è una versione molto efficace:
    <em|\Ssupponiamo che esistano controesempi e prendiamo il più piccolo\T>.
    Essere il più piccolo dà un'informazione in più: tutti i numeri prima di
    lui funzionano. Spesso questo basta per costruire un controesempio ancora
    più piccolo, e quindi una contraddizione. Lo useremo per la divisione con
    resto, per Euclide, per l'ordine di un elemento.
  </officina>

  <\attenzione|Il passo deve funzionare per ogni <math|n>>
    Un falso argomento \Sdimostra\T che tutte le persone hanno gli occhi
    dello stesso colore. Base: con una persona è vero. Passo: in un gruppo di
    <math|n+1> persone, le prime <math|n> hanno lo stesso colore e anche le
    ultime <math|n>; le persone in comune fanno da ponte, quindi il colore è
    unico.

    L'errore sta nel passaggio da 1 a 2. Con due persone \Sle prime\T e \Sle
    ultime\T sono gruppi di una persona sola, e non hanno nessuno in comune:
    non c'è ponte. Il passo funziona per <math|n\<geq\>2> ma non per
    <math|n=1>, e la catena si spezza subito.
  </attenzione>

  <figura|<image|aritmetica-1-assets/occhi.pdf|150.0mm|43.8mm||>|Con tre
  persone i due gruppi si toccano; con due persone no. È lì che il
  ragionamento si rompe.>

  <section|Induzione forte e fattori primi>

  A volte, per dimostrare <math|P(n)>, non basta sapere <math|P(n-1)>: serve
  un caso più piccolo qualsiasi. L'<strong|induzione forte> permette di usare
  tutti i casi precedenti: nel passo si suppone vera <math|P(k)> per ogni
  <math|n<rsub|0>\<leq\>k\<leq\>n> e si dimostra <math|P(n+1)>.

  Non è un principio nuovo: è l'induzione ordinaria applicata alla frase
  \S<math|P(k)> vale per tutti i <math|k> da <math|n<rsub|0>> fino a
  <math|n>\T.

  Un numero <math|p\<geq\>2> è <strong|primo> se i suoi unici divisori
  positivi sono <math|1> e <math|p>. Un numero <math|n\<geq\>2> che non è
  primo si dice <strong|composto>: si scrive <math|n=a*b> con
  <math|2\<leq\>a,b\<less\>n>.

  <strong|Ogni <math|n\<geq\>2> è un prodotto di primi.> Lo proviamo per
  induzione forte. Se <math|n> è primo, abbiamo finito. Altrimenti
  <math|n=a*b> con <math|a,b> più piccoli di <math|n>; per ipotesi induttiva
  entrambi sono prodotti di primi, e mettendoli insieme otteniamo <math|n>.
  Si vede bene con un albero dei fattori.

  <figura|<image|aritmetica-1-assets/fattori.pdf|117.5mm|53.8mm||>|Si spezza
  finché si può; le foglie sono primi. Il risultato non dipende dal modo in
  cui si spezza: lo dimostreremo nel capitolo 4.>

  Questo è solo l'<em|esistenza> della fattorizzazione. Che sia anche
  <em|unica> (a meno dell'ordine) è più profondo: lo dimostreremo dopo aver
  incontrato Bézout.

  <\verifica|1>
    Perché la sola frase \Sse <math|P(n)> allora <math|P(n+1)>\T non basta a
    dimostrare <math|P(n)> per tutti i naturali? Mostralo con la proprietà
    <math|P(n)>: \S<math|n\<geq\>5>\T.
  </verifica>

  <chapter|Contare senza ripetere>

  <\inbreve>
    Contare bene significa elencare ogni oggetto <em|una e una sola volta>.
    Bastano tre gesti: separare in casi (e sommare), scegliere in più tappe
    (e moltiplicare), correggere le ripetizioni (e dividere o sottrarre).
    Tutte le formule del capitolo nascono da questi gesti, e ogni volta ci
    chiederemo <em|perché> sono vere.
  </inbreve>

  <section|Funzioni: frecce fra insiemi>

  Una <strong|funzione> <math|f:X\<rightarrow\>Y> associa a ogni elemento
  <math|x\<in\>X> <em|un solo> elemento <math|f(x)\<in\>Y>. Si disegna con
  delle frecce: da ogni punto di <math|X> parte esattamente una freccia.
  <math|X> è il <strong|dominio>, <math|Y> il <strong|codominio>; i punti di
  <math|Y> effettivamente colpiti formano l'<strong|immagine>.

  <figura|<image|aritmetica-1-assets/funzioni.pdf|160.0mm|47.5mm||>|Da ogni
  punto di <math|X> parte una freccia. Iniettiva: due frecce non arrivano mai
  nello stesso punto. Suriettiva: ogni punto di <math|Y> riceve almeno una
  freccia. Biiettiva: entrambe le cose, cioè le frecce accoppiano
  perfettamente i due insiemi.>

  <\itemize>
    <item><strong|Iniettiva>: elementi diversi vanno in elementi diversi.

    <item><strong|Suriettiva>: ogni elemento di <math|Y> viene colpito.

    <item><strong|Biiettiva> (o <em|biezione>): iniettiva e suriettiva. Ogni
    elemento di <math|Y> riceve esattamente una freccia.
  </itemize>

  <strong|Contare è costruire una biezione.> Dire che <math|X> ha <math|n>
  elementi, <math|\|X\|=n>, significa poterli numerare <math|1,2,\<ldots\>,n>
  senza saltarne né ripeterne: una biezione fra
  <math|<around|{|1,\<ldots\>,n|}>> e <math|X>. E se fra due insiemi c'è una
  biezione, hanno lo stesso numero di elementi. Questo è il trucco più
  potente del capitolo: per contare un insieme difficile, lo si mette in
  biezione con uno facile.

  <section|Il principio dei cassetti>

  Se metti 5 palline in 4 cassetti, almeno un cassetto ne riceve due. In
  generale:

  <\equation*>
    <text|se <math|\|X\|\<gtr\>\|Y\|>, nessuna funzione
    <math|X\<rightarrow\>Y> è iniettiva.>
  </equation*>

  <figura|<image|aritmetica-1-assets/cassetti.pdf|130.0mm|37.5mm||>|Cinque
  oggetti, quattro cassetti: una collisione è inevitabile.>

  Sembra banale, ma dimostra esistenze senza costruirle: lo useremo per i
  cicli delle potenze e per le cifre periodiche. Una conseguenza utile: fra
  due insiemi finiti con lo <em|stesso> numero di elementi, una funzione
  iniettiva è automaticamente suriettiva (le <math|n> frecce arrivano in
  <math|n> punti diversi, quindi li occupano tutti). Per gli insiemi infiniti
  è falso: <math|n\<mapsto\>n+1> su <math|\<bbb-N\>> è iniettiva ma non
  colpisce <math|0>.

  <section|Sommare i casi, moltiplicare le scelte>

  <strong|Regola della somma.> Se gli oggetti si dividono in casi che non si
  sovrappongono, il totale è la somma dei casi.

  <strong|Regola del prodotto.> Se una scelta avviene in due tappe, con
  <math|n> possibilità per la prima e, per ciascuna di esse, <math|m> per la
  seconda, le scelte complete sono <math|n\<cdot\>m>. Per esempio le coppie
  ordinate <math|(x,y)> con <math|x\<in\>X>, <math|y\<in\>Y> formano il
  prodotto cartesiano <math|X\<times\>Y>, e
  <math|\|X\<times\>Y\|=\|X\|\<cdot\>\|Y\|>. \SOrdinate\T vuol dire che
  <math|(1,2)\<neq\>(2,1)>.

  <strong|Quante funzioni da <math|X> a <math|Y>?> Se <math|\|X\|=n> e
  <math|\|Y\|=m>, ogni elemento di <math|X> sceglie la propria freccia fra
  <math|m> possibilità, indipendentemente dagli altri: le funzioni sono
  <math|m\<cdot\>m\<cdot\>\<cdots\>\<cdot\>m=m<rsup|n>>.

  <strong|E quelle iniettive?> Ora una destinazione già usata è vietata. Il
  primo elemento ha <math|m> scelte, il secondo <math|m-1>, e così via:

  <\equation*>
    m(m-1)(m-2)\<cdots\>(m-n+1)=<frac|m!|(m-n)!>,
  </equation*>

  e zero se <math|n\<gtr\>m> (cassetti!). Qui <math|m!=1\<cdot\>2\<cdots\>m>
  è il <strong|fattoriale>: conta i modi di mettere in fila <math|m> oggetti
  distinti. Si pone <math|0!=1>, perché c'è un solo modo di mettere in fila
  zero oggetti: non fare niente.

  <section|Ordinati o no: da dove viene il binomiale>

  Fra <math|a,b,c> vogliamo scegliere due elementi. Se l'ordine conta (un
  presidente e un vice), l'albero delle scelte dà <math|3\<cdot\>2=6> liste.
  Se l'ordine non conta (una coppia di rappresentanti), le liste <math|a*b> e
  <math|b*a> descrivono la stessa coppia: ogni insieme è stato contato due
  volte.

  <figura|<image|aritmetica-1-assets/scelte.pdf|155.0mm|72.5mm||>|A sinistra
  l'albero delle scelte ordinate. A destra ogni insieme di due elementi
  raccoglie le sue <math|2!=2> liste.>

  In generale, per scegliere <math|k> elementi fra <math|n> senza ordine: le
  liste ordinate sono <math|n(n-1)\<cdots\>(n-k+1)=n!/(n-k)!>, e ogni insieme
  di <math|k> elementi compare in esattamente <math|k!> liste, una per
  ciascun ordinamento. Dividendo otteniamo il <strong|coefficiente binomiale>

  <\equation*>
    <binom|n|k>=<frac|n!|k!(n-k)!><space|2em>(0\<leq\>k\<leq\>n),
  </equation*>

  che si legge \S<math|n> su <math|k>\T. Per comodità <math|<binom|n|k>=0> se
  <math|k\<less\>0> o <math|k\<gtr\>n>. Due fatti si vedono senza calcoli:
  <math|<binom|n|0>=<binom|n|n>=1> (si sceglie tutto o niente in un solo
  modo) e <math|<binom|n|k>=<binom|n|n-k>> (scegliere chi entra equivale a
  scegliere chi resta fuori).

  <\attenzione|Si divide solo se le ripetizioni sono tutte uguali>
    Dividere per <math|k!> funziona perché <em|ogni> insieme compare
    esattamente <math|k!> volte. Se alcuni oggetti compaiono meno volte (per
    esempio terne con due componenti uguali, che hanno solo 3 ordinamenti
    invece di 6), prima vanno tolti o contati a parte.
  </attenzione>

  <strong|Tutti i sottoinsiemi.> L'insieme delle parti <math|\<cal-P\>(X)>
  contiene tutti i sottoinsiemi di <math|X>. Per costruirne uno, chiediamo a
  ogni elemento: \Sentri o no?\T. Sono <math|n> domande con due risposte,
  quindi <math|\|\<cal-P\>(X)\|=2<rsup|n>>. Raggruppando per numero di
  elementi, <math|<big|sum><rsub|k=0><rsup|n><binom|n|k>=2<rsup|n>>.

  <figura|<image|aritmetica-1-assets/parti.pdf|155.0mm|62.5mm||>|Tre domande
  sì/no producono gli otto sottoinsiemi di <math|<around|{|a,b,c|}>>. Per
  grandezza: 1 insieme con tre elementi, 3 con due, 3 con uno, 1 vuoto.>

  <section|Anagrammi: distinguere e poi dimenticare>

  Quante parole si ottengono rimescolando le lettere di NONNO? Il trucco è in
  due tempi. Prima rendiamo le lettere tutte diverse, numerando le copie:
  <math|N<rsub|1>O<rsub|1>N<rsub|2>N<rsub|3>O<rsub|2>>. Ora sono 5 oggetti
  distinti, con <math|5!=120> ordinamenti. Poi cancelliamo i numeri: ogni
  parola vera viene da <math|3!> modi di disporre le tre N e <math|2!> modi
  di disporre le due O.

  <figura|<image|aritmetica-1-assets/anagrammi.pdf|155.0mm|50.0mm||>|Le
  <math|3!\<cdot\>2!=12> versioni numerate della stessa parola diventano una
  sola parola quando si cancellano i numeri.>

  Quindi le parole sono <math|5!/(3!\<cdot\>2!)=10>. In generale, con
  <math|n> lettere di cui <math|n<rsub|1>> uguali di un tipo,
  <math|n<rsub|2>> di un altro, \<ldots\>, <math|n<rsub|r>> dell'ultimo,

  <\equation*>
    <frac|n!|n<rsub|1>!\<cdot\>n<rsub|2>!\<cdots\>n<rsub|r>!>.
  </equation*>

  È il <strong|coefficiente multinomiale>. Conta anche i modi di dividere
  <math|n> oggetti in gruppi <em|con un nome> di grandezze fissate: basta
  pensare ogni oggetto come una posizione e il nome del gruppo come la
  lettera.

  <\guidato|Un mazzo ordinato a metà (Chirivì et al., es. 40)>
    Un mazzo di 40 carte ha 4 semi da 10 carte. In quanti modi si possono
    mettere in fila tutte le carte, se dentro ogni seme le carte devono
    comparire in ordine crescente?

    <em|Idea.> Dentro un seme l'ordine è obbligato, quindi conta solo
    <em|quali posizioni> occupa ciascun seme. Una disposizione è una parola
    di 40 lettere con 10 D (denari), 10 S, 10 B, 10 C: dalla parola si
    ricostruisce il mazzo mettendo le carte di ogni seme, in ordine
    crescente, nelle sue posizioni.

    <em|Conto.> È un anagramma di 40 lettere, 10 per tipo:

    <\equation*>
      <frac|40!|10!\<cdot\>10!\<cdot\>10!\<cdot\>10!>.
    </equation*>

    <em|Variante.> E se chiediamo solo che tutti i denari vengano prima di
    tutte le spade? Fra le <math|40!> disposizioni, guardiamo le 20 posizioni
    occupate da denari e spade: delle <math|<binom|20|10>> parole possibili
    in D e S su quelle posizioni, solo quella con tutte le D prima di tutte
    le S va bene. Per simmetria la risposta è <math|40!/<binom|20|10>>.
  </guidato>

  <section|Identità che raccontano una scelta>

  Molte formule si dimostrano <em|raccontando> una scelta in due modi.

  <strong|Pascal.> Fissiamo un elemento speciale in un insieme di <math|n+1>
  elementi. Un sottoinsieme di <math|k> elementi o lo contiene (e allora gli
  altri <math|k-1> si scelgono fra <math|n>), o non lo contiene (e allora
  tutti i <math|k> si scelgono fra <math|n>):

  <\equation*>
    <binom|n+1|k>=<binom|n|k-1>+<binom|n|k>.
  </equation*>

  <figura|<image|aritmetica-1-assets/pascal.pdf|110.0mm|53.8mm||>|Nel
  triangolo di Pascal ogni numero è la somma dei due sopra di lui.>

  <strong|Newton.> Sviluppando <math|(a+b)<rsup|n>=(a+b)(a+b)\<cdots\>(a+b)>,
  da ogni parentesi prendiamo <math|a> oppure <math|b>. Il monomio
  <math|a<rsup|k>b<rsup|n-k>> nasce scegliendo quali <math|k> parentesi danno
  <math|a>:

  <\equation*>
    (a+b)<rsup|n>=<big|sum><rsub|k=0><rsup|n><binom|n|k>a<rsup|k>b<rsup|n-k>.
  </equation*>

  Con <math|a=b=1> ritroviamo <math|2<rsup|n>>. Con <math|a=1,b=-1> (e
  <math|n\<geq\>1>) la somma alternata vale <math|0>: i sottoinsiemi con un
  numero pari di elementi sono tanti quanti quelli dispari, cioè
  <math|2<rsup|n-1>> ciascuno. C'è anche una biezione che lo mostra: fissato
  un elemento <math|x>, aggiungilo ai sottoinsiemi che non lo contengono e
  toglilo agli altri. La parità cambia sempre, e rifacendo l'operazione si
  torna indietro.

  <\officina|4. Contare per dimostrare>
    Due attrezzi trasformano un conteggio in una dimostrazione.

    <\itemize>
      <item><strong|Biezione.> Per provare <math|\|A\|=\|B\|>, costruisci una
      regola che a ogni elemento di <math|A> associa un elemento di <math|B>,
      e controlla che si possa tornare indietro in un solo modo.

      <item><strong|Doppio conteggio.> Conta lo stesso insieme in due modi
      diversi e uguaglia i risultati. Esempio: le coppie <math|(A,x)> con
      <math|\|A\|=k> e <math|x\<in\>A>, scelte in un insieme di <math|n>
      elementi. Prima <math|A> poi <math|x>: <math|k<binom|n|k>>. Prima
      <math|x> poi gli altri <math|k-1>: <math|n<binom|n-1|k-1>>. Dunque
      <math|k<binom|n|k>=n<binom|n-1|k-1>>, senza fare un conto.
    </itemize>

    La domanda da farsi è sempre: <em|che cosa sto contando, esattamente?>
  </officina>

  <section|Sovrapposizioni: inclusione-esclusione>

  Se <math|A> e <math|B> si sovrappongono, <math|\|A\|+\|B\|> conta due volte
  gli elementi comuni. Correggiamo togliendoli una volta:

  <\equation*>
    \|A\<cup\>B\|=\|A\|+\|B\|-\|A\<cap\>B\|.
  </equation*>

  Con tre insiemi si tolgono le intersezioni a due e si rimette quella a tre.
  Il motivo si vede zona per zona: un elemento che sta in esattamente
  <math|s> insiemi viene contato <math|<binom|s|1>-<binom|s|2>+<binom|s|3>-\<cdots\>=1>
  volta, per la somma alternata di Newton.

  <figura|<image|aritmetica-1-assets/venn3.pdf|150.0mm|62.5mm||>|In ogni zona
  il conto con i segni alterni dà sempre 1: ogni elemento dell'unione è
  contato una volta sola.>

  In generale, per <math|r> insiemi,

  <\equation*>
    <around*|\||<big|cup><rsub|i=1><rsup|r>A<rsub|i>|\|>=<big|sum><rsub|\<varnothing\>\<neq\>I\<subseteq\><around|{|1,\<ldots\>,r|}>>(-1)<rsup|\|I\|+1><around*|\||<big|cap><rsub|i\<in\>I>A<rsub|i>|\|>.
  </equation*>

  Un modo compatto per ragionare sugli insiemi è la <strong|funzione
  caratteristica>: <math|\<bbb-1\><rsub|A>(x)=1> se <math|x\<in\>A>, <math|0>
  altrimenti. Allora <math|\|A\|=<big|sum><rsub|x>\<bbb-1\><rsub|A>(x)>,
  <math|\<bbb-1\><rsub|A\<cap\>B>=\<bbb-1\><rsub|A>\<bbb-1\><rsub|B>>,
  <math|\<bbb-1\><rsub|X\<setminus\>A>=1-\<bbb-1\><rsub|A>>. Espandendo
  <math|1-<big|prod><rsub|i>(1-\<bbb-1\><rsub|A<rsub|i>>)> si ritrovano
  proprio i segni alterni della formula.

  <\guidato|Le funzioni suriettive>
    Siano <math|\|X\|=n\<geq\>1>, <math|\|Y\|=m\<geq\>1>. Quante funzioni
    <math|X\<rightarrow\>Y> sono suriettive?

    <em|Idea.> È più facile contare il contrario: le funzioni che
    <em|evitano> qualche valore. Sia <math|A<rsub|y>> l'insieme delle
    funzioni che non colpiscono <math|y>.

    <em|Conto.> Se vietiamo <math|j> valori fissati, restano
    <math|(m-j)<rsup|n>> funzioni, e i <math|j> valori si scelgono in
    <math|<binom|m|j>> modi. Inclusione-esclusione dà

    <\equation*>
      #<around|{|f:X\<rightarrow\>Y<text|
      suriettive>|}>=<big|sum><rsub|j=0><rsup|m>(-1)<rsup|j><binom|m|j>(m-j)<rsup|n>.
    </equation*>

    <em|Controllo.> Da 4 elementi a 3: <math|3<rsup|4>-3\<cdot\>2<rsup|4>+3\<cdot\>1<rsup|4>=81-48+3=36>.
    Da <math|n> a <math|n-1> (<math|n\<geq\>2>): esattamente due elementi
    devono collidere, quindi <math|<binom|n|2>(n-1)!>. Da <math|n> a <math|n>
    le suriettive sono le biezioni, <math|n!>; se <math|n\<less\>m> non ce ne
    sono.
  </guidato>

  <section|Prima il vincolo, poi il resto>

  Quando un problema ha un vincolo, conviene soddisfarlo per primo e lasciare
  liberi gli altri.

  <strong|Coppie di insiemi con intersezione fissata.> Quante coppie ordinate
  <math|(A,B)> di sottoinsiemi di un insieme con <math|n> elementi hanno
  <math|\|A\<cap\>B\|=r>? Scegliamo prima l'intersezione: <math|<binom|n|r>>
  modi. Ogni altro elemento ha tre possibilità: solo in <math|A>, solo in
  <math|B>, in nessuno dei due. Totale <math|<binom|n|r>3<rsup|n-r>>. (Nel
  corso: <math|n=100>, <math|r=30>.)

  <strong|Una somma pari.> Quanti sottoinsiemi di 96 elementi di
  <math|<around|{|1,\<ldots\>,100|}>> hanno somma pari? La somma è pari
  quando i dispari scelti sono in numero pari. Ci sono 50 pari e 50 dispari,
  e su 96 elementi i dispari scelti sono almeno 46. Quindi sono 46, 48 o 50:

  <\equation*>
    <binom|50|46><binom|50|50>+<binom|50|48><binom|50|48>+<binom|50|50><binom|50|46>.
  </equation*>

  Il vincolo sulla somma è diventato un vincolo su <em|quanti> elementi
  prendere da ciascuna parte.

  <\guidato|Terne di insiemi (Chirivì et al., es. 15)>
    Sia <math|X=<around|{|1,\<ldots\>,n|}>>. Quante sono le terne ordinate
    <math|(A,B,C)> di sottoinsiemi di <math|X>

    (i) a due a due disgiunti, con <math|A\<cup\>B\<cup\>C=X>?

    (ii) con <math|A\<cup\>B\<cup\>C=X> (senza altre condizioni)?

    <em|Idea.> Invece di scegliere gli insiemi, lasciamo scegliere gli
    elementi. Una terna <math|(A,B,C)> è determinata dicendo, per ogni
    <math|x\<in\>X>, in quali dei tre insiemi sta.

    (i) Ogni elemento sta in esattamente uno dei tre insiemi: 3 possibilità,
    indipendenti. Risposta: <math|3<rsup|n>>.

    (ii) Ogni elemento sta in almeno uno dei tre insiemi. I tre cerchi
    dividono il piano in 8 zone; quella esterna è vietata. Restano 7 zone per
    ciascun elemento: <math|7<rsup|n>>.
  </guidato>

  <figura|<image|aritmetica-1-assets/regioni.pdf|140.0mm|60.0mm||>|Una terna
  <math|(A,B,C)> è la stessa cosa che assegnare a ogni elemento una zona del
  disegno.>

  <section|Stelle e sbarre>

  Quante soluzioni ha <math|x<rsub|1>+x<rsub|2>+\<cdots\>+x<rsub|r>=N> con
  tutti gli <math|x<rsub|i>> naturali? Rappresentiamo <math|N> come <math|N>
  stelle in fila e separiamo le <math|r> scatole con <math|r-1> sbarre. Ogni
  soluzione è una fila di <math|N+r-1> simboli, e la fila è determinata dalla
  scelta dei posti delle sbarre:

  <\equation*>
    #<text|soluzioni>=<binom|N+r-1|r-1>.
  </equation*>

  <figura|<image|aritmetica-1-assets/stelle.pdf|140.0mm|37.5mm||>|Con 4
  stelle e 2 sbarre: la fila <math|\<star\>\<star\>\|\<star\>\<star\>\|> è la
  soluzione <math|2+2+0=4>. Due sbarre vicine, o una sbarra in fondo,
  indicano una scatola vuota.>

  Se invece vogliamo tutti gli <math|x<rsub|i>\<geq\>1>, diamo prima un'unità
  a ogni scatola e distribuiamo le <math|N-r> rimaste: <math|<binom|N-1|r-1>>
  soluzioni (se <math|N\<geq\>r>, altrimenti nessuna).

  <\guidato|Tre interi distinti con somma 100>
    Quanti sottoinsiemi <math|<around|{|a,b,c|}>> di interi positivi distinti
    hanno somma 100?

    <em|Passo 1: terne ordinate.> Le soluzioni positive di <math|a+b+c=100>
    sono <math|<binom|99|2>=4851>.

    <em|Passo 2: togliere le terne con ripetizioni.> Con <math|a=b> serve
    <math|2a+c=100>, cioè <math|1\<leq\>a\<leq\>49>: sono 49 terne. Lo stesso
    per <math|a=c> e per <math|b=c>. Questi casi non si sovrappongono, perché
    <math|a=b=c> darebbe <math|3a=100>, impossibile. Restano
    <math|4851-3\<cdot\>49=4704> terne con componenti distinte.

    <em|Passo 3: dimenticare l'ordine.> Ora ogni insieme compare esattamente
    <math|3!=6> volte (qui la divisione è lecita). Risposta:
    <math|4704/6=784>.
  </guidato>

  <\guidato|Niente numeri vicini (Chirivì et al., es. 50 e 37)>
    Quanti sottoinsiemi di 3 elementi di <math|<around|{|1,\<ldots\>,100|}>>
    non contengono due numeri consecutivi?

    <em|Prima soluzione: i buchi.> Scriviamo l'insieme come
    <math|a\<less\>b\<less\>c>. Contiamo i numeri non scelti in ciascuno dei
    quattro tratti: prima di <math|a>, fra <math|a> e <math|b>, fra <math|b>
    e <math|c>, dopo <math|c>. Sono <math|x,y,z,t> con <math|x+y+z+t=97>, e
    il vincolo dice <math|y,z\<geq\>1>. Diamo un'unità a <math|y> e a
    <math|z>: restano 95 unità libere in 4 scatole, <math|<binom|98|3>> modi.

    <em|Seconda soluzione: lo spostamento.> Togliamo <math|0> ad <math|a>,
    <math|1> a <math|b>, <math|2> a <math|c>. Il vincolo <math|b\<geq\>a+2>,
    <math|c\<geq\>b+2> diventa <math|a\<less\>b-1\<less\>c-2>: tre numeri
    distinti qualsiasi fra 1 e 98. La regola si inverte (si riaggiunge 0, 1,
    2), quindi è una biezione. Ancora <math|<binom|98|3>=152096>.

    Lo stesso spostamento conta le funzioni strettamente crescenti
    <math|f:<around|{|1,\<ldots\>,5|}>\<rightarrow\><around|{|1,\<ldots\>,100|}>>
    con salti di almeno 2: sono <math|<binom|96|5>>, mentre senza vincoli sui
    salti sarebbero <math|<binom|100|5>> (una funzione crescente è il suo
    insieme di valori).
  </guidato>

  <figura|<image|aritmetica-1-assets/buchi.pdf|140.0mm|51.2mm||>|Togliendo 0,
  1, 2 ai tre numeri scelti, i \Sbuchi\T obbligatori spariscono e restano tre
  numeri qualsiasi.>

  <\verifica|2>
    Quanti sottoinsiemi di due elementi ha un insieme di cinque elementi?
    Quante soluzioni naturali ha <math|x+y+z=4>? Spiega perché le due
    risposte sono diverse.
  </verifica>

  <chapter|Dalle ricorrenze alle formule>

  <\inbreve>
    A volte un problema ci dice come ottenere il termine successivo prima di
    darci una formula. Partiamo da un rompicapo con le tessere del domino,
    scopriamo una regola \Spasso dopo passo\T e impariamo a trasformarla in
    una formula esplicita.
  </inbreve>

  <section|Una striscia di tessere>

  Sia <math|T<rsub|n>> il numero di modi di coprire una striscia
  <math|2\<times\>n> con tessere <math|2\<times\>1>, senza sovrapporle e
  senza lasciare buchi. Per <math|n=4> i modi sono cinque.

  <figura|<image|aritmetica-1-assets/tassellazioni.pdf|155.0mm|23.0mm||>|Le
  cinque tassellazioni della striscia <math|2\<times\>4>.>

  Invece di disegnarli tutti, guardiamo come comincia una tassellazione. La
  prima colonna può essere coperta da una tessera verticale: resta una
  striscia di lunghezza <math|n-1>. Oppure è coperta da due tessere
  orizzontali, una sopra l'altra: resta una striscia di lunghezza <math|n-2>.
  Non ci sono altre possibilità e i due casi non si sovrappongono, quindi

  <\equation*>
    T<rsub|n>=T<rsub|n-1>+T<rsub|n-2><space|1em>(n\<geq\>2),<space|2em>T<rsub|0>=T<rsub|1>=1.
  </equation*>

  (La striscia vuota ha una sola tassellazione: quella vuota.) Otteniamo
  <math|1,1,2,3,5,8,13,\<ldots\>>

  <figura|<image|aritmetica-1-assets/domino.pdf|155.0mm|33.8mm||>|Le due
  partenze possibili. Il resto della striscia è un problema dello stesso
  tipo, più piccolo.>

  Contiamo anche in un altro modo, per numero <math|j> di coppie orizzontali.
  Ogni coppia occupa due colonne, quindi restano <math|n-2j> tessere
  verticali e in tutto <math|n-j> \Sblocchi\T. Basta scegliere quali <math|j>
  blocchi sono coppie orizzontali:

  <\equation*>
    T<rsub|n>=<big|sum><rsub|j=0><rsup|\<lfloor\>n/2\<rfloor\>><binom|n-j|j>.
  </equation*>

  (<math|\<lfloor\>x\<rfloor\>> è la parte intera: il più grande intero
  <math|\<leq\>x>.) Per <math|n=4>: <math|1+3+1=5>.

  <section|Che cos'è una successione ricorrente>

  Una <strong|successione> <math|(a<rsub|n>)> assegna un numero a ogni
  <math|n\<in\>\<bbb-N\>>. È <strong|ricorrente> se una regola calcola ogni
  termine dai precedenti. Per esempio

  <\equation*>
    a<rsub|n+1>=3a<rsub|n>-2a<rsub|n-1><space|1em>(n\<geq\>1),<space|2em>a<rsub|0>=0,<space|1em>a<rsub|1>=1
  </equation*>

  produce <math|0,1,3,7,15,31,\<ldots\>> La regola da sola non basta: servono
  i due valori iniziali. Con quelli, però, tutto è determinato.

  <\officina|5. Esistenza e unicità di una successione>
    Perché due dati iniziali bastano? È una frase di <em|unicità>: se due
    successioni <math|(a<rsub|n>)> e <math|(b<rsub|n>)> rispettano la stessa
    ricorrenza e hanno gli stessi primi due termini, allora
    <math|a<rsub|n>=b<rsub|n>> per ogni <math|n>.

    La prova è un'induzione forte. La base è l'ipotesi
    (<math|a<rsub|0>=b<rsub|0>>, <math|a<rsub|1>=b<rsub|1>>). Nel passo, se i
    due termini precedenti coincidono, la regola produce lo stesso numero.

    Questo schema ritorna di continuo: per dimostrare che una formula \Sè
    quella giusta\T, basta controllare che rispetti la regola e che parta
    bene. Non serve confrontare tutti i termini.
  </officina>

  <section|Provare con le potenze>

  La ricorrenza <math|a<rsub|n+1>=3a<rsub|n>-2a<rsub|n-1>> è <strong|lineare
  e omogenea>: se <math|(u<rsub|n>)> e <math|(v<rsub|n>)> la rispettano, la
  rispetta anche <math|A\<cdot\>u<rsub|n>+B\<cdot\>v<rsub|n>> per ogni coppia
  di costanti <math|A,B> (basta sostituire e raccogliere).

  Cerchiamo soluzioni della forma più semplice possibile,
  <math|a<rsub|n>=\<lambda\><rsup|n>> con <math|\<lambda\>\<neq\>0>.
  Sostituendo e dividendo per <math|\<lambda\><rsup|n-1>>:

  <\equation*>
    \<lambda\><rsup|n+1>=3\<lambda\><rsup|n>-2\<lambda\><rsup|n-1><space|1em>\<Longleftrightarrow\><space|1em>\<lambda\><rsup|2>-3\<lambda\>+2=0.
  </equation*>

  È l'<strong|equazione caratteristica>. Le radici sono <math|1> e <math|2>,
  quindi ogni <math|a<rsub|n>=A\<cdot\>1<rsup|n>+B\<cdot\>2<rsup|n>> rispetta
  la regola. Imponiamo i dati iniziali: <math|A+B=0> e <math|A+2B=1>, da cui
  <math|A=-1>, <math|B=1>. Dunque <math|a<rsub|n>=2<rsup|n>-1>.

  <\guidato|Perché abbiamo trovato <em|tutte> le soluzioni>
    Abbiamo trovato una formula che funziona. Perché è proprio la nostra
    successione, e non un'altra?

    Per qualsiasi coppia di dati iniziali <math|a<rsub|0>,a<rsub|1>>, il
    sistema <math|A+B=a<rsub|0>>, <math|A+2B=a<rsub|1>> ha una e una sola
    soluzione. La successione <math|A+B\<cdot\>2<rsup|n>> che ne risulta
    rispetta la regola e parte dagli stessi dati; per l'officina 5 coincide
    con quella cercata. Trovare due soluzioni non basta: bisogna spiegare
    perché le loro combinazioni raggiungono <em|ogni> coppia di dati
    iniziali.
  </guidato>

  Più in generale, per <math|a<rsub|n+2>=c\<cdot\>a<rsub|n+1>+d\<cdot\>a<rsub|n>>
  con <math|d\<neq\>0> l'equazione caratteristica è
  <math|\<lambda\><rsup|2>-c\<lambda\>-d=0>. Se ha due radici distinte
  <math|\<lambda\><rsub|1>,\<lambda\><rsub|2>>, tutte le soluzioni sono
  <math|A\<cdot\>\<lambda\><rsub|1><rsup|n>+B\<cdot\>\<lambda\><rsub|2><rsup|n>>:
  il sistema per <math|A,B> ha determinante
  <math|\<lambda\><rsub|2>-\<lambda\><rsub|1>\<neq\>0>. Se le radici
  coincidono serve un'altra forma, tipicamente
  <math|(A+B*n)\<lambda\><rsup|n>>; questo caso non è stato sviluppato nelle
  lezioni.

  <section|Fibonacci e i dati iniziali>

  La successione di <strong|Fibonacci> ha <math|F<rsub|0>=0>,
  <math|F<rsub|1>=1> e <math|F<rsub|n+2>=F<rsub|n+1>+F<rsub|n>>. L'equazione
  caratteristica <math|\<lambda\><rsup|2>-\<lambda\>-1=0> ha radici

  <\equation*>
    \<varphi\>=<frac|1+<sqrt|5>|2>,<space|2em>\<psi\>=<frac|1-<sqrt|5>|2>,
  </equation*>

  e imponendo i dati iniziali si ottiene la formula di Binet
  <math|F<rsub|n>=(\<varphi\><rsup|n>-\<psi\><rsup|n>)/<sqrt|5>>. È
  sorprendente: una formula piena di radici quadrate dà sempre numeri interi.
  Lo sappiamo per l'officina 5: formula e ricorrenza partono uguali e seguono
  la stessa regola.

  Per le tassellazioni, invece, <math|T<rsub|0>=T<rsub|1>=1>: è la stessa
  regola con la partenza spostata di un passo, quindi
  <math|T<rsub|n>=F<rsub|n+1>>.

  <figura|<image|aritmetica-1-assets/fibonacci.pdf|82.5mm|47.5mm||>|Quadrati
  di lato 1, 1, 2, 3, 5, 8: ogni nuovo lato è la somma dei due precedenti, e
  i quadrati si incastrano sempre in un rettangolo.>

  <\immagine|La macchina e il carburante>
    La ricorrenza è una macchina; i dati iniziali sono ciò che ci metti
    dentro. La stessa macchina produce successioni diverse con partenze
    diverse. Per riconoscere Fibonacci devi controllare sia la regola sia gli
    indici di partenza.
  </immagine>

  <\guidato|Una parità che si ripete (Chirivì et al., es. 4)>
    Sia <math|a<rsub|0>=2>, <math|a<rsub|1>=1> e
    <math|a<rsub|n+1>=a<rsub|n>+a<rsub|n-1>>. Dimostra che <math|a<rsub|n>> è
    pari se e solo se <math|n> è multiplo di 3.

    <em|Esploriamo.> I termini sono <math|2,1,3,4,7,11,18,29,47,76,\<ldots\>>:
    pari, dispari, dispari, pari, dispari, dispari, \<ldots\> Sembra un ciclo
    di lunghezza 3.

    <em|Perché.> La parità di una somma dipende solo dalle parità degli
    addendi: pari + dispari = dispari, dispari + dispari = pari. Quindi la
    parità di ogni termine dipende solo dalle parità dei due precedenti. Da
    (pari, dispari) si passa a dispari, da (dispari, dispari) a pari, da
    (dispari, pari) a dispari: e si è tornati alla coppia (pari, dispari).

    <em|La prova scritta.> Sia <math|P(k)> la frase \S<math|a<rsub|3k>> è
    pari, <math|a<rsub|3k+1>> e <math|a<rsub|3k+2>> sono dispari\T.
    <math|P(0)> è vera (<math|2,1,3>). Se vale <math|P(k)>, allora
    <math|a<rsub|3k+3>=a<rsub|3k+2>+a<rsub|3k+1>> è dispari + dispari, cioè
    pari; <math|a<rsub|3k+4>> è pari + dispari, dispari; <math|a<rsub|3k+5>>
    è dispari + pari, dispari. Vale <math|P(k+1)>, e per induzione vale
    sempre.
  </guidato>

  <\verifica|3>
    Quante tassellazioni ha la striscia <math|2\<times\>5>? Quale formula
    esplicita ha <math|a<rsub|n+1>=3a<rsub|n>-2a<rsub|n-1>> se
    <math|a<rsub|0>=5>, <math|a<rsub|1>=7>?
  </verifica>

  <chapter|Dividere, trovare il MCD, scomporre>

  <\inbreve>
    Tutto il capitolo gira attorno a un solo gesto: la divisione con resto.
    Ripetendola troviamo il massimo comun divisore (Euclide); percorrendola
    all'indietro scriviamo il MCD come combinazione dei due numeri (Bézout);
    da qui segue che la scomposizione in primi è unica.
  </inbreve>

  <section|Divisibilità>

  Diciamo che <math|a> <strong|divide> <math|b>, e scriviamo
  <math|a\<mid\>b>, se <math|b=a\<cdot\>k> per qualche intero <math|k>. Così
  <math|3\<mid\>12> ma <math|12\<nmid\>3>. Ogni intero divide <math|0>;
  <math|0> divide solo <math|0>.

  La regola più usata: <strong|se <math|c> divide due numeri, divide ogni
  loro combinazione intera>. Infatti da <math|a=c*r> e <math|b=c*s> segue
  <math|u*a+v*b=c(u*r+v*s)>.

  Sui naturali la divisibilità è un <em|ordine parziale>: <math|a\<mid\>a>;
  se <math|a\<mid\>b> e <math|b\<mid\>a> allora <math|a=b>; se
  <math|a\<mid\>b> e <math|b\<mid\>c> allora <math|a\<mid\>c>. \SParziale\T
  perché non sempre due numeri sono confrontabili: né <math|2\<mid\>3> né
  <math|3\<mid\>2>. Sugli interi la seconda regola fallisce:
  <math|2\<mid\>-2> e <math|-2\<mid\>2>, ma <math|2\<neq\>-2>.

  <section|La divisione con resto>

  <strong|Teorema.> Per ogni <math|a,b\<in\>\<bbb-Z\>> con <math|b\<neq\>0>
  esistono e sono unici due interi <math|q,r> tali che

  <\equation*>
    a=q*b+r,<space|2em>0\<leq\>r\<less\>\|b\|.
  </equation*>

  <math|q> è il <strong|quoziente>, <math|r> il <strong|resto>. Sulla retta
  dei numeri i multipli di <math|b> sono pali equidistanti; <math|a> cade fra
  due pali consecutivi, e il resto è la distanza dal palo alla sua sinistra.
  Per esempio <math|-17=(-4)\<cdot\>5+3>: il resto resta positivo anche se
  <math|a> è negativo.

  <figura|<image|aritmetica-1-assets/divisione.pdf|155.0mm|30.0mm||>|<math|-17>
  cade fra i multipli <math|-20> e <math|-15> di 5: il resto è la distanza da
  <math|-20>.>

  <\officina|6. Esistenza con il minimo, unicità con \Ssupponiamo due\T>
    Molti teoremi dicono \Sesiste ed è unico\T. Le due metà si dimostrano in
    modo diverso.

    <strong|Esistenza.> Sia <math|b\<gtr\>0>. Fra i numeri non negativi della
    forma <math|a-q*b> (ce ne sono: basta prendere <math|q> molto negativo)
    prendiamo il <em|più piccolo>, <math|r>. Se fosse <math|r\<geq\>b>, anche
    <math|r-b=a-(q+1)b> sarebbe non negativo e più piccolo: assurdo. Quindi
    <math|0\<leq\>r\<less\>b>. Per <math|b\<less\>0> si usa <math|\|b\|> e si
    cambia segno al quoziente.

    <strong|Unicità.> Supponiamo che ci siano <em|due> scritture,
    <math|a=q<rsub|1>b+r<rsub|1>=q<rsub|2>b+r<rsub|2>>, e mostriamo che
    coincidono. Sottraendo, <math|(q<rsub|1>-q<rsub|2>)b=r<rsub|2>-r<rsub|1>>.
    A destra c'è un numero di valore assoluto minore di <math|\|b\|>; a
    sinistra un multiplo di <math|b>. L'unico multiplo di <math|b> così
    piccolo è <math|0>: quindi <math|r<rsub|1>=r<rsub|2>> e
    <math|q<rsub|1>=q<rsub|2>>.

    Ricetta: per l'esistenza, <em|scegli l'oggetto più piccolo che potrebbe
    funzionare e mostra che funziona>; per l'unicità, <em|prendine due e
    mostra che sono uguali>.
  </officina>

  <\attenzione|I limiti sul resto fanno parte del teorema>
    L'uguaglianza <math|a=q*b+r> da sola ha infinite soluzioni
    (<math|17=2\<cdot\>5+7=3\<cdot\>5+2=\<ldots\>>). È la condizione
    <math|0\<leq\>r\<less\>\|b\|> che rende il resto unico. Con divisore
    negativo il limite è <math|\|b\|>, non <math|b>.
  </attenzione>

  <section|Euclide: cambiare i numeri, conservare i divisori>

  Per <math|a,b> non entrambi nulli, <math|gcd(a,b)> è il più grande divisore
  positivo comune. Esiste: <math|1> è comune e i divisori di un numero non
  nullo sono finiti. Inoltre <math|gcd(a,b)=gcd(\|a\|,\|b\|)> e
  <math|gcd(a,0)=\|a\|>.

  L'idea di Euclide: se <math|a=q*b+r>, allora <math|a,b> e <math|b,r> hanno
  <em|esattamente gli stessi divisori comuni>. Un divisore comune di
  <math|a,b> divide <math|r=a-q*b>; un divisore comune di <math|b,r> divide
  <math|a=q*b+r>. Dunque

  <\equation*>
    gcd(a,b)=gcd(b,r).
  </equation*>

  Sostituiamo la coppia <math|(a,b)> con <math|(b,r)>, più piccola, e
  ripetiamo. I resti diminuiscono sempre, quindi prima o poi uno è zero. A
  quel punto <math|gcd(d,0)=d>: il MCD è l'<strong|ultimo resto non nullo>.

  <figura|<image|aritmetica-1-assets/euclide.pdf|145.0mm|61.0mm||>|Euclide
  disegnato: dal rettangolo <math|45\<times\>17> si tolgono quadrati più
  grandi possibile. Due quadrati di lato 17, poi uno di 11, uno di 6, uno di
  5, cinque di 1. Il lato dell'ultimo quadrato, 1, è il MCD: è il quadrato
  più grande che piastrella tutto il rettangolo.>

  <\guidato|Euclide e risalita per <math|45> e <math|17>>
    <em|Discesa.>

    <\equation*>
      <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|3|3|cell-halign|r>|<cwith|1|-1|1|-1|cell-lsep|0.1em>|<cwith|1|-1|1|-1|cell-rsep|0.1em>|<cwith|1|-1|3|3|cell-lsep|2.5em>|<table|<row|<cell|45>|<cell|=2\<cdot\>17+11,>|<cell|17>|<cell|=1\<cdot\>11+6,>>|<row|<cell|11>|<cell|=1\<cdot\>6+5,>|<cell|6>|<cell|=1\<cdot\>5+1,>>|<row|<cell|5>|<cell|=5\<cdot\>1+0.>|<cell|>|<cell|>>>>>
    </equation*>

    L'ultimo resto non nullo è 1: <math|gcd(45,17)=1>.

    <em|Risalita.> Partiamo dalla penultima riga e sostituiamo, un resto alla
    volta, quello della riga precedente:

    <\equation*>
      <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|1|-1|cell-lsep|0.1em>|<cwith|1|-1|1|-1|cell-rsep|0.1em>|<table|<row|<cell|1>|<cell|=6-5=6-(11-6)=2\<cdot\>6-11>>|<row|<cell|>|<cell|=2(17-11)-11=2\<cdot\>17-3\<cdot\>11>>|<row|<cell|>|<cell|=2\<cdot\>17-3(45-2\<cdot\>17)=8\<cdot\>17-3\<cdot\>45.>>>>>
    </equation*>

    <em|Controllo.> <math|8\<cdot\>17-3\<cdot\>45=136-135=1>. Controlla
    sempre alla fine: costa un secondo.
  </guidato>

  <section|Bézout e il lemma di Euclide>

  La risalita funziona sempre: ogni resto è una combinazione intera dei due
  numeri di partenza, e quindi anche l'ultimo resto non nullo. È
  l'<strong|identità di Bézout>:

  <\equation*>
    gcd(a,b)=u*a+v*b<space|2em><text|per opportuni >u,v\<in\>\<bbb-Z\>.
  </equation*>

  Due conseguenze importanti. Prima: ogni divisore comune di <math|a,b>
  <em|divide> il MCD (non solo è più piccolo). Seconda: i numeri della forma
  <math|a*x+b*y> sono esattamente i multipli di <math|d=gcd(a,b)>: sono
  multipli di <math|d> perché <math|d> divide <math|a> e <math|b>; e ogni
  multiplo <math|k*d=(k*u)a+(k*v)b> si ottiene così.

  Due interi sono <strong|coprimi> se il loro MCD è 1.

  <strong|Lemma di Euclide.> Se <math|gcd(r,s)=1> e <math|r\<mid\>s*t>,
  allora <math|r\<mid\>t>. Prova: da <math|u*r+v*s=1>, moltiplicando per
  <math|t>, <math|t=u*r*t+v*s*t>. Entrambi gli addendi sono multipli di
  <math|r>, quindi anche <math|t>.

  In particolare, <strong|se un primo <math|p> divide <math|a*b>, divide
  <math|a> oppure <math|b>>: se non divide <math|a>, i due sono coprimi (i
  divisori di <math|p> sono solo <math|1> e <math|p>) e il lemma dà
  <math|p\<mid\>b>.

  <section|La fattorizzazione è unica>

  Nel capitolo 1 abbiamo visto che ogni <math|n\<geq\>2> è un prodotto di
  primi. Ora mostriamo che il prodotto è unico, a meno dell'ordine.
  Supponiamo <math|p<rsub|1>p<rsub|2>\<cdots\>p<rsub|r>=q<rsub|1>q<rsub|2>\<cdots\>q<rsub|s>>.
  Il primo <math|p<rsub|1>> divide il prodotto di destra, quindi divide uno
  dei <math|q<rsub|j>>; essendo entrambi primi, <math|p<rsub|1>=q<rsub|j>>.
  Cancelliamo questo fattore dai due lati e ripetiamo. Alla fine non possono
  avanzare primi da una sola parte, perché un prodotto di primi non vale mai
  1.

  Raggruppando i primi uguali scriviamo <math|N=p<rsub|1><rsup|\<alpha\><rsub|1>>\<cdots\>p<rsub|k><rsup|\<alpha\><rsub|k>>>.
  I divisori positivi di <math|N> sono esattamente i numeri
  <math|p<rsub|1><rsup|\<beta\><rsub|1>>\<cdots\>p<rsub|k><rsup|\<beta\><rsub|k>>>
  con <math|0\<leq\>\<beta\><rsub|i>\<leq\>\<alpha\><rsub|i>>: un divisore
  non può contenere primi che <math|N> non ha, né più copie. Le scelte degli
  esponenti sono indipendenti, quindi il numero dei divisori è

  <\equation*>
    \<tau\>(N)=(\<alpha\><rsub|1>+1)(\<alpha\><rsub|2>+1)\<cdots\>(\<alpha\><rsub|k>+1).
  </equation*>

  <figura|<image|aritmetica-1-assets/divisori72.pdf|117.5mm|62.5mm||>|I
  divisori di <math|72=2<rsup|3>\<cdot\>3<rsup|2>> formano una griglia
  <math|4\<times\>3>: verso destra si moltiplica per 2, verso l'alto per 3.
  Per <math|12=2<rsup|2>\<cdot\>3> e <math|18=2\<cdot\>3<rsup|2>>, il MCD
  prende il minimo degli esponenti (6), il mcm il massimo (36).>

  Scrivendo due numeri sugli stessi primi (con esponente 0 per quelli
  assenti):

  <\equation*>
    gcd(A,B)=<big|prod><rsub|i>p<rsub|i><rsup|min(\<alpha\><rsub|i>,\<beta\><rsub|i>)>,<space|2em><math-up|mcm>(A,B)=<big|prod><rsub|i>p<rsub|i><rsup|max(\<alpha\><rsub|i>,\<beta\><rsub|i>)>.
  </equation*>

  Un divisore comune non può avere più fattori di ciascuno dei due; un
  multiplo comune deve averne abbastanza per entrambi. Siccome <math|min+max>
  è la somma dei due esponenti, <math|gcd(A,B)\<cdot\><math-up|mcm>(A,B)=A\<cdot\>B>.

  <\guidato|Un prodotto diventa una distribuzione>
    Quante terne ordinate di interi positivi hanno <math|x*y*z=2000>?

    <em|Idea.> <math|2000=2<rsup|4>\<cdot\>5<rsup|3>>. Per la fattorizzazione
    unica, scegliere <math|x,y,z> vuol dire distribuire i quattro fattori 2 e
    i tre fattori 5 fra tre scatole.

    <em|Conto.> Per i 2: stelle e sbarre con 4 stelle e 2 sbarre,
    <math|<binom|6|2>=15> modi. Per i 5: <math|<binom|5|2>=10> modi. In tutto
    <math|15\<cdot\>10=150> terne. (I divisori di 2000, invece, sono solo
    <math|(4+1)(3+1)=20>.)
  </guidato>

  <section|Quanti 2 ci sono in 19!>

  Per un primo <math|p>, <math|v<rsub|p>(N)> è l'esponente di <math|p> nella
  fattorizzazione di <math|N>: per esempio <math|v<rsub|2>(24)=3>. Vale
  <math|v<rsub|p>(A*B)=v<rsub|p>(A)+v<rsub|p>(B)>, quindi
  <math|v<rsub|p>(n!)> è la somma dei <math|v<rsub|p>(m)> per
  <math|m=1,\<ldots\>,n>.

  Mettiamo sopra ogni numero <math|m> una pila di <math|v<rsub|p>(m)> gettoni
  e contiamo i gettoni <em|per righe> invece che per colonne. La prima riga
  ha un gettone su ogni multiplo di <math|p>, la seconda su ogni multiplo di
  <math|p<rsup|2>>, e così via. È la <strong|formula di Legendre>:

  <\equation*>
    v<rsub|p>(n!)=<around*|\<lfloor\>|<frac|n|p>|\<rfloor\>>+<around*|\<lfloor\>|<frac|n|p<rsup|2>>|\<rfloor\>>+<around*|\<lfloor\>|<frac|n|p<rsup|3>>|\<rfloor\>>+\<cdots\>
  </equation*>

  La somma è finita: quando <math|p<rsup|j>\<gtr\>n> i termini sono zero.

  <figura|<image|aritmetica-1-assets/legendre.pdf|155.0mm|50.0mm||>|Contando
  i gettoni per righe: <math|v<rsub|2>(19!)=9+4+2+1=16>.>

  È un esempio perfetto di doppio conteggio (officina 4): stesso insieme di
  gettoni, contato per colonne e per righe.

  <section|Euclide nascosto negli esponenti>

  Per <math|a,b\<gtr\>0> vale

  <\equation*>
    gcd(3<rsup|a>-1,3<rsup|b>-1)=3<rsup|gcd(a,b)>-1.
  </equation*>

  Se <math|a\<geq\>b>, togliamo un multiplo del secondo numero scelto per
  cancellare <math|3<rsup|a>>:

  <\equation*>
    (3<rsup|a>-1)-3<rsup|a-b>(3<rsup|b>-1)=3<rsup|a-b>-1.
  </equation*>

  Il MCD non cambia (abbiamo tolto un multiplo), e sugli esponenti la coppia
  <math|(a,b)> è diventata <math|(a-b,b)>. È l'algoritmo di Euclide fatto per
  sottrazioni, ma sugli esponenti! Ripetendo, la somma degli esponenti cala
  finché uno dei due diventa 0; allora l'altro è <math|d=gcd(a,b)> e resta
  <math|gcd(3<rsup|d>-1,0)=3<rsup|d>-1>. Il 3 può essere sostituito da
  qualsiasi intero <math|c\<geq\>2>.

  <\verifica|4>
    Trova MCD e mcm di 72 e 90, il numero dei divisori positivi di 72 e
    <math|v<rsub|3>(10!)>.
  </verifica>

  <chapter|Equazioni negli interi>

  <\inbreve>
    Una retta del piano contiene infiniti punti, ma quanti hanno coordinate
    intere? Bézout risponde subito se ce ne sono; poi un solo \Spasso\T li
    descrive tutti. Per una differenza di quadrati, invece, l'equazione si
    trasforma in una scelta di divisori.
  </inbreve>

  <section|Quando c'è una soluzione>

  Un'equazione <strong|diofantea> chiede soluzioni intere. Consideriamo

  <\equation*>
    a*x+b*y=c,<space|2em>a,b<text| non entrambi nulli,><space|2em>d=gcd(a,b).
  </equation*>

  <strong|Teorema.> L'equazione ha soluzioni intere se e solo se
  <math|d\<mid\>c>.

  <\officina|7. Necessario e sufficiente>
    Un \Sse e solo se\T contiene due frasi diverse, e conviene sempre
    separarle.

    <strong|Solo se (la condizione è necessaria).> <em|Se c'è una soluzione,
    allora <math|d\<mid\>c>.> Infatti <math|d> divide <math|a> e <math|b>,
    quindi divide <math|a*x+b*y=c>. Questa direzione dice quando è inutile
    cercare.

    <strong|Se (la condizione è sufficiente).> <em|Se <math|d\<mid\>c>,
    allora una soluzione c'è.> Scriviamo <math|c=d*k> e, per Bézout,
    <math|a*u+b*v=d>. Moltiplicando per <math|k>:
    <math|(x<rsub|0>,y<rsub|0>)=(k*u,k*v)> è una soluzione. Questa direzione
    costruisce la soluzione.

    Domandati sempre: quale direzione sto dimostrando? Che cosa so, e che
    cosa devo raggiungere?
  </officina>

  Il caso <math|a=b=0> va separato prima di dividere per il MCD: per
  <math|c=0> ogni coppia è soluzione, per <math|c\<neq\>0> nessuna.

  <section|Da una soluzione a tutte>

  Supponiamo <math|d\<mid\>c> e fissiamo una soluzione
  <math|(x<rsub|0>,y<rsub|0>)>. Se <math|(x,y)> è un'altra soluzione,
  sottraendo le due equazioni e dividendo per <math|d>:

  <\equation*>
    <frac|a|d>(x-x<rsub|0>)=-<frac|b|d>(y-y<rsub|0>).
  </equation*>

  Ora <math|a/d> e <math|b/d> sono coprimi. Se <math|b\<neq\>0>, il lemma di
  Euclide dice che <math|b/d> divide <math|x-x<rsub|0>>: scriviamo
  <math|x-x<rsub|0>=(b/d)t>. Sostituendo si trova <math|y>:

  <\equation*>
    x=x<rsub|0>+<frac|b|d>t,<space|2em>y=y<rsub|0>-<frac|a|d>t,<space|2em>t\<in\>\<bbb-Z\>.
  </equation*>

  Viceversa ogni <math|t> dà una soluzione: sostituendo, i termini con
  <math|t> si cancellano. Abbiamo così entrambe le inclusioni: ogni soluzione
  ha questa forma, e ogni coppia di questa forma è una soluzione. (Se
  <math|b=0>, <math|x=c/a> è fissato e <math|y> è libero; la formula lo
  descrive ancora, perché <math|a/d=\<pm\>1>.)

  <figura|<image|aritmetica-1-assets/reticolo.pdf|140.0mm|75.0mm||>|Le
  soluzioni intere di <math|2x+3y=9> sono i punti della retta che cadono
  sugli incroci della quadrettatura. Da uno all'altro si va sempre con lo
  stesso passo: <math|+3> in orizzontale, <math|-2> in verticale.>

  <\immagine|Camminare sulla retta>
    Le soluzioni sono punti interi allineati, equidistanti. Una soluzione è
    il punto di partenza; il vettore <math|(b/d,-a/d)> è il passo. Dividere
    per il MCD serve proprio a rendere il passo il più corto possibile: con
    un passo più lungo salteremmo delle soluzioni.
  </immagine>

  <section|Vincoli sul parametro>

  <\guidato|<math|11x+41y=2> con <math|\|x\|,\|y\|\<leq\>100>>
    <em|Una soluzione.> Euclide: <math|41=3\<cdot\>11+8>, <math|11=8+3>,
    <math|8=2\<cdot\>3+2>, <math|3=2+1>. Risalendo:

    <\equation*>
      1=3-2=3\<cdot\>3-8=3\<cdot\>11-4\<cdot\>8=15\<cdot\>11-4\<cdot\>41.
    </equation*>

    Moltiplicando per 2: <math|(x<rsub|0>,y<rsub|0>)=(30,-8)>.

    <em|Tutte le soluzioni.> <math|x=30+41t>, <math|y=-8-11t>,
    <math|t\<in\>\<bbb-Z\>>.

    <em|Il vincolo.> <math|\|30+41t\|\<leq\>100> significa
    <math|-130\<leq\>41t\<leq\>70>, cioè <math|-3,17\<ldots\>\<leq\>t\<leq\>1,7\<ldots\>>,
    quindi <math|t\<in\><around|{|-3,-2,-1,0,1|}>>. I valori di <math|y> sono
    <math|25,14,3,-8,-19>, tutti entro 100. Le soluzioni sono esattamente
    cinque.
  </guidato>

  In generale ogni vincolo su <math|x> o su <math|y> diventa un intervallo
  per <math|t>; si intersecano gli intervalli e si contano gli interi dentro.
  Per <math|L\<leq\>t\<leq\>U> gli interi sono
  <math|max(0,\<lfloor\>U\<rfloor\>-\<lceil\>L\<rceil\>+1)>, dove
  <math|\<lceil\>L\<rceil\>> è il più piccolo intero <math|\<geq\>L>.
  Attenzione: dividendo una disuguaglianza per un numero negativo il verso si
  inverte.

  <section|Differenze di quadrati>

  Per <math|x<rsup|2>-y<rsup|2>=n> usiamo la scomposizione
  <math|x<rsup|2>-y<rsup|2>=(x+y)(x-y)>, che si vede anche con un disegno.

  <figura|<image|aritmetica-1-assets/quadrati.pdf|150.0mm|56.2mm||>|Togliendo
  un quadrato <math|y\<times\>y> da un quadrato <math|x\<times\>x> restano
  due pezzi che si ricompongono in un rettangolo <math|(x+y)\<times\>(x-y)>.>

  Poniamo <math|u=x+y> e <math|v=x-y>. Allora

  <\equation*>
    u*v=n,<space|2em>x=<frac|u+v|2>,<space|2em>y=<frac|u-v|2>.
  </equation*>

  <math|x,y> sono interi esattamente quando <math|u> e <math|v> hanno la
  stessa parità. Quindi, per <math|n\<neq\>0>: si prendono tutti i divisori
  interi <math|u> di <math|n> (anche negativi), si pone <math|v=n/u> e si
  scartano le coppie di parità diversa.

  Che cosa succede alla parità? Se <math|n> è dispari, ogni coppia di fattori
  è dispari: tutto bene. Se <math|n=4m>, servono due fattori pari,
  <math|u=2e>, <math|v=2m/e>. Se <math|n> è pari ma non multiplo di 4,
  nessuna coppia va bene: due dispari danno un prodotto dispari, due pari un
  multiplo di 4. (Per <math|n=0> si ha <math|x=\<pm\>y>: due rette intere di
  soluzioni.)

  <\guidato|<math|x<rsup|2>-y<rsup|2>=15> e <math|x<rsup|2>-y<rsup|2>=26>>
    <math|15> è dispari, quindi va bene ogni coppia. I divisori positivi
    <math|u=1,3,5,15> danno <math|(x,y)=(8,-7),(4,-1),(4,1),(8,7)>; quelli
    negativi danno le quattro coppie opposte. Otto soluzioni.

    <math|26=2\<cdot\>13> è pari ma non multiplo di 4: le fattorizzazioni
    <math|1\<cdot\>26> e <math|2\<cdot\>13> (e quelle con i segni) hanno
    sempre parità diverse. Nessuna soluzione.
  </guidato>

  Nel prossimo capitolo rileggeremo questa impossibilità con i resti: un
  quadrato diviso per 4 dà resto 0 o 1, quindi una differenza di quadrati non
  dà mai resto 2.

  <\verifica|5>
    Risolvi <math|6x+9y=3>. Quante soluzioni hanno <math|x,y\<geq\>0>?
    L'equazione <math|6x+9y=4> ha soluzioni intere?
  </verifica>

  <chapter|Dagli interi alle classi>

  <\inbreve>
    Capita spesso di voler considerare \Suguali\T oggetti diversi: due
    frazioni come <math|1/2> e <math|2/4>, due numeri con lo stesso resto. Le
    relazioni di equivalenza rendono precisa questa idea. Con esse costruiamo
    i resti come nuovi numeri, impariamo a farci i conti e scopriamo quando
    si può dividere.
  </inbreve>

  <section|Equivalenze e classi>

  Una relazione <math|\<sim\>> su un insieme <math|X> è una <strong|relazione
  di equivalenza> se è

  <\itemize>
    <item><strong|riflessiva>: <math|x\<sim\>x>;

    <item><strong|simmetrica>: se <math|x\<sim\>y> allora <math|y\<sim\>x>;

    <item><strong|transitiva>: se <math|x\<sim\>y> e <math|y\<sim\>z> allora
    <math|x\<sim\>z>.
  </itemize>

  La <strong|classe> di <math|x> è <math|[x]=<around|{|y\<in\>X:y\<sim\>x|}>>:
  tutti gli oggetti equivalenti a <math|x>.

  <strong|Due classi o coincidono o non si toccano.> Se <math|z> sta sia in
  <math|[x]> sia in <math|[y]>, allora <math|x\<sim\>z> e <math|z\<sim\>y>
  (simmetria), quindi <math|x\<sim\>y> (transitività); e chiunque sia
  equivalente a <math|x> lo è anche a <math|y>, e viceversa: <math|[x]=[y]>.
  Poiché ogni <math|x> sta nella propria classe, le classi dividono <math|X>
  in pezzi separati che lo coprono tutto: una <strong|partizione>.

  L'insieme delle classi si chiama <strong|quoziente> e si scrive
  <math|X/\<sim\>>. Ogni elemento di una classe ne è un
  <strong|rappresentante>. Attenzione alla differenza: <math|[x]=[y]> nel
  quoziente non vuol dire <math|x=y> in <math|X>.

  <section|Un esempio familiare: le frazioni>

  Una frazione <math|a/b> è scritta con una coppia <math|(a,b)>,
  <math|b\<neq\>0>, ma coppie diverse danno lo stesso numero:
  <math|1/2=2/4=3/6>. Diciamo <math|(a,b)\<sim\>(c,d)> se <math|a*d=b*c>. È
  un'equivalenza (per la transitività: da <math|a*d=b*c> e <math|c*f=d*e>
  segue <math|a*d*f=b*c*f=b*d*e>, e cancellando <math|d\<neq\>0> resta
  <math|a*f=b*e>). Un numero razionale <em|è> una classe di coppie.

  <figura|<image|aritmetica-1-assets/frazioni.pdf|117.5mm|70.0mm||>|Disegniamo
  la coppia <math|(a,b)> come il punto di coordinate <math|(b,a)>. Le coppie
  equivalenti stanno sulla stessa retta per l'origine: un razionale è una
  retta, e le sue frazioni sono i punti interi sopra di essa.>

  Le operazioni si definiscono sui rappresentanti:

  <\equation*>
    [(a,b)]+[(c,d)]=[(a*d+b*c,b*d)],<space|2em>[(a,b)]\<cdot\>[(c,d)]=[(a*c,b*d)].
  </equation*>

  C'è però una domanda delicata: se cambio rappresentanti, il risultato
  cambia?

  <\officina|8. Buona definizione>
    Quando definisci un'operazione su classi usando dei rappresentanti, devi
    controllare che il risultato non dipenda da quali rappresentanti hai
    scelto. Si dice che l'operazione è <strong|ben definita>.

    <em|Come si fa.> Prendi due scelte diverse, <math|x\<sim\>x<rprime|'>> e
    <math|y\<sim\>y<rprime|'>>, e dimostra che i risultati sono equivalenti.
    Per il prodotto di frazioni: se <math|a*b<rprime|'>=a<rprime|'>b> e
    <math|c*d<rprime|'>=c<rprime|'>d>, moltiplicando membro a membro
    <math|(a*c)(b<rprime|'>d<rprime|'>)=(a<rprime|'>c<rprime|'>)(b*d)>, cioè
    <math|(a*c,b*d)\<sim\>(a<rprime|'>c<rprime|'>,b<rprime|'>d<rprime|'>)>.

    <em|Un esempio che fallisce.> La regola \S<math|a/b\<mapsto\>a>\T (il
    numeratore) non è una funzione sui razionali: <math|1/2=2/4> ma darebbe
    <math|1> e <math|2>. Una \Sdefinizione\T che dipende dal nome
    dell'oggetto non definisce nulla.
  </officina>

  <section|Stesso resto, stessa classe>

  Fissato <math|n\<geq\>1>, diciamo che <math|a> è <strong|congruo> a
  <math|b> modulo <math|n> se <math|n> divide la loro differenza:

  <\equation*>
    a\<equiv\>b<pmod|n><space|1em>\<Longleftrightarrow\><space|1em>n\<mid\>(a-b).
  </equation*>

  È un'equivalenza: <math|n\<mid\>0>; <math|n\<mid\>(a-b)\<Rightarrow\>n\<mid\>(b-a)>;
  e <math|(a-b)+(b-c)=a-c>. La classe di <math|a> è
  <math|[a]<rsub|n>=<around|{|\<ldots\>,a-n,a,a+n,a+2n,\<ldots\>|}>>. Per la
  divisione con resto ogni classe contiene esattamente un numero fra <math|0>
  e <math|n-1>: il resto. Le classi sono quindi <math|n>, e il loro insieme
  si scrive <math|\<bbb-Z\>/n\<bbb-Z\>>.

  <figura|<image|aritmetica-1-assets/spirale5.pdf|101.0mm|98.9mm||>|Avvolgiamo
  gli interi su una spirale che fa un giro ogni cinque numeri. I numeri sullo
  stesso raggio hanno lo stesso resto: ogni raggio è una classe modulo 5.>

  Per esempio <math|-3\<equiv\>2\<equiv\>17<pmod|5>>. Il numero 17 e la
  classe <math|[17]<rsub|5>> sono oggetti diversi, ma
  <math|[17]<rsub|5>=[2]<rsub|5>>. Modulo 1 c'è una sola classe: ogni
  congruenza modulo 1 è vera.

  <section|Fare i conti con le classi>

  Definiamo <math|[a]<rsub|n>+[b]<rsub|n>=[a+b]<rsub|n>> e
  <math|[a]<rsub|n>\<cdot\>[b]<rsub|n>=[a*b]<rsub|n>>. Sono ben definite: se
  <math|a\<equiv\>a<rprime|'>> e <math|b\<equiv\>b<rprime|'>>, la differenza
  delle somme è <math|(a-a<rprime|'>)+(b-b<rprime|'>)>, e quella dei prodotti
  è

  <\equation*>
    a*b-a<rprime|'>b<rprime|'>=(a-a<rprime|'>)b+a<rprime|'>(b-b<rprime|'>),
  </equation*>

  entrambe multiple di <math|n>. Le proprietà degli interi (associativa,
  commutativa, distributiva) passano alle classi; gli elementi neutri sono
  <math|[0]> e <math|[1]>.

  In pratica: <strong|si può ridurre prima di calcolare>.
  <math|85\<cdot\>38\<equiv\>1\<cdot\>3=3<pmod|7>>, senza fare il prodotto. E
  le potenze: <math|2<rsup|10>=(2<rsup|5>)<rsup|2>\<equiv\>(-1)<rsup|2>=1<pmod|33>>.

  <strong|Criteri di divisibilità.> Se <math|N=<big|sum><rsub|j>c<rsub|j>10<rsup|j>>
  ha cifre <math|c<rsub|j>>: poiché <math|10\<equiv\>1> modulo 3 e modulo 9,
  <math|N\<equiv\>c<rsub|0>+c<rsub|1>+c<rsub|2>+\<cdots\>>. Poiché
  <math|10\<equiv\>-1<pmod|11>>, <math|N\<equiv\>c<rsub|0>-c<rsub|1>+c<rsub|2>-\<cdots\>>.
  Ecco perché 12345 è multiplo di 3 (somma delle cifre 15).

  <section|Inversi e cancellazione>

  Sia <math|n\<geq\>2>. La classe <math|[a]<rsub|n>> è <strong|invertibile>
  se esiste <math|[u]<rsub|n>> con <math|[a][u]=[1]>, cioè <math|a*u+n*v=1>
  per qualche intero <math|v>. Per Bézout:

  <\equation*>
    [a]<rsub|n><text| è invertibile>\<Longleftrightarrow\>gcd(a,n)=1.
  </equation*>

  Il coefficiente di Bézout <em|è> l'inverso: da
  <math|8\<cdot\>17-3\<cdot\>45=1> segue <math|17<rsup|-1>\<equiv\>8<pmod|45>>.
  L'inverso, se c'è, è unico.

  <figura|<image|aritmetica-1-assets/tabelle.pdf|140.0mm|53.8mm||>|Le
  tabelline modulo 5 e modulo 6. Gli 1 cerchiati mostrano gli inversi: modulo
  5 ogni riga non nulla ne ha uno. Modulo 6 le righe di 2, 3, 4 non ne hanno,
  e contengono zeri \Ssorprendenti\T (in grigio):
  <math|2\<cdot\>3\<equiv\>0>.>

  <\attenzione|Dividere può cambiare il modulo>
    Da <math|c*a\<equiv\>c*b<pmod|n>> non segue <math|a\<equiv\>b<pmod|n>>:
    per esempio <math|2\<cdot\>1\<equiv\>2\<cdot\>4<pmod|6>>, ma
    <math|1\<nequiv\>4<pmod|6>>. La regola giusta, con <math|d=gcd(c,n)>, è

    <\equation*>
      c*a\<equiv\>c*b<pmod|n><space|1em>\<Longleftrightarrow\><space|1em>a\<equiv\>b<pmod|n/d>.
    </equation*>

    Infatti <math|n\<mid\>c(a-b)> equivale a <math|(n/d)\<mid\>(c/d)(a-b)>, e
    <math|n/d,c/d> sono coprimi (lemma di Euclide). Nell'esempio:
    <math|1\<equiv\>4<pmod|3>>. Il modulo resta lo stesso solo se <math|c> è
    invertibile.
  </attenzione>

  <section|Congruenze lineari>

  La congruenza <math|a*x\<equiv\>b<pmod|n>> è l'equazione diofantea
  <math|a*x+n*y=b> travestita. Con <math|d=gcd(a,n)>, ha soluzioni se e solo
  se <math|d\<mid\>b>. In quel caso si dividono <em|tutti e tre> i numeri per
  <math|d>:

  <\equation*>
    <frac|a|d>x\<equiv\><frac|b|d><pmod|<frac|n|d>>.
  </equation*>

  Ora <math|a/d> è invertibile modulo <math|n/d>: c'è una sola classe di
  soluzioni modulo <math|n/d>. Modulo il vecchio <math|n> sono <math|d>
  classi: <math|x<rsub|0>,x<rsub|0>+n/d,\<ldots\>,x<rsub|0>+(d-1)n/d>.

  <\guidato|<math|6x\<equiv\>9<pmod|15>>>
    <em|Si può?> <math|gcd(6,15)=3> divide 9: sì.

    <em|Riduci.> Dividendo tutto per 3: <math|2x\<equiv\>3<pmod|5>>.

    <em|Inverti.> <math|2\<cdot\>3=6\<equiv\>1<pmod|5>>, quindi
    <math|2<rsup|-1>\<equiv\>3> e <math|x\<equiv\>9\<equiv\>4<pmod|5>>.

    <em|Torna al modulo iniziale.> Modulo 15 le soluzioni sono <math|4,9,14>.
    Controllo: <math|6\<cdot\>4=24\<equiv\>9>,
    <math|6\<cdot\>9=54\<equiv\>9>, <math|6\<cdot\>14=84\<equiv\>9<pmod|15>>.
    Invece <math|6x\<equiv\>8<pmod|15>> non ha soluzioni: <math|3\<nmid\>8>.
  </guidato>

  <\guidato|Una ricorrenza letta con i resti (Chirivì et al., es. 2)>
    Sia <math|a<rsub|0>=0>, <math|a<rsub|1>=1>,
    <math|a<rsub|n+1>=5a<rsub|n>-6a<rsub|n-1>>. Dimostra che (i)
    <math|gcd(a<rsub|n>,6)=1> per ogni <math|n\<geq\>1>; (ii)
    <math|5\<mid\>a<rsub|n>> se e solo se <math|n> è pari.

    <em|Formula.> L'equazione caratteristica
    <math|\<lambda\><rsup|2>-5\<lambda\>+6=0> ha radici 2 e 3; con i dati
    iniziali, <math|a<rsub|n>=3<rsup|n>-2<rsup|n>>.

    (i) Modulo 2: <math|3<rsup|n>-2<rsup|n>\<equiv\>1-0=1>. Modulo 3:
    <math|3<rsup|n>-2<rsup|n>\<equiv\>-2<rsup|n>>, e <math|2<rsup|n>> non è
    multiplo di 3. Quindi né 2 né 3 dividono <math|a<rsub|n>>.

    (ii) Modulo 5, <math|3\<equiv\>-2>, quindi
    <math|a<rsub|n>\<equiv\>(-2)<rsup|n>-2<rsup|n>=((-1)<rsup|n>-1)\<cdot\>2<rsup|n>>.
    Il fattore <math|2<rsup|n>> è invertibile modulo 5, quindi
    <math|a<rsub|n>\<equiv\>0> esattamente quando <math|(-1)<rsup|n>=1>, cioè
    per <math|n> pari.

    <em|Senza la formula.> Si può anche leggere la ricorrenza modulo 5:
    <math|a<rsub|n+1>\<equiv\>-6a<rsub|n-1>\<equiv\>-a<rsub|n-1>>. Quindi
    <math|5\<mid\>a<rsub|n+1>\<Longleftrightarrow\>5\<mid\>a<rsub|n-1>>, e
    basta guardare <math|a<rsub|0>=0> e <math|a<rsub|1>=1>.
  </guidato>

  <\guidato|Coppie che si annullano modulo <math|2<rsup|100>> (Chirivì et
  al., es. 47)>
    Quante coppie ordinate <math|(x,y)> di classi modulo <math|2<rsup|100>>
    hanno <math|x*y=0>?

    <em|Riscaldamento: modulo 8.> Disegniamo la tabella <math|8\<times\>8> e
    mettiamo un punto dove <math|x*y\<equiv\>0<pmod|8>>. I punti sono 20. Ma
    guarda <em|come> sono distribuiti: dipende solo da quante volte 2 divide
    <math|x>. Se <math|x> è dispari, serve <math|y\<equiv\>0>: un punto. Se
    <math|x> è il doppio di un dispari (2 o 6), serve <math|4\<mid\>y>: due
    punti. Se <math|x=4>, serve <math|y> pari: quattro punti. Se <math|x=0>,
    va bene tutto: otto punti.

    <em|L'idea generale.> Scriviamo <math|x=2<rsup|\<alpha\>>\<cdot\>u> con
    <math|u> dispari e <math|0\<leq\>\<alpha\>\<leq\>99> (oppure <math|x=0>).
    Poiché <math|u> è invertibile, <math|x*y\<equiv\>0<pmod|2<rsup|100>>>
    equivale a <math|2<rsup|100-\<alpha\>>\<mid\>y>: i <math|y> buoni sono i
    multipli di <math|2<rsup|100-\<alpha\>>>, cioè <math|2<rsup|\<alpha\>>>
    classi.

    <em|Quanti <math|x> per ogni <math|\<alpha\>>?> I multipli di
    <math|2<rsup|\<alpha\>>> sono <math|2<rsup|100-\<alpha\>>>; togliendo
    quelli di <math|2<rsup|\<alpha\>+1>> ne restano
    <math|2<rsup|99-\<alpha\>>>.

    <em|Somma.> Per ogni <math|\<alpha\>> le coppie sono
    <math|2<rsup|99-\<alpha\>>\<cdot\>2<rsup|\<alpha\>>=2<rsup|99>>, sempre
    lo stesso numero! Con 100 valori di <math|\<alpha\>> e il caso <math|x=0>
    (che dà <math|2<rsup|100>> coppie):

    <\equation*>
      100\<cdot\>2<rsup|99>+2<rsup|100>=51\<cdot\>2<rsup|100>.
    </equation*>

    <em|Controllo con 8 = <math|2<rsup|3>>.> La stessa idea dà
    <math|3\<cdot\>2<rsup|2>+2<rsup|3>=20>. Coincide con la tabella.
  </guidato>

  <figura|<image|aritmetica-1-assets/griglia8.pdf|105.0mm|72.5mm||>|Le coppie
  <math|(x,y)> con <math|x*y\<equiv\>0<pmod|8>>: in ogni riga il numero di
  punti dipende solo dalla potenza di 2 che divide <math|x>.>

  <\verifica|6>
    Trova l'inverso di 5 modulo 12 e tutte le soluzioni di
    <math|8x\<equiv\>4<pmod|12>>. Distingui la classe nel modulo ridotto
    dalle classi nel modulo iniziale.
  </verifica>

  <chapter|Ricomporre i resti>

  <\inbreve>
    Se conosci il resto di un numero diviso per 3 e il resto diviso per 5,
    conosci il resto diviso per 15. Questo è il teorema cinese. Lo usiamo
    prima come tecnica per risolvere sistemi, poi lo riconosciamo come una
    \Straduzione\T fra due mondi che conserva i calcoli.
  </inbreve>

  <section|Una sostituzione risolve il sistema>

  Consideriamo il sistema

  <\equation*>
    x\<equiv\>a<pmod|m>,<space|2em>x\<equiv\>b<pmod|n>.
  </equation*>

  La prima congruenza dice <math|x=a+m*k> per qualche intero <math|k>.
  Sostituendo nella seconda resta una congruenza lineare in <math|k>:

  <\equation*>
    m*k\<equiv\>b-a<pmod|n>.
  </equation*>

  Dal capitolo precedente, con <math|d=gcd(m,n)>: c'è soluzione se e solo se
  <math|d\<mid\>(b-a)>; in quel caso <math|k> è determinato modulo
  <math|n/d>, e quindi <math|x=a+m*k> è determinato modulo
  <math|m*n/d=<math-up|mcm>(m,n)>.

  <strong|Teorema cinese (forma generale).> Il sistema è risolubile se e solo
  se <math|a\<equiv\>b<pmod|gcd(m,n)>>; in tal caso le soluzioni formano
  un'unica classe modulo <math|<math-up|mcm>(m,n)>. Se <math|m,n> sono
  coprimi la condizione è sempre vera e il periodo è <math|m*n>.

  <\guidato|Moduli coprimi e non coprimi>
    <em|Coprimi.> <math|x\<equiv\>2<pmod|3>>, <math|x\<equiv\>3<pmod|5>>. Da
    <math|x=2+3k>: <math|3k\<equiv\>1<pmod|5>>, quindi <math|k\<equiv\>2> e
    <math|x\<equiv\>8<pmod|15>>.

    <em|Non coprimi.> <math|x\<equiv\>1<pmod|4>>, <math|x\<equiv\>3<pmod|6>>.
    Qui <math|d=2> divide <math|3-1>: si può. Da <math|x=1+4k>:
    <math|4k\<equiv\>2<pmod|6>>, cioè (dividendo tutto per 2)
    <math|2k\<equiv\>1<pmod|3>>, quindi <math|k\<equiv\>2<pmod|3>> e
    <math|x\<equiv\>9<pmod|12>>.

    <em|Impossibile.> Se il secondo resto fosse 2, il sistema chiederebbe un
    <math|x> dispari (resto 1 modulo 4) e pari (resto 2 modulo 6):
    <math|2\<nmid\>(2-1)>.
  </guidato>

  <section|Costruire la soluzione con Bézout>

  Se <math|gcd(m,n)=1>, da Bézout <math|u*m+v*n=1>. Allora

  <\equation*>
    x=a\<cdot\>v*n+b\<cdot\>u*m
  </equation*>

  risolve il sistema. Il motivo è bello: <math|v*n> ha resto 1 modulo
  <math|m> e resto 0 modulo <math|n>; <math|u*m> fa il contrario. Sono due
  \Sinterruttori\T, uno per ciascuna componente.

  L'<em|unicità> si vede senza formule: se <math|x> e <math|y> hanno gli
  stessi due resti, <math|m> e <math|n> dividono entrambi <math|x-y>, quindi
  lo divide <math|<math-up|mcm>(m,n)> (che è <math|m*n> se sono coprimi).

  Con più moduli si ricompongono due congruenze alla volta, controllando ogni
  volta la compatibilità. Una potenza di un primo non si può sostituire con
  il primo: sapere <math|x> modulo 9 dice di più che saperlo modulo 3.

  <section|La griglia dei resti>

  Mettiamo ogni numero da 0 a 14 nella casella di una griglia
  <math|3\<times\>5> individuata dai suoi due resti, modulo 3 (riga) e modulo
  5 (colonna). Succede qualcosa di notevole: <em|ogni casella riceve
  esattamente un numero>. Con una griglia <math|2\<times\>4> e i numeri da 0
  a 7, invece, metà delle caselle resta vuota.

  <figura|<image|aritmetica-1-assets/cinese.pdf|155.0mm|60.0mm||>|A sinistra
  3 e 5 sono coprimi: i quindici numeri riempiono le quindici caselle. A
  destra 2 e 4 non lo sono: un numero pari ha resto pari anche modulo 4,
  quindi le caselle con resti di parità diversa restano vuote.>

  <\officina|9. Contare invece di costruire>
    Perché la griglia <math|3\<times\>5> si riempie? Si può dimostrare senza
    costruire nulla.

    La regola \Snumero <math|\<mapsto\>> (resto mod 3, resto mod 5)\T va
    dalle 15 classi modulo 15 alle 15 caselle. È <strong|iniettiva>: se due
    numeri hanno gli stessi due resti, la loro differenza è multipla di 3 e
    di 5, quindi di 15: sono la stessa classe. Ma una funzione iniettiva fra
    due insiemi finiti con lo <em|stesso> numero di elementi è anche
    suriettiva (capitolo 2). Quindi ogni casella è colpita: ogni sistema ha
    soluzione.

    È uno schema da tenere a mente: <em|fra insiemi finiti della stessa
    grandezza, \Siniettiva\T basta per \Sbiiettiva\T>. L'iniettività è spesso
    facile (si confrontano due elementi), la suriettività no.
  </officina>

  <section|Anelli e mappe che conservano i calcoli>

  Un <strong|anello> è un insieme con una somma e un prodotto che si
  comportano come negli interi: la somma è associativa e commutativa, ha uno
  zero e gli opposti; il prodotto è associativo; valgono le leggi
  distributive. Noi useremo anelli commutativi con un'unità <math|1>. Esempi:
  <math|\<bbb-Z\>>, <math|\<bbb-Z\>/n\<bbb-Z\>>, <math|\<bbb-Q\>>.

  Un <strong|campo> è un anello commutativo con <math|1\<neq\>0> in cui ogni
  elemento non nullo ha un inverso: si può dividere.
  <math|\<bbb-Q\>,\<bbb-R\>,\<bbb-C\>> sono campi; <math|\<bbb-Z\>> no (2 non
  ha inverso intero).

  Il <strong|prodotto> <math|A\<times\>B> di due anelli è un anello con le
  operazioni fatte componente per componente: <math|(a,b)+(c,d)=(a+c,b+d)> e
  <math|(a,b)(c,d)=(a*c,b*d)>.

  Un <strong|omomorfismo> <math|f:A\<rightarrow\>B> è una funzione che
  rispetta le operazioni: <math|f(x+y)=f(x)+f(y)>, <math|f(x*y)=f(x)f(y)>,
  <math|f(1)=1>. Un <strong|isomorfismo> è un omomorfismo biiettivo: una
  traduzione perfetta, in entrambe le direzioni, che non perde informazioni.

  La mappa che abbiamo disegnato nella griglia è

  <\equation*>
    \<Phi\>:\<bbb-Z\>/m*n\<bbb-Z\>\<longrightarrow\>\<bbb-Z\>/m\<bbb-Z\>\<times\>\<bbb-Z\>/n\<bbb-Z\>,<space|2em>[x]<rsub|m*n>\<longmapsto\>([x]<rsub|m>,[x]<rsub|n>).
  </equation*>

  È ben definita (se <math|m*n\<mid\>x-y>, anche <math|m> e <math|n> dividono
  <math|x-y>) e rispetta somma, prodotto e unità, perché ridurre dopo aver
  calcolato o calcolare dopo aver ridotto dà lo stesso risultato.

  <strong|Teorema cinese (forma strutturale).> <math|\<Phi\>> è un
  isomorfismo se e solo se <math|gcd(m,n)=1>. Se sono coprimi, l'officina 9
  lo dimostra. Se non lo sono, la coppia <math|([0]<rsub|m>,[1]<rsub|n>)> non
  è colpita: un suo <math|x> sarebbe multiplo di <math|m> e congruo a 1
  modulo <math|n>, quindi ogni divisore comune di <math|m,n> dividerebbe sia
  <math|x> sia <math|x-1>, cioè 1.

  <\immagine|Cambiare etichette, non i calcoli>
    Un isomorfismo cambia il nome agli oggetti ma conserva tutti i conti. La
    classe <math|[4]<rsub|15>> e la coppia <math|([1]<rsub|3>,[4]<rsub|5>)>
    non sono letteralmente la stessa cosa, ma si comportano allo stesso modo:
    sommare o moltiplicare da una parte corrisponde a sommare o moltiplicare
    dall'altra. Spesso conviene fare i conti nel mondo più comodo e poi
    tradurre.
  </immagine>

  <\guidato|Contare con il teorema cinese (Chirivì et al., es. 95)>
    Quante coppie <math|(x,y)> di classi modulo 100 hanno <math|x*y=0>?

    <em|Spezza.> <math|100=4\<cdot\>25> con 4 e 25 coprimi. Per
    l'isomorfismo, <math|x*y\<equiv\>0<pmod|100>> equivale a
    <math|x*y\<equiv\>0> modulo 4 <em|e> modulo 25, e le coppie modulo 100
    corrispondono alle coppie di coppie. Il conteggio quindi si
    <em|moltiplica>.

    <em|Modulo 4.> Con la tecnica dell'esempio <math|2<rsup|100>>: <math|x>
    dispari (2 classi) <math|\<rightarrow\>> 1 valore di <math|y>; <math|x=2>
    <math|\<rightarrow\>> 2 valori; <math|x=0> <math|\<rightarrow\>> 4
    valori. Totale <math|2+2+4=8>.

    <em|Modulo 25.> <math|x> non multiplo di 5 (20 classi)
    <math|\<rightarrow\>> <math|y=0>; <math|x\<in\><around|{|5,10,15,20|}>>
    <math|\<rightarrow\>> <math|y> multiplo di 5, 5 valori; <math|x=0>
    <math|\<rightarrow\>> 25 valori. Totale <math|20+20+25=65>.

    <em|Ricomponi.> <math|8\<cdot\>65=520> coppie.
  </guidato>

  <\verifica|7>
    Risolvi <math|x\<equiv\>2<pmod|6>>, <math|x\<equiv\>5<pmod|9>>. Qual è il
    periodo delle soluzioni? Che cosa cambierebbe se il secondo resto fosse
    4?
  </verifica>

  <chapter|Potenze e cifre periodiche>

  <\inbreve>
    Un procedimento che ha solo un numero finito di stati possibili prima o
    poi ripassa da uno stato già visto, e da lì si ripete. Per le potenze di
    un resto invertibile questo dà l'<em|ordine>; per la divisione decimale
    dà il <em|periodo> delle cifre. Due fenomeni, una sola idea: i cassetti.
  </inbreve>

  <section|L'ordine di una classe invertibile>

  Sia <math|m\<geq\>2> e <math|gcd(a,m)=1>. Guardiamo le potenze
  <math|1,a,a<rsup|2>,a<rsup|3>,\<ldots\>> modulo <math|m>. Le classi sono
  solo <math|m>, le potenze infinite: per i cassetti due potenze coincidono,
  <math|a<rsup|u>\<equiv\>a<rsup|v>> con <math|u\<gtr\>v>. Poiché
  <math|a<rsup|v>> è invertibile possiamo cancellarlo:
  <math|a<rsup|u-v>\<equiv\>1>. Quindi qualche potenza positiva torna a 1, e
  fra queste c'è una più piccola:

  <\equation*>
    <math-up|ord><rsub|m>(a)=<text|il più piccolo >r\<gtr\>0<text| con
    >a<rsup|r>\<equiv\>1<pmod|m>.
  </equation*>

  È l'<strong|ordine> di <math|a> modulo <math|m>. Dopo <math|r> passi il
  ciclo ricomincia identico.

  <figura|<image|aritmetica-1-assets/potenze.pdf|155.0mm|53.8mm||>|A sinistra
  le potenze di 3 modulo 13 girano in tondo:
  <math|1\<rightarrow\>3\<rightarrow\>9\<rightarrow\>1>, ordine 3. A destra 2
  non è invertibile modulo 12: c'è una coda (1, 2) che non ritorna più, poi
  il ciclo 4, 8.>

  <strong|Quali esponenti danno 1?> Esattamente i multipli dell'ordine:

  <\equation*>
    a<rsup|k>\<equiv\>1<pmod|m><space|1em>\<Longleftrightarrow\><space|1em>r\<mid\>k.
  </equation*>

  Dividiamo <math|k=q*r+s> con <math|0\<leq\>s\<less\>r>. Allora
  <math|a<rsup|k>=(a<rsup|r>)<rsup|q>a<rsup|s>\<equiv\>a<rsup|s>>. Se
  <math|a<rsup|k>\<equiv\>1> anche <math|a<rsup|s>\<equiv\>1>, e per la
  minimalità di <math|r> deve essere <math|s=0>. Lo stesso vale per esponenti
  negativi (potenze dell'inverso). Inoltre le <math|r> classi
  <math|1,a,\<ldots\>,a<rsup|r-1>> sono tutte diverse: un'uguaglianza fra due
  di esse darebbe un ritorno a 1 prima di <math|r>.

  <\officina|10. I cassetti trovano, il minimo descrive>
    La prova dell'ordine ha due tempi che ritornano spesso.

    <em|Esistenza con i cassetti.> Non sappiamo <em|quale> potenza torna a 1,
    ma sappiamo che qualcuna deve tornare: troppi oggetti, pochi posti.

    <em|Caratterizzazione con il minimo.> Una volta che l'insieme degli
    esponenti buoni non è vuoto, ne prendiamo il più piccolo <math|r> e
    dimostriamo che <em|tutti> gli altri sono suoi multipli, dividendo con
    resto e usando la minimalità per uccidere il resto. È lo stesso schema
    della divisione euclidea (officina 6) e lo ritroveremo nei gruppi.
  </officina>

  <\attenzione|Un ritorno a 1 non è ancora l'ordine>
    Se <math|a<rsup|6>\<equiv\>1>, l'ordine <em|divide> 6, ma può essere 1,
    2, 3 o 6: bisogna escludere i ritorni precedenti. E se la base non è
    invertibile può non tornare mai: le potenze di 2 modulo 8 sono
    <math|1,2,4,0,0,\<ldots\>>
  </attenzione>

  <section|Equazioni con l'incognita all'esponente>

  Per risolvere <math|a<rsup|x>\<equiv\>b<pmod|m>> con <math|a> invertibile,
  si elencano le <math|r> potenze del ciclo. Se <math|b> non compare, non ci
  sono soluzioni (anche se <math|b> è invertibile!). Se compare al posto
  <math|x<rsub|0>>, le soluzioni sono tutte e sole

  <\equation*>
    x\<equiv\>x<rsub|0><pmod|r>,
  </equation*>

  perché <math|a<rsup|x>\<equiv\>a<rsup|x<rsub|0>>> equivale a
  <math|a<rsup|x-x<rsub|0>>\<equiv\>1>, cioè <math|r\<mid\>x-x<rsub|0>>.

  Esempi. Modulo 13 le potenze di 3 sono <math|1,3,9>:
  <math|3<rsup|x>\<equiv\>9> equivale a <math|x\<equiv\>2<pmod|3>>. Modulo
  17, le potenze di 4 sono <math|1,4,-1,-4>: <math|4<rsup|x>\<equiv\>-1>
  equivale a <math|x\<equiv\>2<pmod|4>>, mentre <math|4<rsup|x>\<equiv\>2> è
  impossibile.

  <\guidato|<math|3<rsup|x>\<equiv\>61<pmod|91>>>
    <em|Spezza il modulo.> <math|91=7\<cdot\>13>, coprimi: risolviamo
    separatamente.

    <em|Modulo 7.> <math|61\<equiv\>5>. Le potenze di 3 sono
    <math|1,3,2,6,4,5,1>: ordine 6, e il 5 compare all'esponente 5. Quindi
    <math|x\<equiv\>5<pmod|6>>.

    <em|Modulo 13.> <math|61\<equiv\>9>, e dal ciclo <math|1,3,9> segue
    <math|x\<equiv\>2<pmod|3>>.

    <em|Ricomponi.> Le condizioni sono sugli <em|esponenti>, con moduli 6 e 3
    non coprimi: serve il teorema cinese generale. Ma
    <math|x\<equiv\>5<pmod|6>> implica già <math|x\<equiv\>2<pmod|3>>.
    Risposta: <math|x\<equiv\>5<pmod|6>>.

    <em|Controllo.> <math|3<rsup|5>=243=2\<cdot\>91+61>.
  </guidato>

  <\guidato|Divisori con un resto fissato (Chirivì et al., es. 49)>
    Quanti divisori positivi <math|d> di <math|2<rsup|100>\<cdot\>3<rsup|100>>
    sono <math|\<equiv\>4<pmod|5>>?

    <em|Traduci.> I divisori sono <math|d=2<rsup|x>3<rsup|y>> con
    <math|0\<leq\>x,y\<leq\>100>, una coppia <math|(x,y)> per ogni divisore.

    <em|Una sola base.> Modulo 5, <math|2\<cdot\>3=6\<equiv\>1>, quindi
    <math|3\<equiv\>2<rsup|-1>>. Allora <math|d\<equiv\>2<rsup|x-y>>, e
    <math|4=2<rsup|2>>. Le potenze di 2 modulo 5 sono <math|1,2,4,3>: ordine
    4. La condizione diventa <math|x-y\<equiv\>2<pmod|4>>.

    <em|Conta.> Fra 0 e 100 ci sono 26 numeri <math|\<equiv\>0<pmod|4>> e 25
    in ciascuna delle altre classi. Per ogni classe di <math|y> la classe di
    <math|x> è determinata: <math|y\<equiv\>0\<Rightarrow\>x\<equiv\>2>,
    <math|y\<equiv\>1\<Rightarrow\>x\<equiv\>3>,
    <math|y\<equiv\>2\<Rightarrow\>x\<equiv\>0>,
    <math|y\<equiv\>3\<Rightarrow\>x\<equiv\>1>. Totale

    <\equation*>
      26\<cdot\>25+25\<cdot\>25+25\<cdot\>26+25\<cdot\>25=2550.
    </equation*>
  </guidato>

  <section|Perché una frazione ha cifre periodiche>

  Dividiamo <math|1> per <math|7> come alle elementari. A ogni passo
  moltiplichiamo il resto per 10 e lo dividiamo per 7: il quoziente è la
  nuova cifra, il resto è il nuovo \Sstato\T. In formule, con
  <math|0\<leq\>r<rsub|j>\<less\>b>:

  <\equation*>
    10r<rsub|j>=b\<cdot\>c<rsub|j+1>+r<rsub|j+1>.
  </equation*>

  Se un resto diventa 0, da lì le cifre sono tutte 0. Altrimenti i resti
  possibili sono solo <math|b-1>, quindi prima o poi un resto si ripete; e
  poiché ogni passo dipende solo dal resto attuale, da quel momento si ripete
  tutto. Il decimale è <strong|periodico>, eventualmente dopo un tratto
  iniziale (l'<strong|antiperiodo>).

  <figura|<image|aritmetica-1-assets/resti7.pdf|95.0mm|72.5mm||>|Dividendo 1
  per 7 i resti percorrono il ciclo <math|1,3,2,6,4,5>; ogni passo produce
  una cifra. Tornati al resto 1, le cifre 142857 si ripetono.>

  Non è il ripetersi di una <em|cifra> a garantire il periodo: è il ripetersi
  del <em|resto>, cioè dell'intero stato del calcolo.

  <section|Dal periodo alla frazione>

  Se <math|y=0,<wide|B|\<bar\>>> e il blocco <math|B> ha <math|r> cifre (zeri
  iniziali compresi), spostando la virgola di <math|r> posti
  <math|10<rsup|r>y=B+y>, quindi

  <\equation*>
    0,<wide|B|\<bar\>>=<frac|B|10<rsup|r>-1>.
  </equation*>

  Per esempio <math|0,<wide|34|\<bar\>>=34/99> e
  <math|0,<wide|03|\<bar\>>=3/99>. Con un antiperiodo si sposta prima la
  virgola: per <math|x=0,1<wide|6|\<bar\>>>,
  <math|100x-10x=16,<wide|6|\<bar\>>-1,<wide|6|\<bar\>>=15>, quindi
  <math|x=15/90=1/6>.

  Abbiamo così le due direzioni:

  <\equation*>
    x\<in\>\<bbb-Q\><space|1em>\<Longleftrightarrow\><space|1em>x<text| ha
    uno sviluppo decimale (eventualmente) periodico.>
  </equation*>

  I decimali finiti contano come periodici con periodo 0. Alcuni numeri hanno
  due scritture, come <math|1=0,<wide|9|\<bar\>>>. Di conseguenza uno
  sviluppo che non si ripete mai, come <math|0,1010010001\<ldots\>> (con
  blocchi di zeri sempre più lunghi), è irrazionale.

  <section|Il denominatore predice il periodo>

  Riduciamo <math|a/b> ai minimi termini e scriviamo

  <\equation*>
    b=2<rsup|\<alpha\>>5<rsup|\<beta\>>c,<space|2em>gcd(c,10)=1,<space|2em>s=max(\<alpha\>,\<beta\>).
  </equation*>

  <\itemize>
    <item>Se <math|c=1> il decimale è finito, con <math|s> cifre dopo la
    virgola.

    <item>Se <math|c\<gtr\>1>, l'antiperiodo ha lunghezza <math|s> e il
    periodo ha lunghezza <math|<math-up|ord><rsub|c>(10)>.
  </itemize>

  Il motivo: <math|2<rsup|\<alpha\>>5<rsup|\<beta\>>> divide
  <math|10<rsup|s>> e, posto <math|r=<math-up|ord><rsub|c>(10)>, <math|c>
  divide <math|10<rsup|r>-1>. Quindi <math|b\<mid\>10<rsup|s>(10<rsup|r>-1)>:
  moltiplicando sopra e sotto si porta la frazione a denominatore
  <math|10<rsup|s>(10<rsup|r>-1)>, che è esattamente la forma \S<math|s>
  cifre di antiperiodo, <math|r> di periodo\T. Che questi valori siano i
  minimi segue perché <math|10<rsup|r>-1> non è divisibile né per 2 né per 5,
  e perché un periodo <math|r> richiede <math|c\<mid\>10<rsup|r>-1>.

  <\guidato|Leggere <math|1/28> e <math|3/40> senza dividere>
    <math|28=2<rsup|2>\<cdot\>7>: antiperiodo di 2 cifre; periodo
    <math|<math-up|ord><rsub|7>(10)=6> (le potenze di 10 modulo 7 sono
    <math|3,2,6,4,5,1>). Infatti <math|1/28=0,03<wide|571428|\<bar\>>>.

    <math|40=2<rsup|3>\<cdot\>5>: nessuna parte coprima con 10, decimale
    finito di 3 cifre: <math|3/40=0,075>.

    Attenzione a ridurre prima: <math|2/6> va letto come <math|1/3>.
  </guidato>

  <\verifica|8>
    Risolvi <math|4<rsup|x>\<equiv\>13<pmod|17>>. Prevedi antiperiodo e
    periodo di <math|1/12> e ricava la frazione partendo da
    <math|0,08<wide|3|\<bar\>>>.
  </verifica>

  <chapter|Il linguaggio dei gruppi>

  <\inbreve>
    Somma di resti, potenze modulari, rotazioni, permutazioni: sembrano cose
    diverse, ma obbediscono alle stesse poche regole. Un <em|gruppo> è il
    nome di queste regole. Imparare il linguaggio dei gruppi significa
    dimostrare una cosa una volta sola e usarla ovunque.
  </inbreve>

  <section|Una struttura, molti esempi>

  Un'<strong|operazione> su un insieme <math|G> associa a ogni coppia di
  elementi di <math|G> un elemento ancora di <math|G>. Un <strong|gruppo> è
  un insieme non vuoto con un'operazione che soddisfa tre regole:

  <\itemize>
    <item><strong|associatività>: <math|(g*h)k=g(h*k)>;

    <item><strong|elemento neutro>: c'è un <math|e> con <math|e*g=g*e=g> per
    ogni <math|g>;

    <item><strong|inversi>: ogni <math|g> ha un <math|g<rsup|-1>> con
    <math|g*g<rsup|-1>=g<rsup|-1>g=e>.
  </itemize>

  Se in più <math|g*h=h*g> sempre, il gruppo è <strong|abeliano>
  (commutativo).

  Esempi: <math|(\<bbb-Z\>,+)>, <math|(\<bbb-Z\>/n\<bbb-Z\>,+)>,
  <math|(\<bbb-Q\>\<setminus\><around|{|0|}>,\<cdot\>)> sono gruppi abeliani.
  Gli interi con il prodotto <em|non> sono un gruppo: 2 non ha inverso. In un
  campo <math|K> gli elementi non nulli formano il gruppo moltiplicativo
  <math|K<rsup|\<times\>>>.

  Un esempio geometrico: i movimenti che riportano un triangolo equilatero su
  se stesso. Sono sei: l'identità, due rotazioni (di 120\<degree\> e
  240\<degree\>) e tre ribaltamenti attorno agli assi. Comporre due movimenti
  dà un movimento; ognuno si può disfare.

  <figura|<image|aritmetica-1-assets/triangolo.pdf|82.5mm|67.5mm||>|Le
  simmetrie del triangolo: tre rotazioni (compresa quella nulla) e tre
  ribaltamenti attorno agli assi tratteggiati.>

  In notazione additiva si scrive <math|+>, <math|0>, <math|-g> e <math|n*g>
  al posto di prodotto, neutro, inverso e potenza. Associatività e
  commutatività sono cose diverse: la prima permette di spostare le
  parentesi, la seconda di scambiare gli elementi. In un gruppo si può sempre
  fare la prima, non necessariamente la seconda.

  <section|Le regole che seguono dagli assiomi>

  Dalle tre regole seguono subito altre proprietà, valide in <em|ogni>
  gruppo.

  <\itemize>
    <item><strong|Il neutro è unico.> Se <math|e> ed <math|e<rprime|'>> sono
    neutri, <math|e=e*e<rprime|'>=e<rprime|'>>.

    <item><strong|L'inverso è unico.> Se <math|u> e <math|v> sono inversi di
    <math|g>, <math|u=u(g*v)=(u*g)v=v>.

    <item><strong|Si può cancellare.> Da <math|a*b=a*c> segue <math|b=c>,
    moltiplicando a sinistra per <math|a<rsup|-1>>.

    <item><strong|L'inverso di un prodotto si rovescia:>
    <math|(g*h)<rsup|-1>=h<rsup|-1>g<rsup|-1>>, perché
    <math|(g*h)(h<rsup|-1>g<rsup|-1>)=g(h*h<rsup|-1>)g<rsup|-1>=e>.
  </itemize>

  <\immagine|Calza e scarpa>
    Prima metti la calza, poi la scarpa. Per tornare indietro togli prima la
    scarpa, poi la calza. Disfare una sequenza significa disfarla nell'ordine
    opposto: è la regola <math|(g*h)<rsup|-1>=h<rsup|-1>g<rsup|-1>>.
  </immagine>

  <\officina|11. Verificare una struttura, smentire con un esempio>
    Per dimostrare che qualcosa <em|è> un gruppo (o un sottogruppo, o un
    anello), si controllano le regole una per una, per elementi
    <em|qualsiasi>. Per dimostrare che <em|non> lo è basta un solo esempio
    concreto in cui una regola fallisce, e conviene cercarlo fra gli elementi
    più semplici.

    Esempio: <math|2\<bbb-Z\>\<cup\>3\<bbb-Z\>> non è un sottogruppo di
    <math|\<bbb-Z\>>, perché contiene 2 e 3 ma non <math|2+3=5>. Una riga
    basta.
  </officina>

  <section|Sottogruppi>

  Un <strong|sottogruppo> <math|H\<leq\>G> è un sottoinsieme che è un gruppo
  con la stessa operazione. Per riconoscerlo basta un solo controllo:

  <\equation*>
    H\<neq\>\<varnothing\><space|1em><text|e><space|1em>x*y<rsup|-1>\<in\>H<text|
    per ogni >x,y\<in\>H.
  </equation*>

  Perché basta: preso <math|a\<in\>H>, <math|a*a<rsup|-1>=e\<in\>H>; poi
  <math|e*y<rsup|-1>=y<rsup|-1>\<in\>H>; infine
  <math|x(y<rsup|-1>)<rsup|-1>=x*y\<in\>H>. L'associatività è ereditata da
  <math|G>.

  <figura|<image|aritmetica-1-assets/orologio12.pdf|82.5mm|75.0mm||>|In
  <math|\<bbb-Z\>/12\<bbb-Z\>> i multipli di 3 formano un sottogruppo (il
  quadrato), i multipli di 4 un altro (il triangolo). La loro intersezione è
  <math|<around|{|0|}>>.>

  <\itemize>
    <item>L'<strong|intersezione> di due sottogruppi è un sottogruppo: il
    criterio vale in entrambi.

    <item>L'<strong|unione> è un sottogruppo solo se uno dei due contiene
    l'altro. Altrimenti prendi <math|h\<in\>H\<setminus\>K> e
    <math|k\<in\>K\<setminus\>H>: <math|h*k> non sta in <math|H> (sennò
    <math|k=h<rsup|-1>(h*k)\<in\>H>) né in <math|K> (sennò
    <math|h=(h*k)k<rsup|-1>\<in\>K>).
  </itemize>

  Nei multipli: <math|d\<bbb-Z\>> è un sottogruppo di <math|\<bbb-Z\>>, e
  <math|d\<bbb-Z\>\<subseteq\>m\<bbb-Z\>> se e solo se <math|m\<mid\>d>
  (attenzione al verso: i multipli di 12 stanno dentro i multipli di 4). Per
  <math|d,m\<gtr\>0>, <math|d\<bbb-Z\>\<cap\>m\<bbb-Z\>=<math-up|mcm>(d,m)\<bbb-Z\>>:
  i numeri comuni sono i multipli comuni. Per esempio
  <math|4\<bbb-Z\>\<cap\>6\<bbb-Z\>=12\<bbb-Z\>>.

  Il <strong|centro> <math|Z(G)> contiene gli elementi che commutano con
  tutti. È un sottogruppo, e <math|G> è abeliano esattamente quando
  <math|Z(G)=G>.

  <section|Gruppi generati da un solo elemento>

  Le potenze di <math|g> (con <math|g<rsup|0>=e> e
  <math|g<rsup|-n>=(g<rsup|-1>)<rsup|n>>) formano il sottogruppo

  <\equation*>
    \<langle\>g\<rangle\>=<around|{|g<rsup|k>:k\<in\>\<bbb-Z\>|}>,
  </equation*>

  generato da <math|g>. Se <math|G=\<langle\>g\<rangle\>>, il gruppo è
  <strong|ciclico>.

  Se nessuna potenza positiva vale <math|e>, le potenze sono tutte diverse e
  l'ordine di <math|g> è infinito. Altrimenti, esattamente come nel capitolo
  8, c'è un minimo <math|r\<gtr\>0> con <math|g<rsup|r>=e>, e
  <math|g<rsup|k>=e\<Longleftrightarrow\>r\<mid\>k>. Allora
  <math|\<langle\>g\<rangle\>> ha esattamente <math|r> elementi. L'ordine di
  un elemento è la grandezza del gruppo che genera, che può essere più
  piccolo di <math|G>.

  <\guidato|Sommare o moltiplicare?>
    In <math|(\<bbb-Z\>/12\<bbb-Z\>,+)> i multipli di <math|[3]> sono
    <math|[0],[3],[6],[9]>, poi si ricomincia: l'ordine <em|additivo> di
    <math|[3]> è 4. Il gruppo intero è ciclico, generato da <math|[1]>.

    Con il prodotto modulo 12, invece, <math|[3]> non ha inverso, quindi non
    sta nemmeno nel gruppo delle unità. Dire quale operazione si usa fa parte
    della risposta.
  </guidato>

  <section|Radici dell'unità: un ciclo disegnato>

  Un numero complesso <math|z=x+i*y> è un punto del piano. La sua distanza
  dall'origine si chiama modulo, e il prodotto di due complessi
  <em|moltiplica i moduli e somma gli angoli> (segue dalle formule di
  addizione di seno e coseno). Sul cerchio di raggio 1 i punti si scrivono
  <math|cos \<theta\>+i sin \<theta\>=e<rsup|i\<theta\>>>.

  Le <strong|radici <math|n>-esime dell'unità> sono i <math|z> con
  <math|z<rsup|n>=1>. Devono avere modulo 1 e un angolo che, moltiplicato per
  <math|n>, fa un numero intero di giri:

  <\equation*>
    \<mu\><rsub|n>=<around|{|e<rsup|2\<pi\>i*k/n>:k=0,1,\<ldots\>,n-1|}>.
  </equation*>

  Sono i vertici di un poligono regolare. Con il prodotto formano un gruppo
  ciclico, generato da <math|\<zeta\>=e<rsup|2\<pi\>i/n>>: moltiplicare per
  <math|\<zeta\>> significa ruotare di <math|1/n> di giro. Per <math|n=4> si
  trovano <math|1,i,-1,-i>.

  <figura|<image|aritmetica-1-assets/radici.pdf|85.0mm|75.0mm||>|Le radici
  seste dell'unità. Moltiplicare per <math|\<zeta\>> fa ruotare ogni punto di
  60\<degree\> e porta ciascuno nel successivo.>

  <section|Permutazioni: l'ordine conta>

  Una <strong|permutazione> di <math|X> è una biezione
  <math|X\<rightarrow\>X>. Con la composizione le permutazioni formano un
  gruppo; per <math|X=<around|{|1,\<ldots\>,n|}>> si chiama <math|S<rsub|n>>
  e ha <math|n!> elementi.

  La notazione a due righe mette sopra gli elementi e sotto le loro immagini:

  <\equation*>
    \<sigma\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|2>|<cell|3>|<cell|1>>>>>=(1
    2 3).
  </equation*>

  Il <strong|ciclo> <math|(a<rsub|1> a<rsub|2> \<ldots\> a<rsub|k>)> manda
  ogni elemento nel successivo e l'ultimo nel primo; gli altri restano fermi.

  <\guidato|Leggere da destra>
    Siano <math|\<sigma\>=(1 2 3)> e <math|\<tau\>=(1 2)>. Per convenzione
    <math|\<sigma\>\<tau\>=\<sigma\>\<circ\>\<tau\>>: <em|si applica prima
    <math|\<tau\>>>. Seguiamo ogni numero:
    <math|1\<rightarrow\>2\<rightarrow\>3>,
    <math|2\<rightarrow\>1\<rightarrow\>2>,
    <math|3\<rightarrow\>3\<rightarrow\>1>. Quindi <math|\<sigma\>\<tau\>=(1
    3)>.

    Nell'altro ordine, <math|\<tau\>\<sigma\>>:
    <math|1\<rightarrow\>2\<rightarrow\>1>,
    <math|2\<rightarrow\>3\<rightarrow\>3>,
    <math|3\<rightarrow\>1\<rightarrow\>2>, cioè <math|\<tau\>\<sigma\>=(2
    3)>.

    I risultati sono diversi: <math|S<rsub|3>> non è abeliano. (Lo stesso
    vale per ogni <math|S<rsub|n>> con <math|n\<geq\>3>.)
  </guidato>

  <figura|<image|aritmetica-1-assets/permutazioni.pdf|150.0mm|62.5mm||>|Diagrammi
  a fili: si legge dall'alto in basso, prima la permutazione di destra. Le
  due composizioni portano a destinazioni diverse.>

  Ogni permutazione si spezza in <strong|cicli disgiunti>: parti da un
  elemento, segui le immagini finché torni al punto di partenza, poi
  ricomincia da un elemento non ancora visitato. I cicli disgiunti commutano
  fra loro. Una potenza riporta tutto al suo posto quando l'esponente è
  multiplo della lunghezza di ogni ciclo: l'ordine è il <math|<math-up|mcm>>
  delle lunghezze. Per esempio <math|(1 2 3)(4 5)> ha ordine
  <math|<math-up|mcm>(3,2)=6>.

  <section|Gruppi, anelli, campi>

  Ora possiamo mettere in fila le strutture incontrate.

  <figura|<image|aritmetica-1-assets/strutture.pdf|155.0mm|43.8mm||>|Ogni
  passo aggiunge regole. Un anello è un gruppo abeliano rispetto alla somma,
  con in più un prodotto; un campo è un anello in cui si può dividere.>

  Le <strong|unità> di un anello <math|R> (gli elementi invertibili) formano
  un gruppo con il prodotto, <math|R<rsup|\<times\>>>. Per le classi modulari

  <\equation*>
    (\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>=<around|{|[a]<rsub|n>:gcd(a,n)=1|}>.
  </equation*>

  Modulo 12 le unità sono <math|[1],[5],[7],[11]>, e ognuna è l'inverso di se
  stessa (<math|5<rsup|2>=25\<equiv\>1>, ecc.). Questo gruppo <em|non> è
  ciclico: nessun elemento ha ordine 4.

  Un <strong|omomorfismo di gruppi> rispetta l'operazione (e quindi manda
  neutro in neutro e inversi in inversi). Il teorema cinese, ristretto agli
  invertibili, dà per <math|m,n> coprimi

  <\equation*>
    (\<bbb-Z\>/m*n\<bbb-Z\>)<rsup|\<times\>>\<cong\>(\<bbb-Z\>/m\<bbb-Z\>)<rsup|\<times\>>\<times\>(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>,
  </equation*>

  perché <math|x> è coprimo con <math|m*n> esattamente quando lo è con
  <math|m> e con <math|n>. Per <math|6=2\<cdot\>3>:
  <math|[1]<rsub|6>\<mapsto\>([1]<rsub|2>,[1]<rsub|3>)> e
  <math|[5]<rsub|6>\<mapsto\>([1]<rsub|2>,[2]<rsub|3>)>.

  <\verifica|9>
    In <math|S<rsub|5>>, qual è l'ordine di <math|(1 2 3)(4 5)>? L'insieme
    <math|2\<bbb-Z\>\<cup\>3\<bbb-Z\>> è un sottogruppo di <math|\<bbb-Z\>>?
    Giustifica con un esempio.
  </verifica>

  <chapter|Quadratiche e potenze prime>

  <\inbreve>
    Modulo un primo si può dividere per ogni classe non nulla, e le equazioni
    di secondo grado si risolvono quasi come a scuola. Modulo una potenza di
    un primo serve più attenzione: si risolve un livello alla volta,
    \Ssollevando\T le soluzioni. Alla fine il teorema cinese rimette insieme
    i pezzi.
  </inbreve>

  <section|Perché il modulo primo è speciale>

  Se <math|p> è primo, ogni <math|a> con <math|1\<leq\>a\<less\>p> è coprimo
  con <math|p> e quindi invertibile: <strong|<math|\<bbb-Z\>/p\<bbb-Z\>> è un
  campo>. Se invece <math|n=u*v> è composto (<math|1\<less\>u,v\<less\>n>),
  le classi di <math|u> e <math|v> sono non nulle ma il loro prodotto è zero.
  Elementi così si chiamano <strong|divisori dello zero>, e in un campo non
  possono esistere (basterebbe moltiplicare per un inverso). Riguarda le
  tabelline modulo 5 e modulo 6 del capitolo 6: gli zeri grigi sono proprio
  questi.

  Modulo un primo vale quindi la <strong|legge di annullamento del prodotto>:
  <math|u*v\<equiv\>0<pmod|p>> implica <math|u\<equiv\>0> oppure
  <math|v\<equiv\>0>. Modulo <math|p<rsup|e>> con <math|e\<gtr\>1> può
  fallire: <math|2\<cdot\>2\<equiv\>0<pmod|4>>.

  <\attenzione|La risposta giusta per il motivo sbagliato>
    <math|x(x-1)\<equiv\>0<pmod|4>> ha soluzioni <math|x\<equiv\>0,1>, come
    se valesse l'annullamento del prodotto. Ma il motivo è un altro: <math|x>
    e <math|x-1> sono consecutivi, quindi coprimi, e uno solo dei due può
    contenere fattori 2. Controlla sempre <em|perché> un passaggio è lecito.
  </attenzione>

  <section|Il discriminante nei resti>

  Sia <math|p> primo dispari e <math|p\<nmid\>A>. Per
  <math|A*x<rsup|2>+B*x+C\<equiv\>0<pmod|p>> completiamo il quadrato:
  moltiplicando per <math|4A> (che è invertibile),

  <\equation*>
    (2A*x+B)<rsup|2>\<equiv\>\<Delta\><pmod|p>,<space|2em>\<Delta\>=B<rsup|2>-4A*C.
  </equation*>

  Ogni <math|y> con <math|y<rsup|2>\<equiv\>\<Delta\>> dà la soluzione
  <math|x\<equiv\>(2A)<rsup|-1>(-B+y)>. Quindi: se <math|\<Delta\>> non è un
  quadrato modulo <math|p> non ci sono soluzioni; se
  <math|\<Delta\>\<equiv\>0> ce n'è una; se <math|\<Delta\>> è un quadrato
  non nullo ce ne sono due, da <math|\<pm\>y>. Qui
  <math|\<pm\><sqrt|\<Delta\>>> indica una radice modulare, non quella reale.

  Se <math|p\<mid\>A> l'equazione è di primo grado o costante. Se <math|p=2>
  non si può dividere per 2: si provano 0 e 1.

  <\guidato|Un'impossibilità rapida>
    <math|x<rsup|2>+5x+3\<equiv\>0<pmod|11>>. <em|Discriminante:>
    <math|25-12=13\<equiv\>2>. <em|Quadrati modulo 11:> quelli di
    <math|0,1,2,3,4,5> sono <math|0,1,4,9,5,3>; gli altri si ripetono, perché
    <math|(-x)<rsup|2>=x<rsup|2>>. Il 2 non compare: nessuna soluzione.

    Per <math|x<rsup|2>\<equiv\>1<pmod|5>>, invece,
    <math|(x-1)(x+1)\<equiv\>0> e la legge di annullamento dà
    <math|x\<equiv\>\<pm\>1<pmod|5>>.
  </guidato>

  <section|Da un livello al successivo>

  Sia <math|f> un polinomio a coefficienti interi e <math|x<rsub|k>> una
  soluzione di <math|f(x)\<equiv\>0> modulo <math|p<rsup|k>>. Una soluzione
  modulo <math|p<rsup|k+1>> deve ridursi a una soluzione modulo
  <math|p<rsup|k>>; quindi cerchiamo le soluzioni \Ssopra\T <math|x<rsub|k>>,
  che sono della forma

  <\equation*>
    x=x<rsub|k>+p<rsup|k>h,<space|2em>h\<in\><around|{|0,1,\<ldots\>,p-1|}>.
  </equation*>

  Sviluppando <math|f(x<rsub|k>+p<rsup|k>h)>, i termini con almeno due
  fattori <math|p<rsup|k>> sono multipli di <math|p<rsup|k+1>> (perché
  <math|2k\<geq\>k+1>). Resta

  <\equation*>
    f(x<rsub|k>+p<rsup|k>h)\<equiv\>f(x<rsub|k>)+p<rsup|k>h\<cdot\>f<rprime|'>(x<rsub|k>)<pmod|p<rsup|k+1>>,
  </equation*>

  dove <math|f<rprime|'>> è la derivata formale (per <math|A*x<rsup|2>+B*x+C>
  è <math|2A*x+B>: si ottiene solo sviluppando il quadrato, senza limiti).
  Scrivendo <math|f(x<rsub|k>)=p<rsup|k>\<gamma\>> e dividendo tutto per
  <math|p<rsup|k>>, la condizione diventa una congruenza lineare modulo
  <math|p>:

  <\equation*>
    \<gamma\>+h\<cdot\>f<rprime|'>(x<rsub|k>)\<equiv\>0<pmod|p>.
  </equation*>

  Ci sono esattamente tre casi:

  <\enumerate>
    <item><math|f<rprime|'>(x<rsub|k>)\<nequiv\>0<pmod|p>>: c'è un solo
    <math|h>, cioè <strong|un solo sollevamento>.

    <item><math|f<rprime|'>(x<rsub|k>)\<equiv\>0> e
    <math|\<gamma\>\<nequiv\>0<pmod|p>>: nessun <math|h> funziona, <strong|il
    ramo muore>.

    <item><math|f<rprime|'>(x<rsub|k>)\<equiv\>0> e
    <math|\<gamma\>\<equiv\>0<pmod|p>>: tutti i <math|p> valori di <math|h>
    funzionano, <strong|<math|p> sollevamenti>.
  </enumerate>

  <figura|<image|aritmetica-1-assets/sollevamento.pdf|155.0mm|52.5mm||>|I tre
  destini di una radice quando si passa al livello successivo: un ramo,
  <math|p> rami, nessun ramo.>

  Un ramo che muore non può rinascere più in alto: ogni soluzione a un
  livello superiore si ridurrebbe a una soluzione a questo livello.

  <\officina|12. Casi esaustivi; separare, risolvere, ricomporre>
    Il sollevamento è un esempio di <em|analisi per casi>: i tre casi coprono
    tutte le possibilità e non si sovrappongono, quindi trattandoli tutti non
    si perde nessuna soluzione. Quando dividi in casi, controlla sempre
    queste due cose.

    Il capitolo intero segue poi uno schema più ampio, che è il modo di
    ragionare dell'aritmetica modulare: <em|separa> il modulo nelle sue
    potenze prime, <em|risolvi> ciascun pezzo (prima modulo <math|p>, poi
    sollevando), <em|ricomponi> con il teorema cinese.
  </officina>

  <section|Un sollevamento svolto>

  <\guidato|<math|x<rsup|2>\<equiv\>6<pmod|25>>>
    <em|Livello 5.> <math|x<rsup|2>\<equiv\>6\<equiv\>1<pmod|5>>: radici
    <math|1> e <math|4>.

    <em|Sollevare 1.> <math|f(x)=x<rsup|2>-6>, <math|f(1)=-5=5\<cdot\>(-1)>,
    quindi <math|\<gamma\>=-1>; <math|f<rprime|'>(1)=2>. La condizione
    <math|-1+2h\<equiv\>0<pmod|5>> dà <math|h=3>: <math|x=1+5\<cdot\>3=16>.

    <em|Sollevare 4.> <math|f(4)=10=5\<cdot\>2>, <math|\<gamma\>=2>;
    <math|f<rprime|'>(4)=8\<equiv\>3>. Da <math|2+3h\<equiv\>0<pmod|5>>:
    <math|h=1>, <math|x=9>.

    <em|Controllo.> <math|16<rsup|2>=256=10\<cdot\>25+6> e
    <math|9<rsup|2>=81=3\<cdot\>25+6>. Abbiamo esaminato tutte le radici di
    partenza e tutti gli <math|h>: le soluzioni sono esattamente <math|9> e
    <math|16> modulo 25.
  </guidato>

  Due casi singolari modulo 9. Per <math|x<rsup|2>\<equiv\>0>: l'unica radice
  modulo 3 è 0, con <math|\<gamma\>=0> e derivata nulla: tutti e tre gli
  <math|h> vanno bene, <math|x\<equiv\>0,3,6<pmod|9>>. Per
  <math|x<rsup|2>\<equiv\>3>: ancora la sola radice 0 modulo 3, ma ora
  <math|\<gamma\>=-1\<nequiv\>0>: nessuna soluzione modulo 9, benché ce ne
  fosse una modulo 3.

  <section|Separare, risolvere, ricomporre>

  Per un modulo <math|N=p<rsub|1><rsup|e<rsub|1>>\<cdots\>p<rsub|r><rsup|e<rsub|r>>>
  si risolve <math|f(x)\<equiv\>0> modulo ciascuna potenza prima, poi il
  teorema cinese trasforma ogni scelta di una radice per ciascun pezzo in
  un'unica radice modulo <math|N>. Il numero di soluzioni è il <em|prodotto>
  dei numeri di soluzioni dei pezzi; se un pezzo non ne ha, non ne ha nemmeno
  <math|N>.

  Per esempio <math|x<rsup|2>\<equiv\>1<pmod|15>>:
  <math|x\<equiv\>\<pm\>1<pmod|3>> e <math|x\<equiv\>\<pm\>1<pmod|5>>,
  quattro combinazioni, <math|x\<equiv\>1,4,11,14<pmod|15>>. Un modulo
  composto permette più radici di quante una quadratica ne abbia in un campo
  (al più due).

  <\guidato|Un sistema con un quadrato (Chirivì et al., es. 74)>
    Risolvi <math|x<rsup|2>\<equiv\>4<pmod|14>>, <math|x\<equiv\>3<pmod|5>>.

    <em|Separa.> <math|14=2\<cdot\>7>: <math|x<rsup|2>\<equiv\>4> modulo 2
    dice <math|x> pari; modulo 7, <math|(x-2)(x+2)\<equiv\>0> dà
    <math|x\<equiv\>\<pm\>2<pmod|7>>.

    <em|Ricomponi modulo 14.> Pari e <math|\<equiv\>2<pmod|7>>:
    <math|x\<equiv\>2>. Pari e <math|\<equiv\>5<pmod|7>>:
    <math|x\<equiv\>12<pmod|14>>.

    <em|Aggiungi il 5.> <math|x\<equiv\>2<pmod|14>> e
    <math|x\<equiv\>3<pmod|5>>: fra <math|2,16,30,44,58> il primo
    <math|\<equiv\>3<pmod|5>> è 58. <math|x\<equiv\>12<pmod|14>> e
    <math|x\<equiv\>3<pmod|5>>: fra <math|12,26,40,54,68> è 68.

    <em|Risposta.> <math|x\<equiv\>58> oppure <math|x\<equiv\>68<pmod|70>>.
    Controllo: <math|58<rsup|2>=3364=240\<cdot\>14+4>,
    <math|68<rsup|2>=4624=330\<cdot\>14+4>.
  </guidato>

  <\verifica|10>
    Trova tutte le radici di <math|x<rsup|2>\<equiv\>1<pmod|9>> e di
    <math|x<rsup|2>\<equiv\>1<pmod|18>>. Perché il passaggio da 9 a 18 non è
    un sollevamento?
  </verifica>

  <appendix|La cassetta degli attrezzi>

  Le dimostrazioni di questo libro usano pochi schemi, sempre gli stessi.
  Quando non sai da dove cominciare, guarda la forma della frase da
  dimostrare e cerca qui l'attrezzo adatto.

  <\padded>
    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-valign|t>|<cwith|1|-1|2|2|cell-hyphen|t>|<cwith|1|-1|1|1|cell-width|0.25par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|2|2|cell-width|0.58par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tsep|0.45fn>|<cwith|1|-1|1|-1|cell-bsep|0.45fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|2|-1|1|-1|cell-bborder|0.25pt>|<cwith|1|-1|1|1|cell-lsep|0fn>|<cwith|1|-1|3|3|cell-rsep|0fn>|<table|<row|<cell|<strong|Se
    la frase dice\<ldots\>>>|<cell|<strong|prova
    a\<ldots\>>>|<cell|<strong|vedi>>>|<row|<cell|\Sper ogni
    <math|n\<geq\>n<rsub|0>>\T>|<cell|induzione: base, poi passo da <math|n>
    a <math|n+1>; se servono casi più piccoli qualsiasi, induzione
    forte.>|<cell|officina 2>>|<row|<cell|\Snon esiste\<ldots\>\T>|<cell|per
    assurdo; sui naturali, prendi il più piccolo
    controesempio.>|<cell|officina 3>>|<row|<cell|\Sesiste\<ldots\>\T>|<cell|costruiscilo;
    oppure prendi il minimo di un insieme non vuoto; oppure usa i
    cassetti.>|<cell|officine 6, 10>>|<row|<cell|\S\<ldots\> è
    unico\T>|<cell|supponi che ce ne siano due e mostra che
    coincidono.>|<cell|officine 5, 6>>|<row|<cell|\Sse e solo se\T>|<cell|due
    dimostrazioni separate: necessità (<math|\<Rightarrow\>>) e sufficienza
    (<math|\<#21D0\>>).>|<cell|officina 7>>|<row|<cell|\Stutte le
    soluzioni\T>|<cell|due inclusioni: ogni soluzione ha quella forma, e ogni
    oggetto di quella forma è una soluzione.>|<cell|capitolo
    5>>|<row|<cell|\Squanti sono?\T>|<cell|casi disgiunti (somma), scelte in
    tappe (prodotto), ripetizioni uniformi (divisione), sovrapposizioni
    (inclusione-esclusione).>|<cell|capitolo
    2>>|<row|<cell|\S<math|\|A\|=\|B\|>\T>|<cell|costruisci una biezione,
    oppure conta lo stesso insieme in due modi.>|<cell|officina
    4>>|<row|<cell|operazioni su classi>|<cell|controlla che non dipendano
    dai rappresentanti.>|<cell|officina 8>>|<row|<cell|\Sè
    biiettiva\T>|<cell|fra insiemi finiti della stessa grandezza basta
    l'iniettività.>|<cell|officina 9>>|<row|<cell|\Sè un
    gruppo?\T>|<cell|verifica le regole per elementi qualsiasi; per smentire
    basta un controesempio.>|<cell|officina 11>>|<row|<cell|modulo <math|N>
    composto>|<cell|separa in potenze prime, risolvi (modulo <math|p>, poi
    solleva), ricomponi con il teorema cinese.>|<cell|officina 12>>>>>
  </padded>

  Un'ultima abitudine, valida sempre: alla fine di un conto, <em|controlla>
  il risultato su un caso piccolo. Un numero sostituito, una tabella
  <math|8\<times\>8>, una frazione divisa a mano: costa poco e trova quasi
  tutti gli errori.

  <appendix|Risposte alle verifiche>

  <strong|1.> Il passo conserva una proprietà che ha già cominciato a valere,
  ma non la fa partire. Per <math|P(n)>: \S<math|n\<geq\>5>\T il passo è
  sempre vero (se <math|n\<geq\>5> allora <math|n+1\<geq\>5>), eppure
  <math|P(0)> è falsa. Manca la base: si può partire solo da
  <math|n<rsub|0>=5>.

  <strong|2.> I sottoinsiemi sono <math|<binom|5|2>=10>. Le soluzioni sono
  <math|<binom|6|2>=15>: corrispondono a file di 4 stelle e 2 sbarre, non a
  scelte di due elementi fra cinque. Sono famiglie di oggetti diverse (nelle
  soluzioni le \Sscatole\T possono ricevere più unità, o nessuna).

  <strong|3.> <math|T<rsub|5>=T<rsub|4>+T<rsub|3>=5+3=8>. Per la seconda:
  <math|a<rsub|n>=A+B\<cdot\>2<rsup|n>> con <math|A+B=5>, <math|A+2B=7>,
  quindi <math|B=2>, <math|A=3> e <math|a<rsub|n>=3+2<rsup|n+1>>.

  <strong|4.> <math|72=2<rsup|3>\<cdot\>3<rsup|2>>,
  <math|90=2\<cdot\>3<rsup|2>\<cdot\>5>. MCD <math|2\<cdot\>3<rsup|2>=18>,
  mcm <math|2<rsup|3>\<cdot\>3<rsup|2>\<cdot\>5=360> (e infatti
  <math|18\<cdot\>360=72\<cdot\>90>). Divisori di 72: <math|4\<cdot\>3=12>.
  <math|v<rsub|3>(10!)=\<lfloor\>10/3\<rfloor\>+\<lfloor\>10/9\<rfloor\>=3+1=4>.

  <strong|5.> Dividendo per 3: <math|2x+3y=1>. Una soluzione è <math|(-1,1)>;
  tutte sono <math|x=-1+3t>, <math|y=1-2t>. Per <math|x\<geq\>0> serve
  <math|t\<geq\>1>, per <math|y\<geq\>0> serve <math|t\<leq\>0>: nessuna
  soluzione non negativa. <math|6x+9y=4> non ha soluzioni intere:
  <math|3\<nmid\>4>.

  <strong|6.> <math|5<rsup|-1>\<equiv\>5<pmod|12>>, perché
  <math|25\<equiv\>1>. Per <math|8x\<equiv\>4<pmod|12>>: <math|gcd(8,12)=4>
  divide 4; si riduce a <math|2x\<equiv\>1<pmod|3>>, cioè
  <math|x\<equiv\>2<pmod|3>>: una classe modulo 3. Modulo 12 sono quattro
  classi: <math|2,5,8,11>.

  <strong|7.> <math|gcd(6,9)=3> divide <math|5-2>: si può. Da <math|x=2+6k>:
  <math|6k\<equiv\>3<pmod|9>>, cioè <math|2k\<equiv\>1<pmod|3>>,
  <math|k\<equiv\>2>, quindi <math|x\<equiv\>14<pmod|18>>. Il periodo è
  <math|<math-up|mcm>(6,9)=18>. Con secondo resto 4: <math|3\<nmid\>4-2>,
  nessuna soluzione.

  <strong|8.> <math|13\<equiv\>-4<pmod|17>>; le potenze di 4 sono
  <math|1,4,-1,-4>, quindi <math|x\<equiv\>3<pmod|4>>. Per <math|1/12>:
  <math|12=2<rsup|2>\<cdot\>3>, antiperiodo 2, periodo
  <math|<math-up|ord><rsub|3>(10)=1>. Se <math|u=0,08<wide|3|\<bar\>>>,
  <math|1000u-100u=83,<wide|3|\<bar\>>-8,<wide|3|\<bar\>>=75>, quindi
  <math|u=75/900=1/12>.

  <strong|9.> Ordine <math|<math-up|mcm>(3,2)=6>.
  <math|2\<bbb-Z\>\<cup\>3\<bbb-Z\>> non è un sottogruppo: contiene 2 e 3 ma
  non 5.

  <strong|10.> Modulo 3 le radici sono 1 e 2. Per 1: <math|\<gamma\>=0>,
  derivata 2: <math|h=0>, radice 1 modulo 9. Per 2:
  <math|\<gamma\>=(4-1)/3=1>, derivata <math|4\<equiv\>1>:
  <math|1+h\<equiv\>0>, <math|h=2>, radice 8. Quindi
  <math|x\<equiv\>1,8<pmod|9>>. Modulo 18: si aggiunge la condizione modulo 2
  (<math|x> dispari) e si ricompone, <math|x\<equiv\>1,17<pmod|18>>.
  <math|18=2\<cdot\>9> non è una potenza di 3: qui si usa il teorema cinese
  fra 2 e 9, non il sollevamento.
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
    <associate|auto-10|<tuple|9|39>>
    <associate|auto-11|<tuple|10|44>>
    <associate|auto-12|<tuple|A|47>>
    <associate|auto-13|<tuple|B|48>>
    <associate|auto-2|<tuple|1|4>>
    <associate|auto-3|<tuple|2|9>>
    <associate|auto-4|<tuple|3|17>>
    <associate|auto-5|<tuple|4|20>>
    <associate|auto-6|<tuple|5|24>>
    <associate|auto-7|<tuple|6|27>>
    <associate|auto-8|<tuple|7|32>>
    <associate|auto-9|<tuple|8|35>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Come
      usare questo libro> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Imparare
      a dimostrare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Contare
      senza ripetere> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Dalle
      ricorrenze alle formule> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Dividere,
      trovare il MCD, scomporre> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Equazioni
      negli interi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Dagli
      interi alle classi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Ricomporre
      i resti> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Potenze
      e cifre periodiche> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Il
      linguaggio dei gruppi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Quadratiche
      e potenze prime> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendice
      A<space|2spc>La cassetta degli attrezzi>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendice
      B<space|2spc>Risposte alle verifiche>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>