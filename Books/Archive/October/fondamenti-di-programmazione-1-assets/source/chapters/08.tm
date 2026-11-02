  <chapter|Cicli: invarianti e terminazione>

  <\inbreve>
    Un ciclo può girare un numero di volte che non conosciamo prima di eseguirlo. Per ragionarne cerchiamo un <strong|invariante>, un'asserzione che resta vera a ogni giro, e per la terminazione una <strong|funzione di terminazione>, che ogni giro fa diminuire. Con queste due idee si costruiscono le prove di correttezza dei programmi con <tt|while>.
  </inbreve>

  <section|Il problema del ciclo>

  Il comando <tt|while E do C endw> esegue copie del corpo <math|C> finché la guardia <math|E> è vera, ma non sappiamo in anticipo quante. Se i giri fossero <math|k> fissi, basterebbe concatenare <math|k> volte la regola (seq): <math|{P}C{P<rsub|1>}>, <math|{P<rsub|1>}C{P<rsub|2>}>, …, <math|{P<rsub|k-1>}C{R}>. Ma <math|k> non è noto.

  Per questo si cerca un'unica asserzione <math|<math-up|Inv>>, l'<strong|invariante>, che sostituisca tutte le intermedie. Ragionando sulla correttezza parziale, si può concludere che il ciclo ha la forma <math|<hoare|<math-up|Inv>|<tt|while E do C endw>|<math-up|Inv>∧¬E>>. Le regole sono due. La prima:

  <\equation*>
    <frac|<hoare|<math-up|Inv>∧E|C|<math-up|Inv>>|<hoare|<math-up|Inv>|<tt|while E do C endw>|<math-up|Inv>∧¬E>><space|1em><text|(1)>
  </equation*>

  Non serve che <math|<math-up|Inv>> valga dopo ogni singolo comando del corpo: basta che sia ristabilito prima della successiva valutazione della guardia. La seconda regola parte da una tripla generica con <math|P> e <math|R> qualunque, e rafforza le premesse con (pre-post):

  <\equation*>
    <frac|P⇒<math-up|Inv><space|2em><hoare|<math-up|Inv>∧E|C|<math-up|Inv>><space|2em><math-up|Inv>∧¬E⇒R|<hoare|P|<tt|while E do C endw>|R>><space|1em><text|(1-bis)>
  </equation*>

  La (1) e la (1-bis) danno solo la correttezza <em|parziale>: non dicono nulla sulla terminazione.

  <figura|@IMG(invariante)|L'invariante è una zona di stati che il ciclo non abbandona. Ogni giro parte dalla zona e vi ritorna; all'uscita la guardia è falsa, e la zona più <math|¬E> dà la postcondizione.>

  Un invariante deve essere <em|significativo>. <math|<vero>> è invariante di ogni ciclo, perché ogni stato lo soddisfa, ma non dice nulla del programma.

  <section|Correttezza totale>

  Per la terminazione servono tre cose: la guardia deve essere definita, ogni giro deve terminare con successo, e il numero di giri deve essere finito. La guardia è coperta da <math|<math-up|def>(E)>; per il terzo punto si usa una <strong|funzione di terminazione> <math|<math-up|expt>>, a valori interi, con due ipotesi:

  <\equation*>
    <math-up|Inv>⇒<math-up|expt>≥0<space|2em><text|e><space|2em><hoare|<math-up|Inv>∧E∧<math-up|expt>=V|C|<math-up|expt>‹V>
  </equation*>

  dove <math|V> è una variabile di specifica, che il corpo non modifica e che memorizza il valore di <math|<math-up|expt>> prima del giro. La prima dice che <math|<math-up|expt>> non scende sotto zero; la seconda che ogni giro la fa diminuire strettamente. Non esiste una successione infinita strettamente decrescente di naturali: quindi il ciclo non può girare per sempre.

  Servono entrambe le ipotesi. Per <math|<tt|while x ›0 do x := x+1 endw>> con <math|<math-up|expt>=-x>, la diminuzione c'è, ma <math|-x> non è non negativa: da <math|x=1> il ciclo non termina. Viceversa, per <tt|while x ≠ 0 do x := x+1 endw> con <math|<math-up|Inv>≡(x≥0)> e <math|<math-up|expt>=x>, la non negatività c'è, ma <math|x> non diminuisce: da <math|x=1> il ciclo non termina.

  La regola per la correttezza totale è:

  <\equation*>
    <frac|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|<math-up|Inv>⇒<math-up|expt>≥0>>|<row|<cell|<hoare|<math-up|Inv>∧E∧<math-up|expt>=V|C|<math-up|expt>‹V>>>|<row|<cell|<hoare|<math-up|Inv>∧E|C|<math-up|Inv>∧<math-up|def>(E)>>>>>>|<hoare|<math-up|Inv>∧<math-up|def>(E)|<tt|while E do C endw>|<math-up|Inv>∧¬E>><space|1em><text|(while)>
  </equation*>

  Per una specifica <math|<hoare|P|<tt|while E do C endw>|Q>> si verificano cinque obblighi:

  @TABLE
  Obbligo & Che cosa bisogna dimostrare
  Ingresso & <math|P⇒<math-up|Inv>∧<math-up|def>(E)>
  Invarianza & <math|<hoare|<math-up|Inv>∧E|C|<math-up|Inv>∧<math-up|def>(E)>>
  Terminazione & <math|<math-up|Inv>⇒<math-up|expt>≥0>
  Progresso & <math|<hoare|<math-up|Inv>∧E∧<math-up|expt>=V|C|<math-up|expt>‹V>>
  Uscita & <math|<math-up|Inv>∧¬E⇒Q>
  @END

  Spesso <math|P> non basta a stabilire l'invariante. Si premette allora un comando di inizializzazione <math|<math-up|CI>> con <math|<hoare|P|<math-up|CI>|<math-up|Inv>∧<math-up|def>(E)>>, e per (seq) si conclude <math|<hoare|P|<math-up|CI>; <tt|while E do C endw>|Q>>.

  <\guidato|La somma dei primi interi>
    Dimostra la specifica <math|n›0⟶s=<big|sum><rsub|i=0><rsup|n-1>i>, con <math|n> non modificato, per questo programma:

    @CODE
    x := 0; s := 0;
    while x < n do
        s := s + x;
        x := x + 1
    endw
    @END

    <em|Idea.> <math|s> deve contenere la somma degli interi già attraversati: <math|<math-up|Inv>≡(s=<big|sum><rsub|i=0><rsup|x-1>i ∧ 0≤x≤n)> e <math|<math-up|expt>=n-x>.

    <em|Conto.> <em|Ingresso>: dopo <tt|x := 0; s := 0> la somma vuota vale <math|0>, quindi <math|<math-up|Inv>> vale; la guardia è sempre definita.

    <em|Invarianza>: si lavora all'indietro su <math|<math-up|Inv>∧x‹n>. Prima di <tt|x := x + 1> serve <math|s=<big|sum><rsub|i=0><rsup|x>i ∧ 0≤x+1≤n>. Prima di <tt|s := s + x> serve <math|s+x=<big|sum><rsub|i=0><rsup|x>i ∧ 0≤x+1≤n>. Ma <math|<big|sum><rsub|i=0><rsup|x>i=<big|sum><rsub|i=0><rsup|x-1>i+x>, quindi la prima congiunzione segue da <math|<math-up|Inv>>, e la seconda da <math|0≤x‹n>.

    <em|Terminazione e uscita>: <math|n-x> è non negativa perché <math|x≤n>, e diminuisce di <math|1> a ogni giro. All'uscita <math|x≥n> e <math|x≤n> danno <math|x=n>, quindi <math|s=<big|sum><rsub|i=0><rsup|n-1>i>.

    <em|Controllo.> Con <math|n=4>, i valori di <math|s> sono <math|0,0,1,3,6> e il ciclo si ferma con <math|x=4>: <math|6=0+1+2+3>. Con <math|n=0> il corpo non viene eseguito e <math|s=0>, la somma vuota.
  </guidato>

  <section|Un esempio: la divisione intera>

  La divisione per sottrazioni del capitolo 7 soddisfa la specifica <math|x≥0∧y›0⟶x=q·y+r∧0≤r‹y>, con <math|x,y> non modificati. Verifichiamola.

  <\guidato|Divisione intera: l'invariante con <math|y›0>>
    <em|Idea.> Ogni giro toglie <math|y> da <math|r> e aggiunge <math|1> a <math|q>. L'invariante è <math|<math-up|Inv>≡(x=q·y+r∧r≥0∧y›0)> e la funzione di terminazione <math|<math-up|expt>=r>. Il vincolo <math|y›0> è aggiunto dal libro: serve a far diminuire <math|r>.

    <em|Conto.> <em|Ingresso>: dopo <tt|q := 0; r := x> si ha <math|x=0·y+x>, <math|r=x≥0>, e <math|y›0> è la precondizione. <em|Invarianza>: se <math|q<rprime|'>=q+1> e <math|r<rprime|'>=r-y>, allora <math|q<rprime|'>·y+r<rprime|'>=(q+1)y+(r-y)=q·y+r=x>; la guardia dà <math|r-y≥0>; <math|y›0> non cambia. <em|Terminazione e progresso>: <math|r≥0>, e <math|r<rprime|'>=r-y‹r> perché <math|y›0>. <em|Uscita>: <math|r‹y>, con l'invariante, dà <math|q=x<space|0.2em><math-up|div><space|0.2em>y> e <math|r=x<space|0.2em>mod<space|0.2em>y>.

    <em|Controllo.> Con <math|x=17> e <math|y=5> la scala di <math|r> è <math|17, 12, 7, 2>: si esce con <math|q=3> e <math|r=2>, perché <math|17=3·5+2>.
  </guidato>

  <figura|@IMG(scala)|La scala di <math|r> con <math|x=17>, <math|y=5>: ogni gradino è una sottrazione di <math|y>; si scende finché <math|r‹y>.>

  Con <math|y=0> il corpo lascia <math|r> invariato e fa crescere <math|q>: la guardia resta vera per sempre. È il motivo per cui <math|y›0> è essenziale.

  <section|Programmi annotati e regole derivate>

  Un programma annotato rende visibili le asserzioni che servono alla prova. Le annotazioni non sostituiscono gli obblighi: li organizzano.

  @CODE
  {P}
  CI;
  {inv: Inv} {ft: expt}
  while E do
      {Inv and E}
      C
  endw
  {Inv and not E}
  {Q}
  @END

  Dalle regole base si ricavano tre regole derivate. Due combinano dimostrazioni sullo stesso comando:

  <\equation*>
    <frac|<hoare|P<rsub|1>|C|Q<rsub|1>><space|2em><hoare|P<rsub|2>|C|Q<rsub|2>>|<hoare|P<rsub|1>∧P<rsub|2>|C|Q<rsub|1>∧Q<rsub|2>>><space|1em><text|(cong)>
  </equation*>

  <\equation*>
    <frac|<hoare|P|C|Q><space|2em><hoare|R|C|Q>|<hoare|P∨R|C|Q>><space|1em><text|(disg)>
  </equation*>

  La terza serve a trasportare una proprietà attraverso un comando che non la tocca. Sia <math|<math-up|change>(C)> l'insieme delle variabili che compaiono come destinazione di un assegnamento in <math|C>: è un insieme di variabili <em|potenzialmente> modificate.

  <\equation*>
    <frac|<math-up|free>(P)∩<math-up|change>(C)=∅<space|2em><hoare|R|C|Q>|<hoare|P∧R|C|P∧Q>><space|1em><text|(invariante)>
  </equation*>

  Nella divisione, il corpo assegna solo a <math|q> e <math|r>: quindi <math|y›0> si trasporta attraverso il ciclo.

  <section|Un esempio geometrico>

  Dati <math|N> punti blu e <math|N> punti rossi nel piano, senza tre punti allineati, si vogliono <math|N> segmenti che abbinino ogni blu a un rosso, senza che due segmenti si intersechino. Un algoritmo:

  @CODE
  abbina ciascun punto blu a un diverso punto rosso;
  while esistono due segmenti che si intersecano do
      sostituiscili con i due segmenti non incrociati
      che collegano ancora estremi di colore diverso
  endw
  @END

  Sia <math|<math-up|good>(s)> la proprietà «gli estremi di <math|s> hanno colori diversi» e <math|<math-up|good>(S)> = «ogni segmento di <math|S> è <math|<math-up|good>>». L'inizializzazione stabilisce <math|<math-up|good>(S)>, e il corpo lo conserva. All'uscita vale quindi <math|<math-up|good>(S)> e nessuna coppia di segmenti si interseca: il problema è risolto, <em|se il ciclo termina>.

  <figura|@IMG(incroci)|Due segmenti <math|AB> e <math|CD> che si incrociano in <math|E> vengono sostituiti da <math|AD> e <math|CB>, più corti.>

  Contare le intersezioni non basta: eliminarne una può crearne altre. Si sceglie invece la lunghezza totale <math|F(S)=<big|sum><rsub|s∈S>ℓ(s)>. Se <math|AB> e <math|CD> si incrociano in <math|E>, la disuguaglianza triangolare sui triangoli <math|AED> e <math|CEB> dà <math|ℓ(AD)‹ℓ(AE)+ℓ(ED)> e <math|ℓ(CB)‹ℓ(CE)+ℓ(EB)>. Sommando, <math|ℓ(AD)+ℓ(CB)‹ℓ(AB)+ℓ(CD)>: la lunghezza totale scende. La disuguaglianza è stretta perché non ci sono terne allineate.

  Una funzione a valori reali non negativi, da sola, non prova la terminazione. Qui però le configurazioni possibili sono finite: con <math|N> punti blu e <math|N> rossi, gli abbinamenti sono <math|N!>. Una successione strettamente decrescente in un insieme finito non può essere infinita.

  <section|Radice cubica intera>

  Con <math|x≥0> intero e non modificato, il programma è:

  @CODE
  a := 0;
  b := 0;
  y := 0;
  while y <= x do
      y := y + 3*a + 3*b + 1;
      a := a + 2*b + 1;
      b := b + 1
  endw
  @END

  Le identità <math|(b+1)<rsup|2>=b<rsup|2>+2b+1> e <math|(b+1)<rsup|3>=b<rsup|3>+3b<rsup|2>+3b+1> suggeriscono di mantenere <math|a=b<rsup|2>> e <math|y=b<rsup|3>>. Con <math|J≡(a=b<rsup|2> ∧ y=b<rsup|3> ∧ (b-1)<rsup|3>≤x)>: all'inizio <math|a=b=y=0> e <math|(b-1)<rsup|3>=-1≤x>. Il corpo aggiorna <math|y> per primo, perché usa i vecchi valori di <math|a> e <math|b>; poi <math|a>, che usa il vecchio <math|b>; infine <math|b>. <strong|L'ordine degli assegnamenti è essenziale.>

  All'uscita valgono <math|J> e <math|y›x>, quindi <math|(b-1)<rsup|3>≤x‹b<rsup|3>>, cioè <math|b-1=<around*|\<lfloor\>|x<rsup|1/3>|\<rfloor\>>>.

  <\attenzione|Il programma calcola un valore in più>
    Il codice delle slide, da solo, lascia in <math|b> la parte intera della radice cubica <em|più uno>: con <math|x=0> il corpo gira una volta e <math|b=1>; con <math|x=8>, <math|b=3>. Per avere la radice in <math|b> serve l'assegnamento <tt|b := b - 1> dopo <tt|endw>. Questa correzione è aggiunta al programma delle slide.
  </attenzione>

  Per la terminazione (svolgimento aggiunto) si rafforza l'invariante con <math|b≥0∧x≥0> e si prende <math|<math-up|expt>=x+1-(b-1)<rsup|3>>. Da <math|(b-1)<rsup|3>≤x> segue <math|<math-up|expt>≥1>. Dopo un giro, <math|<math-up|expt><rprime|'>=x+1-b<rsup|3>>, e <math|<math-up|expt>-<math-up|expt><rprime|'>=b<rsup|3>-(b-1)<rsup|3>=3b(b-1)+1›0> per ogni intero <math|b≥0>.

  Traccia con <math|x=10>, come <math|(a,b,y)>:

  @TABLE
  giro & <math|a> & <math|b> & <math|y> & guardia <math|y≤10>
  inizio & <math|0> & <math|0> & <math|0> & <vero>
  1 & <math|1> & <math|1> & <math|1> & <vero>
  2 & <math|4> & <math|2> & <math|8> & <vero>
  3 & <math|9> & <math|3> & <math|27> & <falso>
  @END

  Il risultato è <math|b-1=2=<around*|\<lfloor\>|10<rsup|1/3>|\<rfloor\>>>.

  <section|Fattoriale>

  Con <math|n≥0> non modificato, si vuole <math|<hoare|n≥0|C|<math-up|fatt>=n!>>. Il programma è:

  @CODE
  fatt := 1;
  x := 1;
  while x <= n do
      fatt := fatt * x;
      x := x + 1
  endw
  @END

  L'invariante è <math|<math-up|Inv>≡(<math-up|fatt>=(x-1)!∧1≤x≤n+1)>: il limite inferiore <math|1> rende definito <math|(x-1)!>. Per la terminazione si prende <math|<math-up|expt>=n+1-x>. Non <math|n-x>: nello stato finale <math|x=n+1> darebbe <math|-1>, che viola <math|<math-up|Inv>⇒<math-up|expt>≥0>. Il ciclo termina con <math|x=n+1>, quindi <math|<math-up|fatt>=n!>. Per <math|n=0> il corpo non gira e <math|<math-up|fatt>=1=0!>.

  <section|Massimo comune divisore per sottrazioni>

  Con <math|a,b> interi positivi non modificati, si vuole <math|<hoare|a›0∧b›0|C|x=<math-up|mcd>(a,b)>>. Il programma:

  @CODE
  x := a;
  y := b;
  while x != y do
      if x > y
          then x := x - y
          else y := y - x
      fi
  endw
  @END

  Se all'uscita <math|x=y>, allora <math|<math-up|mcd>(x,y)=x>. Basta quindi <em|conservare> il massimo comun divisore: <math|<math-up|Inv>≡(x›0∧y›0∧<math-up|mcd>(x,y)=<math-up|mcd>(a,b))>. Le proprietà usate sono <math|<math-up|mcd>(x,y)=<math-up|mcd>(x-y,y)> per <math|x›y›0> e la simmetrica.

  Ogni ramo conserva <math|<math-up|Inv>>, e <math|<math-up|expt>=x+y> è positiva e diminuisce: nel primo ramo il nuovo valore è <math|(x-y)+y=x‹x+y>, nel secondo <math|x+(y-x)=y‹x+y>. Quindi il ciclo termina con <math|x=y>, e <math|<math-up|mcd>(a,b)=<math-up|mcd>(x,x)=x>.

  La tecnica generale è questa: si scelgono variabili di lavoro <math|x<rsub|i>>, inizializzate con i dati <math|a<rsub|i>>, e si conserva una quantità <math|F(x<rsub|1>,…)=F(a<rsub|1>,…)>. Nel MCD la quantità è <math|<math-up|mcd>>, e all'uscita la guardia falsa rende semplice estrarre il risultato.

  <section|Ricavare un assegnamento dalla quantità da conservare>

  Si cerca <math|E> tale che la tripla <math|<hoare|xy+pq=n|x:=x-p; q:=E|xy+pq=n>> sia vera. L'aggiornamento di <math|x> sottrae <math|py> alla quantità <math|xy+pq>; per compensare, <math|q> deve crescere di <math|y>:

  <\equation*>
    E≡q+y
  </equation*>

  Verifica all'indietro: <math|(x-p)y+p(q+y)=xy-py+pq+py=xy+pq=n>. Non ci sono divisioni né accessi ad array, quindi tutte le espressioni sono definite. Se <math|p=0> la conservazione non impone vincoli su <math|q>, e <math|q+y> va bene anche in quel caso.

  <\officina|8. I cinque obblighi di un ciclo>
    Un ciclo non si dimostra con un ragionamento generale: si dimostrano cinque obblighi, uno per volta.

    <\itemize>
      <item>Scrivi l'invariante: che cosa resta vero prima di ogni giro e alla fine?

      <item>Scegli la funzione di terminazione: un'espressione intera, non negativa, che diminuisce a ogni giro.

      <item>Verifica Ingresso, Invarianza, Terminazione, Progresso e Uscita, nell'ordine della tabella.

      <item>Se l'invariante ti sembra troppo debole, rafforzalo con vincoli di segno o di dominio, come <math|y›0>.
    </itemize>
  </officina>

  <\verifica|8>
    <strong|a)> Elenca i cinque obblighi di un ciclo.

    <strong|b)> Il ciclo <tt|while x ≠ 0 do x := x + 1 endw> ammette una prova di correttezza totale con invariante <math|x≥0>? Quale obbligo fallisce?

    <strong|c)> Per <tt|while i ‹ n do i := i + 1 endw>, con invariante <math|0≤i≤n>, quale funzione di terminazione useresti e perché funziona?
  </verifica>
