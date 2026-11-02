  <chapter|Triple di Hoare>

  <\inbreve>
    Una tripla di Hoare <math|<hoare|Q|C|R>> collega un programma alle sue specifiche: se si parte da uno stato che soddisfa <math|Q>, il comando <math|C> termina con successo in uno stato che soddisfa <math|R>. Impariamo a leggere una tripla in tre modi (per capire un comando, per scrivere un comando, per dimostrarne la correttezza) e a costruire le prove con regole di inferenza.
  </inbreve>

  <section|Il significato di una tripla>

  Una <strong|tripla di Hoare> è una terna <math|<hoare|Q|C|R>>: <math|Q> è la <strong|precondizione>, <math|R> la <strong|postcondizione>, <math|C> un comando. La tripla è <em|soddisfatta> se, da ogni stato <math|σ⊨Q>, l'esecuzione di <math|C> <em|termina con successo> in uno stato <math|σ<rprime|'>⊨R>. \S Con successo\T vuol dire senza errori: un assegnamento che divide per zero non termina con successo.

  <\equation*>
    <hoare|x›1|x:=x+1|x›2>
  </equation*>

  Questa tripla è soddisfatta: da ogni stato con <math|x›1> l'assegnamento porta a uno stato con <math|x›2>.

  Servono alcune notazioni. <math|<math-up|free>(P)> è l'insieme delle variabili libere di <math|P>: per esempio <math|<math-up|free>(x›y∧z≤1)={x,y,z}>. <math|P<rsup|σ>> è l'asserzione <math|P> in cui ogni variabile libera è sostituita dal suo valore in <math|σ>, e <math|σ⊨P> vale se <math|P<rsup|σ>> è vera. Con <math|σ={x↦18,y↦<vero>,z↦-8}> e <math|P≡(x›0∧z‹0)> si ha <math|P<rsup|σ>≡(18›0∧-8‹0)≡<vero>>. Infine <math|{P}> indica l'insieme degli stati che soddisfano <math|P>.

  Tre proprietà, usate senza dimostrazione (le slide le omettono; seguono dalle definizioni):

  <\itemize>
    <item><strong|(P1)> Se <math|σ(x)=σ<rprime|'>(x)> per ogni <math|x∈<math-up|free>(E)>, allora <math|ℰ(E,σ)=ℰ(E,σ<rprime|'>)>.

    <item><strong|(P2)> Se <math|σ(x)=σ<rprime|'>(x)> per ogni <math|x∈<math-up|free>(P)>, allora <math|σ⊨P> se e solo se <math|σ<rprime|'>⊨P>.

    <item><strong|(P3)> <math|σ[ℰ(E,σ)/x]⊨P>, con <math|E> definita e sostituzione senza cattura, se e solo se <math|σ⊨P[E/x]>.
  </itemize>

  (P3) dice che assegnare a <math|x> il valore di <math|E> e poi valutare <math|P> equivale a valutare, nello stato di partenza, <math|P> con <math|E> al posto di <math|x>. Due esempi:

  <\equation*>
    σ[ℰ(z+1,σ)/x]⊨(x›y)<text| se e solo se >σ⊨(x›y)[z+1/x]
  </equation*>

  <\equation*>
    σ[ℰ(x+y,σ)/x]⊨(x=z)<text| se e solo se >σ⊨(x=z)[x+y/x]
  </equation*>

  Nel primo, il valore di <math|x> dopo l'assegnamento è <math|σ(z)+1>, e <math|σ(z)+1›σ(y)> vale se e solo se <math|z+1›y>. Nel secondo il valore è <math|σ(x)+σ(y)>, e l'uguaglianza con <math|σ(z)> è proprio <math|x+y=z>.

  <section|Tre usi di una tripla>

  La stessa tripla si può leggere in tre modi.

  <\itemize>
    <item><strong|Semantica.> Dati <math|Q> e <math|C>, si cerca <math|R> che descriva il comportamento di <math|C>. Con <math|C≡<tt|if x ‹ 10 then x := 1 else x := 2 fi>> e <math|Q≡(x›10)>, la postcondizione <math|R≡(x=2)> descrive il comando: la guardia è falsa, si esegue il ramo <tt|else> e si ottiene <math|x=2>.

    <item><strong|Specifica.> Dati <math|Q> e <math|R>, si cerca un <math|C> che renda vera la tripla: è scrivere un programma che realizza la specifica. Con <math|Q≡(x›0)> e <math|R≡(y=2·x)> vanno bene <tt|y := x * 2>, <tt|y := x + x>, <tt|y := x; y := y * 2>. Ma va bene anche <tt|y := 10; x := 5>: nello stato finale <math|y=10=2·5>. Non è ciò che volevamo, perché il programma ha cambiato <math|x>. Per escluderlo servono le variabili di specifica del capitolo 6.

    <item><strong|Correttezza.> Dati <math|C>, <math|Q> e <math|R>, si dimostra che la tripla è soddisfatta. È l'uso che faremo in questo corso. Per esempio, il programma seguente soddisfa la tripla con <math|Q≡(x≥0∧y›0)> e <math|R≡(x=q·y+r∧0≤r‹y)>:
  </itemize>

  @CODE
  q := 0;
  r := x;
  while r >= y do
      q := q + 1;
      r := r - y
  endw
  @END

  <section|Regole per pre- e postcondizione>

  Una prova è una sequenza di regole di inferenza: sopra la linea le premesse, sotto la conclusione. Le prime due regole indeboliscono una tripla: si può partire da un insieme più piccolo di stati e arrivare a uno più grande.

  <\equation*>
    <frac|P⇒P<rprime|'><space|2em><hoare|P<rprime|'>|C|R>|<hoare|P|C|R>><space|1em><text|(pre)>
  </equation*>

  <\equation*>
    <frac|<hoare|P|C|R<rprime|'>><space|2em>R<rprime|'>⇒R|<hoare|P|C|R>><space|1em><text|(post)>
  </equation*>

  Le due insieme danno la regola (pre-post):

  <\equation*>
    <frac|P⇒P<rprime|'><space|2em><hoare|P<rprime|'>|C|R<rprime|'>><space|2em>R<rprime|'>⇒R|<hoare|P|C|R>><space|1em><text|(pre-post)>
  </equation*>

  <figura|@IMG(pre-post)|Rafforzare la precondizione restringe l'insieme di partenza; indebolire la postcondizione allarga quello di arrivo. La tripla resta valida.>

  Lo <tt|skip> non cambia lo stato, quindi ha un assioma senza premesse:

  <\equation*>
    <hoare|P|<tt|skip>|P><space|1em><text|(skip)>
  </equation*>

  <section|Quando un'espressione è definita>

  Un'espressione può non avere valore per due motivi: la tipizzazione è scorretta, come in <tt|5 + true>, ma questo caso è escluso da un controllo dei tipi preliminare; oppure il valore è indefinito, come in <tt|x := 0; y := k div x>. Per il secondo caso introduciamo una funzione <math|<math-up|def>> che, dato <math|E>, restituisce un'asserzione tale che <math|σ⊨<math-up|def>(E)> se e solo se <math|ℰ(E,σ)> è definito.

  <\itemize>
    <item><math|<math-up|def>(c)=<math-up|def>(x)=<vero>>, per costanti <math|c> e identificatori <math|x>.

    <item><math|<math-up|def>(E<space|0.2em><math-up|op><space|0.2em>E<rprime|'>)=<math-up|def>(E)∧<math-up|def>(E<rprime|'>)>, per <math|<math-up|op>∈{+,-,*,=,≠,‹,›,≤,≥,<tt|and>,<tt|or>}>.

    <item><math|<math-up|def>(E<space|0.2em><math-up|div><space|0.2em>E<rprime|'>)=<math-up|def>(E)∧<math-up|def>(E<rprime|'>)∧E<rprime|'>≠0>, e lo stesso per <math|mod>.

    <item><math|<math-up|def>(<tt|not>E)=<math-up|def>(E)>.
  </itemize>

  Come nelle regole delle slide, qui gli identificatori letti si assumono presenti nello stato e del tipo dichiarato. Senza questa ipotesi, anche la lettura di un nome assente sarebbe indefinita. Le sole ulteriori fonti di indefinitezza sono quindi <math|<math-up|div>> e <math|mod> con secondo argomento nullo. Per esempio <math|<math-up|def>(x<space|0.2em><math-up|div><space|0.2em>(z-y))> vale <math|z≠y>:

  @CHAIN
  <math|<math-up|def>(x<space|0.2em><math-up|div><space|0.2em>(z-y))>
  <math|≡> <math|<math-up|def>(x)∧<math-up|def>(z-y)∧z-y≠0> ;; definizione di def
  <math|≡> <math|<vero>∧<math-up|def>(z-y)∧z≠y> ;; <math|<math-up|def>(x)≡<vero>>; <math|z-y≠0> è <math|z≠y>
  <math|≡> <math|<math-up|def>(z)∧<math-up|def>(y)∧z≠y> ;; def di una differenza, unità
  <math|≡> <math|z≠y> ;; <math|<math-up|def>(z)≡<math-up|def>(y)≡<vero>>, unità
  @END

  <section|Assegnamento>

  L'assioma dell'assegnamento si usa <em|all'indietro>, dalla postcondizione alla precondizione:

  <\equation*>
    <hoare|<math-up|def>(E)∧P[E/x]|x:=E|P><space|1em><text|(ass)>
  </equation*>

  dove <math|P[E/x]> è <math|P> con <math|E> al posto di <math|x>. L'intuizione: perché <math|P> valga dopo l'assegnamento, deve valere prima la stessa <math|P> con <math|E> al posto di <math|x>; e <math|E> deve avere un valore nello stato di partenza.

  Per esempio, con <math|P≡(x›y)>:

  <\equation*>
    <hoare|x+2›y|x:=x+2|x›y>
  </equation*>

  perché <math|(x›y)[x+2/x]≡(x+2›y)> e <math|<math-up|def>(x+2)≡<vero>>. Con una costante, <math|<hoare|<vero>|x:=5|x=5>>, perché <math|<math-up|def>(5)∧(5=5)≡<vero>>.

  Per <em|verificare> un assegnamento, si combina l'assioma con la regola (pre). Si ottiene una regola in cui resta solo un'implicazione:

  <\equation*>
    <frac|R⇒<math-up|def>(E)∧P[E/x]|<hoare|R|x:=E|P>><space|1em><text|(ass), verifica>
  </equation*>

  <section|Sequenza>

  La regola della sequenza unisce due triple con un'asserzione intermedia <math|R>, che fa da ponte:

  <\equation*>
    <frac|<hoare|P|C|R><space|2em><hoare|R|C<rprime|'>|Q>|<hoare|P|C;C<rprime|'>|Q>><space|1em><text|(seq)>
  </equation*>

  <\guidato|Due assegnamenti in sequenza>
    Verifica <math|<hoare|x≥y-1|x:=x+1; y:=y-1|x›y>>.

    <em|Idea.> Il comando finale è <tt|y := y - 1>. Si calcola all'indietro la precondizione di ciascun comando, e si usa il risultato come intermedia <math|R>.

    <em|Conto.> Per <tt|y := y - 1> con postcondizione <math|x›y>: <math|(x›y)[y-1/y]≡(x›y-1)>, quindi <math|R≡(x›y-1)>. Per <tt|x := x + 1> con postcondizione <math|R>: <math|R[x+1/x]≡(x+1›y-1)≡(x›y-2)>. Basta quindi <math|x≥y-1⟶x›y-2>, che vale perché <math|x≥y-1›y-2>.

    <em|Controllo.> Con <math|x=4>, <math|y=5>: la precondizione è vera (<math|4≥4>). Dopo <tt|x := x + 1> si ha <math|x=5>, poi <tt|y := y - 1> dà <math|y=4>, e <math|5›4>.
  </guidato>

  <figura|@IMG(allindietro)|Il calcolo all'indietro: la postcondizione scende dal fondo del programma verso l'inizio, un comando alla volta, e l'ultima asserzione è la precondizione richiesta.>

  <section|Condizionale>

  <\equation*>
    <frac|P⇒<math-up|def>(E)<space|2em><hoare|P∧E|C|Q><space|2em><hoare|P∧¬E|C<rprime|'>|Q>|<hoare|P|<tt|if E then C else C' fi>|Q>><space|1em><text|(cond)>
  </equation*>

  La prima premessa garantisce che la guardia sia definita; le altre due trattano i rami, ciascuno con la sua ipotesi sulla guardia.

  <\guidato|Il massimo di due valori>
    Verifica <math|<hoare|m=0|<tt|if x ‹ y then m := y else m := x fi>|m=max(x,y)>>.

    <em|Idea.> Il ramo <tt|then> deve dare il massimo quando <math|x‹y>, il ramo <tt|else> quando <math|x≥y>.

    <em|Conto.> Per (cond) servono tre obblighi. (1) <math|m=0⟶<math-up|def>(x‹y)>: vera, perché <math|<math-up|def>(x‹y)≡<math-up|def>(x)∧<math-up|def>(y)≡<vero>>. (2) Per il ramo <tt|then>, con (ass) basta <math|m=0∧x‹y⟶y=max(x,y)>, vera perché il massimo è <math|y> quando <math|x‹y>. (3) Per il ramo <tt|else>, basta <math|m=0∧x≥y⟶x=max(x,y)>, vera per lo stesso motivo.

    <em|Controllo.> L'ipotesi <math|m=0> non serve: con <math|x=3>, <math|y=7> il ramo <tt|then> dà <math|m=7=max(3,7)>; con <math|x=7>, <math|y=3> il ramo <tt|else> dà <math|m=7>.
  </guidato>

  <section|Trovare l'espressione mancante>

  Determiniamo <math|E> in modo che sia vera la tripla

  <\equation*>
    <hoare|x=N∧y=M|t:=E; x:=y; y:=t|x=M∧y=N>
  </equation*>

  dove <math|M> e <math|N> sono variabili di specifica. Con (seq) servono <math|R<rsub|1>> e <math|R<rsub|2>>, e si procede all'indietro con (ass):

  <\itemize>
    <item>Dal terzo comando, <math|R<rsub|2>≡(x=M∧t=N)>, perché <math|(x=M∧y=N)[t/y]≡(x=M∧t=N)>.

    <item>Dal secondo, <math|R<rsub|1>≡(y=M∧t=N)>, perché <math|(x=M∧t=N)[y/x]≡(y=M∧t=N)>.

    <item>Dal primo, resta da trovare <math|E> tale che <math|x=N∧y=M⟶<math-up|def>(E)∧(y=M∧E=N)>.
  </itemize>

  Quindi <math|E≡x>: nello stato iniziale <math|x=N>.

  <\attenzione|Non è E=N>
    Il valore cercato è <math|N>, ma <math|N> non può comparire in un comando: è una variabile di specifica. Il comando deve leggere <math|x>, che nello stato iniziale vale proprio <math|N>.
  </attenzione>

  Ora due triple che <em|non> sono soddisfatte. Perché?

  <\itemize>
    <item><math|<hoare|z=5∧y=7∧x=3|<tt|x := 0; y := z div x>|z›4>>. Dopo <tt|x := 0> il comando <tt|y := z div x> divide per zero: l'esecuzione non termina con successo, anche se <math|z›4> resterebbe vera. Infatti <math|<math-up|def>(z div x)≡x≠0>, e dopo <tt|x := 0> questo diventa <math|0≠0>, falso.

    <item><math|<hoare|x=N∧y=M|x:=y; y:=x|x=M∧y=N>>. Lo stato finale ha <math|x=M> e <math|y=M>: la postcondizione vale solo se <math|M=N>. È lo scambio sbagliato visto nel capitolo 6.
  </itemize>

  Un ultimo esempio di condizionale in sequenza. Verifichiamo <math|<hoare|x=5|x:=3; <tt|if (x = 3) then y := 7 else y := 5 fi>|x=3∧y=7>>. Per (seq) il candidato naturale è <math|R≡(x=3)>. Il primo passo, <math|<hoare|x=5|x:=3|x=3>>, vale perché <math|x=5⟶<math-up|def>(3)∧3=3>. Per il secondo, con (cond): <math|x=3⟶<math-up|def>(x=3)≡<vero>>; nel ramo <tt|then>, <math|x=3∧x=3⟶<math-up|def>(7)∧x=3∧7=7>, vera; nel ramo <tt|else>, la premessa <math|x=3∧¬(x=3)> è falsa, quindi l'implicazione è vera.

  <section|Rafforzare la precondizione>

  Si verifichi

  <\equation*>
    <hoare|x≥0∧y≥0|<tt|if x div y › 0 then z := x else z := y fi>|z=x<space|0.2em>max<space|0.2em>y>
  </equation*>

  La regola (cond) richiede <math|x≥0∧y≥0⟶<math-up|def>(x<space|0.2em><math-up|div><space|0.2em>y›0)>, cioè <math|y≠0>. Ma la precondizione non lo garantisce: con <math|y=0> la guardia non è definita. Per avere una tripla soddisfatta bisogna <em|rafforzare la precondizione>:

  <\equation*>
    <hoare|x≥0∧y›0|<tt|if x div y › 0 then z := x else z := y fi>|z=x<space|0.2em>max<space|0.2em>y>
  </equation*>

  Con <math|x≥0> e <math|y›0>, la guardia <math|x<space|0.2em><math-up|div><space|0.2em>y›0> equivale a <math|x≥y>. Nel ramo <tt|then> serve <math|x≥y⟶x=max(x,y)>; nel ramo <tt|else>, con <math|x‹y>, serve <math|y=max(x,y)>. Entrambe sono vere.

  <section|Correttezza totale e parziale>

  Finora una tripla è di <strong|correttezza totale>, <math|⊨<rsub|tot><hoare|Q|C|R>>: da ogni stato di <math|Q>, <math|C> termina con successo in uno stato di <math|R>. La terminazione è inclusa grazie a <math|<math-up|def>>. Con <strong|correttezza parziale>, <math|⊨<rsub|par><hoare|Q|C|R>>, si richiede solo che, <em|se> <math|C> termina, lo faccia in uno stato di <math|R>. Per questa nozione si possono indebolire le regole, ignorando <math|<math-up|def>>:

  <\equation*>
    <hoare|Q[E/x]|x:=E|Q><space|1em><text|(ass, parziale)>
    <space|3em>
    <frac|P⇒Q[E/x]|<hoare|P|x:=E|Q>><space|1em><text|(ass, parziale)>
  </equation*>

  <\equation*>
    <frac|<hoare|P∧E|C|Q><space|2em><hoare|P∧¬E|C<rprime|'>|Q>|<hoare|P|<tt|if E then C else C' fi>|Q>><space|1em><text|(cond, parziale)>
  </equation*>

  <\officina|7. Calcolare all'indietro>
    Data una postcondizione e un programma, si cerca la precondizione che il programma richiede. Oppure si dimostra una tripla data.

    <\itemize>
      <item>Parti dalla postcondizione e scorri i comandi dal fondo verso l'inizio.

      <item>Per ogni assegnamento <tt|x := E>, sostituisci <math|E> a <math|x> nell'asserzione e aggiungi <math|<math-up|def>(E)>.

      <item>Per un condizionale, la postcondizione resta la stessa nei due rami; le guardie danno <math|P∧E> e <math|P∧¬E>.

      <item>Alla fine confronta la precondizione ottenuta con quella data: serve un'implicazione.
    </itemize>

    Il calcolo all'indietro torna nel capitolo 8, dove la postcondizione di un ciclo si costruisce con un invariante.
  </officina>

  <\verifica|7>
    <strong|a)> Perché la tripla <math|<hoare|x=5|x:=x+1|x=5>> non è soddisfatta?

    <strong|b)> Calcola con (ass) la precondizione di <tt|y := x * 2> rispetto alla postcondizione <math|y›10>.

    <strong|c)> Perché <math|<hoare|x≥0|<tt|y := 1 div x>|y=1>> non è soddisfatta?
  </verifica>
