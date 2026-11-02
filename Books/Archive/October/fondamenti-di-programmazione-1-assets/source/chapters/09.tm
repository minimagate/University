  <chapter|Array e progetto di cicli>

  <\inbreve>
    Un array raccoglie molti valori sotto un solo nome, ciascuno con il suo indice. Con gli array l'invariante descrive una parte già elaborata e una ancora da fare. Alla fine tre tecniche per costruire un ciclo a partire dalla postcondizione, così da non dover indovinare l'invariante.
  </inbreve>

  <section|Array>

  Un <strong|array> rappresenta una sequenza finita di valori dello stesso tipo: è una funzione <math|v:[a,b)→A>, dove <math|[a,b)> sono gli indici naturali <math|i> con <math|a≤i‹b> e <math|A> è <math|ℤ> o <math|<math-up|Bool>>. Il numero di elementi è <math|b-a>: l'estremo <math|b> <strong|non è un indice>. Se <math|a=b> l'array è vuoto. Dominio: <math|<math-up|dom>(v)=[a,b)>.

  Nel linguaggio:

  @CODE
  v : array [a,b) of int
  w : array [a,b) of bool
  @END

  Per esempio <tt|v : array [0,4) of int> ha indici <math|0,1,2,3>. Se <tt|v> è un array ed <tt|E> un'espressione intera, <tt|v[E]> è un'espressione: l'elemento di indice <math|E>. Un valore letto dall'array può servire come indice: <tt|v[v[0]+v[1]]> è lecito. Va però verificato che l'indice sia nel dominio.

  Lo stato cambia: se <math|v> è un array, <math|σ(v)> è una funzione sugli indici, <math|σ(v):<math-up|dom>(v)→A>. Con <math|σ(v)={0↦2, 1↦1, 2↦10, 3↦6}> e <math|E≡v[v[0]+v[1]]>:

  <\equation*>
    ℰ(v[v[0]+v[1]],σ)=σ(v)(σ(v)(0)+σ(v)(1))=σ(v)(3)=6
  </equation*>

  Gli indici <math|0>, <math|1> e <math|3> sono tutti nel dominio. Anche il valore usato come indice esterno deve essere valido.

  La clausola di <math|<math-up|def>> per gli array è

  <\equation*>
    <math-up|def>(v[E])=<math-up|def>(E)∧E∈<math-up|dom>(v)
  </equation*>

  quindi, per un array di dominio <math|[0,n)>, <math|<math-up|def>(v[x+1])≡0≤x+1‹n>.

  <section|Aggiornamento di un elemento>

  Un singolo elemento si modifica con <tt|v[E] := E'>. Il comando <strong|valuta prima, aggiorna dopo>: con <math|j=ℰ(E,σ)> e <math|d=ℰ(E',σ)>, entrambi definiti e <math|j∈<math-up|dom>(v)>, si costruisce la sequenza <math|w=σ(v)[d/j]>, cioè <math|w(i)=d> se <math|i=j> e <math|w(i)=σ(v)(i)> altrimenti. Il nuovo stato associa a <math|v> la sequenza <math|w>:

  <\equation*>
    𝒞(v[E]:=E',σ)=σ[σ(v)[ℰ(E',σ)/ℰ(E,σ)]/v]
  </equation*>

  Ci sono due aggiornamenti: quello interno, dentro la sequenza, e quello esterno, sull'identificatore <math|v>.

  L'assioma si scrive con <math|w=v[E'/E]>, la sequenza ottenuta da <math|v> ponendo <math|E'> all'indice <math|E>:

  <\equation*>
    <hoare|<math-up|def>(E)∧<math-up|def>(E<rprime|'>)∧E∈<math-up|dom>(v)∧P[w/v]|v[E]:=E<rprime|'>|P><space|1em><text|(ass, array)>
  </equation*>

  Nell'asserzione la sostituzione riguarda l'intera sequenza: per ogni indice <math|i>, il nuovo elemento è <math|E'> se <math|i=E>, e il vecchio <math|v[i]> altrimenti. Così si possono dimostrare postcondizioni su più posizioni.

  <\guidato|Somme parziali>
    Sia <tt|a : array [0,n) of int> e <math|n›0>. Verifica

    <\equation*>
      <hoare|1≤k‹n∧(∀i∈[0,k).<space|0.2em>a[i]=<big|sum><rsub|j=0><rsup|i>j)|a[k]:=a[k-1]+k|(∀i∈[0,k].<space|0.2em>a[i]=<big|sum><rsub|j=0><rsup|i>j)>
    </equation*>

    <em|Idea.> La posizione <math|k> è l'unica modificata; le posizioni <math|i‹k> devono restare come sono.

    <em|Conto.> <em|Definitezza>: da <math|1≤k‹n> seguono <math|k∈[0,n)> e <math|k-1∈[0,n)>, quindi la scrittura e la lettura sono lecite. <em|Postcondizione>: se <math|0≤i‹k>, l'aggiornamento non tocca <math|i>, e <math|a[i]> vale ancora <math|<big|sum><rsub|j=0><rsup|i>j>. Se <math|i=k>, il nuovo valore è <math|a[k-1]+k=<big|sum><rsub|j=0><rsup|k-1>j+k=<big|sum><rsub|j=0><rsup|k>j>.

    <em|Controllo.> Con <math|k=1>: <math|a[0]=0>, quindi <math|a[1]=0+1=1>, che è la somma <math|0+1>. Con <math|k=2>: <math|a[2]=a[1]+2=3=0+1+2>.
  </guidato>

  Il modello tipico delle prove sugli array: si verificano separatamente la posizione modificata e quelle che restano invariate.

  <section|Incrementare tutti gli elementi>

  Sia <tt|a : array [0,n) of int> e <math|V> una variabile di specifica che rappresenta la sequenza iniziale. Vogliamo

  <\equation*>
    <hoare|n≥0∧(∀k∈[0,n).<space|0.2em>a[k]=V[k])|C|(∀k∈[0,n).<space|0.2em>a[k]=V[k]+1)>
  </equation*>

  con il programma

  @CODE
  x := 0;
  while x < n do
      a[x] := a[x] + 1;
      x := x + 1
  endw
  @END

  L'invariante divide l'array in due parti: quella già elaborata e quella ancora da elaborare.

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<table|<row|<cell|<math-up|Inv>≡0≤x≤n>>|<row|<cell|∧(∀k∈[0,x).<space|0.2em>a[k]=V[k]+1)>>|<row|<cell|∧(∀k∈[x,n).<space|0.2em>a[k]=V[k])>>>>>
  </equation*>

  <figura|@IMG(array-zone)|L'array diviso in due zone: a sinistra di <math|x> i valori sono già incrementati, a destra di <math|x> sono ancora quelli iniziali <math|V>. Il corpo sposta il confine di una posizione.>

  La seconda parte è importante: quando si legge <math|a[x]> bisogna sapere che contiene ancora il valore <math|V[x]>.

  <em|Svolgimento aggiunto.> Con <math|x=0> il prefisso elaborato è vuoto e la seconda parte coincide con la precondizione. Sotto <math|<math-up|Inv>∧x‹n>, si ha <math|x∈[0,n)>, quindi l'accesso e la scrittura sono definiti. Dopo l'aggiornamento, le posizioni <math|k‹x> restano uguali, la posizione <math|x> diventa <math|V[x]+1>, e quelle <math|k›x> restano <math|V[k]>. Dopo <tt|x := x + 1> si ritrova <math|<math-up|Inv>>. La quantità <math|n-x> è non negativa e diminuisce di <math|1>. All'uscita <math|x≥n> e <math|x≤n> danno <math|x=n>: tutto l'array è nel prefisso elaborato.

  <section|Progettare un ciclo>

  Data una specifica <math|<hoare|P|C|Q>>, si cerca una scomposizione

  <\equation*>
    P<rprime|'>∧G⇒Q
  </equation*>

  in cui <math|P<rprime|'>> possa essere un invariante e <math|G> sia la negazione di una guardia <math|E> esprimibile nel linguaggio: <math|G≡¬E>. Il programma ha la forma <tt|<math-up|CI>; while E do C endw>, con <math|CI> che stabilisce l'invariante e <math|C> che lo conserva. Restano da verificare definitezza, invarianza e terminazione. È una strategia di progetto, non una ricetta che risolve ogni problema. Ecco tre tecniche.

  <strong|Tecnica 1: scomporre la postcondizione.> Per la divisione intera, con <math|x≥0> e <math|y›0>, la postcondizione <math|q=x<space|0.2em><math-up|div><space|0.2em>y> equivale a <math|∃r.(x=q·y+r∧0≤r‹y)>. Si introduce una variabile <math|r> che sia il testimone dell'esistenziale e si separa:

  <\equation*>
    x=q·y+r∧r≥0<space|1em>∧<space|1em>r‹y
  </equation*>

  dove la prima parte è l'invariante e <math|r‹y> è la parte <math|G>. La guardia è <math|E≡r≥y>; l'inizializzazione è <tt|q := 0; r := x>, il corpo è <tt|q := q + 1; r := r - y>, e la funzione di terminazione è <math|r>. La dimostrazione completa è nel capitolo 8, dove si conserva anche <math|y›0>, necessario perché <math|r> diminuisca.

  <strong|Tecnica 2: sostituire una costante con una variabile.> Vogliamo <math|s=<big|sum><rsub|i=0><rsup|n-1>a[i]> con <math|n> non modificato. Si sostituisce la costante <math|n> con una variabile <math|x> nella postcondizione: <math|s=<big|sum><rsub|i=0><rsup|x-1>a[i]>. Con <math|x=n> si ottiene il risultato; la guardia candidata è <math|x≠n>. Per avere indici validi e una funzione di terminazione naturale si rafforza l'invariante con <math|0≤x≤n>, e si prende <math|<math-up|expt>=n-x>.

  @CODE
  x := 0;
  s := 0;
  while x != n do
      s := s + a[x];
      x := x + 1
  endw
  @END

  Il rafforzamento <math|0≤x≤n> serve a tre cose: controllare gli indici, limitare il contatore e rendere non negativa la funzione di terminazione. Sotto <math|x≠n>, si ha <math|0≤x‹n>, quindi <math|a[x]> è definito.

  <strong|Tecnica 3: variabile ausiliaria.> La successione di Fibonacci è definita da <math|<math-up|fib>(0)=0>, <math|<math-up|fib>(1)=1> e <math|<math-up|fib>(j)=<math-up|fib>(j-1)+<math-up|fib>(j-2)> per <math|j≥2>. Si vuole <math|<hoare|k≥1|C|x=<math-up|fib>(k)>> con <math|k> non modificato.

  Una prima idea è l'invariante <math|x=<math-up|fib>(i)∧1≤i≤k>, con <math|E≡i≠k> e <math|<math-up|expt>=k-i>. Ma per avanzare servirebbe <math|<math-up|fib>(i+1)=x+<math-up|fib>(i-1)>, e <math|<math-up|fib>(i-1)> non è un'espressione del linguaggio. Si introduce quindi <math|y> che ne conservi il valore:

  <\equation*>
    <math-up|Inv>≡x=<math-up|fib>(i)∧y=<math-up|fib>(i-1)∧1≤i≤k
  </equation*>

  Il desiderato è <math|x'=x+y> e <math|y'=x>, in termini dei vecchi valori. La sequenza <tt|x := x + y; y := x> non va bene, perché il secondo comando legge il nuovo <math|x>. Serve una variabile ausiliaria:

  @CODE
  temp := x;
  x := x + y;
  y := temp
  @END

  <figura|@IMG(fibonacci)|Dopo <tt|temp := x> il vecchio valore di <math|x> è salvo. Il passo successivo calcola il termine seguente, e <tt|y := temp> sposta il vecchio <math|x> nella coppia.>

  Il programma completo è:

  @CODE
  x := 1;
  i := 1;
  y := 0;
  while i != k do
      temp := x;
      x := x + y;
      y := temp;
      i := i + 1
  endw
  @END

  Con <math|<math-up|expt>=k-i>: all'inizio <math|<math-up|fib>(1)=1> e <math|<math-up|fib>(0)=0>; se <math|i‹k>, il corpo produce la coppia successiva e porta <math|i+1≤k>; <math|<math-up|expt>> è non negativa e diminuisce di <math|1>. All'uscita <math|i=k>, quindi <math|x=<math-up|fib>(k)>. Per <math|k=1> il ciclo non gira; il caso <math|k=0> è escluso dalla specifica.

  <section|Bandiera a due colori>

  Sia <tt|a : array [0,n) of int>. Vogliamo permutare gli elementi in modo che prima vengano i valori <em|negativi> e poi quelli <em|positivi o nulli>. Sia <math|A> la sequenza iniziale, e <math|<math-up|perm>(a,A)> la relazione: <math|a> e <math|A> hanno gli stessi elementi con le stesse molteplicità, in qualunque ordine.

  <\equation*>
    <hoare|n≥0∧a=A|C|<math-up|perm>(a,A)∧0≤x≤n∧(∀i∈[0,x).<space|0.2em>a[i]‹0)∧(∀i∈[x,n).<space|0.2em>a[i]≥0)>
  </equation*>

  Si introducono due confini <math|x> e <math|y>, con invariante

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<table|<row|<cell|<math-up|Inv>≡<math-up|perm>(a,A)∧0≤x≤y≤n>>|<row|<cell|∧(∀i∈[0,x).<space|0.2em>a[i]‹0)>>|<row|<cell|∧(∀i∈[y,n).<space|0.2em>a[i]≥0)>>>>>
  </equation*>

  @TABLE
  Intervallo & Che cosa sappiamo
  <math|[0,x)> & tutti gli elementi sono negativi
  <math|[x,y)> & gli elementi sono ancora da classificare
  <math|[y,n)> & tutti gli elementi sono non negativi
  @END

  La guardia è <math|x≠y> e la funzione di terminazione è <math|y-x>, la lunghezza della zona non classificata. L'inizializzazione <tt|x := 0; y := n> rende vuote le zone già classificate.

  <figura|@IMG(bandiera)|La bandiera a due colori: il prefisso negativo cresce da sinistra, il suffisso non negativo da destra. Nel mezzo resta la zona ancora da classificare, che si restringe a ogni giro.>

  Sotto <math|<math-up|Inv>∧x≠y> si ha <math|x‹y>, quindi <math|x> e <math|y-1> sono indici validi.

  <\itemize>
    <item>Se <math|a[x]‹0>, basta incrementare <math|x>: l'elemento entra nel prefisso negativo.

    <item>Se <math|a[x]≥0>, va portato a destra. Si scambia <math|a[x]> con <math|a[y-1]> e si decrementa <math|y>. <math|x> <em|non> avanza: il valore arrivato da destra deve ancora essere classificato. Una semplice copia <tt|a[y-1] := a[x]> perderebbe il vecchio elemento di destra; lo scambio conserva <math|<math-up|perm>(a,A)>.
  </itemize>

  @CODE
  x := 0;
  y := n;
  while x != y do
      if a[x] < 0
          then x := x + 1
          else temp := a[y-1];
               a[y-1] := a[x];
               a[x] := temp;
               y := y - 1
      fi
  endw
  @END

  In entrambi i rami l'invariante è conservato e <math|y-x> diminuisce di <math|1>. Lo scambio è corretto anche quando <math|x=y-1>: scambia una posizione con sé stessa. All'uscita <math|x=y> e la zona sconosciuta è vuota.

  <\attenzione|Correzioni alle slide>
    Nella slide 395 i segni dei due casi sono invertiti: i casi coerenti con l'invariante e con il codice della slide 396 sono <math|a[x]‹0> e <math|a[x]≥0>. Nella slide 397 l'ultimo quantificatore riguarda <math|a[i]>, non <math|a[y]>, e il confine finale vale <math|x∈[0,n]>, non <math|[0,n)>: <math|x=n> è possibile se tutti gli elementi sono negativi, e <math|n=0> deve essere ammesso.
  </attenzione>

  <section|Bandiera a tre colori>

  <em|Svolgimento aggiunto.> La slide 398 chiede di estendere la partizione a tre categorie: negativi, zeri, positivi. Vogliamo due confini finali <math|x≤z> e la postcondizione

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<table|<row|<cell|<math-up|perm>(a,A)∧0≤x≤z≤n>>|<row|<cell|∧(∀i∈[0,x).<space|0.2em>a[i]‹0)>>|<row|<cell|∧(∀i∈[x,z).<space|0.2em>a[i]=0)>>|<row|<cell|∧(∀i∈[z,n).<space|0.2em>a[i]›0)>>>>>
  </equation*>

  Si usa un terzo confine <math|y>, con invariante

  <\equation*>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<table|<row|<cell|<math-up|Inv>≡<math-up|perm>(a,A)∧0≤x≤z≤y≤n>>|<row|<cell|∧(∀i∈[0,x).<space|0.2em>a[i]‹0)>>|<row|<cell|∧(∀i∈[x,z).<space|0.2em>a[i]=0)>>|<row|<cell|∧(∀i∈[y,n).<space|0.2em>a[i]›0)>>>>>
  </equation*>

  La parte sconosciuta è <math|[z,y)>; la guardia è <math|z≠y>, la funzione di terminazione <math|y-z>, l'inizializzazione <math|x=z=0>, <math|y=n>.

  @CODE
  x := 0;
  z := 0;
  y := n;
  while z != y do
      if a[z] < 0
          then temp := a[x];
               a[x] := a[z];
               a[z] := temp;
               x := x + 1;
               z := z + 1
          else if a[z] = 0
                   then z := z + 1
                   else y := y - 1;
                        temp := a[y];
                        a[y] := a[z];
                        a[z] := temp
               fi
      fi
  endw
  @END

  Se <math|a[z]‹0>, lo scambio porta il negativo all'inizio della zona degli zeri. Quando <math|x‹z>, il vecchio <math|a[x]> è zero e passa in posizione <math|z>; quando <math|x=z>, lo scambio non cambia nulla. Se <math|a[z]=0>, la zona degli zeri si allarga. Se <math|a[z]›0>, si restringe da destra la zona sconosciuta e si porta il positivo nella posizione appena aggiunta al suffisso; <math|z> resta fermo per riesaminare il valore arrivato da destra. Sotto <math|z‹y>, tutti gli indici sono validi, perché il nuovo <math|y> è il vecchio <math|y-1≥z>. Ogni ramo diminuisce <math|y-z> di <math|1>; all'uscita <math|z=y> e la postcondizione vale.

  <section|Una successione che dimezza l'indice>

  Consideriamo la successione

  <\equation*>
    f(0)=0,<space|1em>f(1)=1
  </equation*>

  Per <math|j≥2> pari si pone <math|f(j)=f(j/2)>; per <math|j≥2> dispari, <math|f(j)=f((j-1)/2)+f((j+1)/2)>. La specifica è <math|<hoare|n≥0|C|h=f(n)>>, con <math|n> non modificato. Far crescere un indice da <math|0> a <math|n>, come per Fibonacci, obbliga a conservare valori a indici dimezzati, e la preservazione dell'invariante diventa difficile. Conviene seguire la struttura della ricorsione e <em|far diminuire l'indice>.

  Ecco <math|f(19)>:

  @CHAIN
  <math|f(19)>
  <math|=> <math|f(9)+f(10)> ;; <math|19> dispari, <math|10> pari
  <math|=> <math|f(4)+2f(5)> ;; <math|f(10)=f(5)>, <math|f(9)=f(4)+f(5)>
  <math|=> <math|3f(2)+2f(3)> ;; <math|f(4)=f(2)>, <math|f(5)=f(2)+f(3)>
  <math|=> <math|5f(1)+2f(2)> ;; <math|f(3)=f(1)+f(2)>
  <math|=> <math|7> ;; <math|f(1)=f(2)=1>
  @END

  Ogni espressione intermedia è una combinazione di due termini consecutivi <math|f(x)> e <math|f(x+1)>. Suggerisce l'invariante

  <\equation*>
    <math-up|Inv>≡0≤x≤n∧f(n)=k<space|0.2em>f(x)+h<space|0.2em>f(x+1)
  </equation*>

  dove <math|k> è una variabile di lavoro, distinta dal parametro <math|k> di Fibonacci. L'inizializzazione <tt|x := n; k := 1; h := 0> lo stabilisce, perché <math|f(n)=1·f(n)+0·f(n+1)>. La guardia è <math|x≠0>. All'uscita <math|f(n)=k·f(0)+h·f(1)=h>, e il risultato è già in <math|h>.

  <strong|Aggiornamenti per parità.> Sia <math|q=x<space|0.2em><math-up|div><space|0.2em>2>.

  <\itemize>
    <item><em|Caso pari>, <math|x=2q≥2>. Allora <math|f(x)=f(q)> e <math|f(x+1)=f(q)+f(q+1)>, quindi <math|k f(x)+h f(x+1)=(k+h)f(q)+h f(q+1)>. Si esegue <tt|k := h + k> e poi <tt|x := x div 2>.

    <item><em|Caso dispari>, <math|x=2q+1> (svolgimento aggiunto). Allora <math|f(x)=f(q)+f(q+1)> e <math|f(x+1)=f(q+1)>, quindi <math|k f(x)+h f(x+1)=k f(q)+(k+h)f(q+1)>. Si esegue <tt|h := h + k> e poi <tt|x := x div 2>. L'identità vale anche per <math|x=1>, perché <math|q=0> e <math|f(1)=f(0)+f(1)>.
  </itemize>

  @CODE
  x := n;
  k := 1;
  h := 0;
  while x != 0 do
      if x mod 2 = 0
          then k := h + k
          else h := h + k
      fi;
      x := x div 2
  endw
  @END

  Per la terminazione si prende <math|<math-up|expt>=x>. Sotto l'invariante <math|x≥0>, e la guardia dà <math|x›0>, quindi <math|0≤x<space|0.2em><math-up|div><space|0.2em>2‹x>. Le divisioni e il modulo hanno divisore costante <math|2≠0>, quindi sono definiti. Per <math|n=0> il ciclo non gira e <math|h=0=f(0)>.

  Traccia con <math|n=19>, come <math|(x,k,h)>:

  @TABLE
  giro & <math|x> & <math|k> & <math|h> & caso
  inizio & <math|19> & <math|1> & <math|0> & —
  1 & <math|9> & <math|1> & <math|1> & dispari
  2 & <math|4> & <math|1> & <math|2> & dispari
  3 & <math|2> & <math|3> & <math|2> & pari
  4 & <math|1> & <math|5> & <math|2> & pari
  5 & <math|0> & <math|5> & <math|7> & dispari
  @END

  Il risultato è <math|h=7=f(19)>.

  <\officina|9. Tre modi per trovare l'invariante>
    Ogni tecnica di questo capitolo risponde a una domanda diversa.

    <\itemize>
      <item><em|Scomporre>: se la postcondizione è un'esistenza o una congiunzione, togli una parte e falla diventare la guardia negata (<math|r‹y>).

      <item><em|Costante in variabile>: se la postcondizione contiene un numero fisso, sostituiscilo con una variabile che va da <math|0> a quel numero, e rafforza con <math|0≤x≤n>.

      <item><em|Variabile ausiliaria>: se un aggiornamento ha bisogno di un valore che il linguaggio non sa esprimere, conservalo in una variabile in più; ricordati <tt|temp>.
    </itemize>

    Per gli array, dividi il dominio in zone e scrivi che cosa sai di ciascuna.
  </officina>

  <\verifica|9>
    <strong|a)> Nel programma di Fibonacci, perché serve <tt|temp>?

    <strong|b)> Nella bandiera a due colori, perché <math|x> non avanza nel ramo <math|a[x]≥0>?

    <strong|c)> Calcola <math|f(6)> con la definizione.
  </verifica>
