  <chapter|Stati, espressioni e comandi>

  <\inbreve>
    Lasciamo la logica pura e torniamo ai programmi, con un piccolo linguaggio imperativo di soli interi e booleani. Diamo un significato preciso a due cose: le <strong|espressioni>, che calcolano un valore leggendo lo stato, e i <strong|comandi>, che cambiano lo stato. E scriviamo le specifiche come coppie di formule.
  </inbreve>

  <section|Perché una semantica formale>

  Di un linguaggio di programmazione si descrivono la <strong|sintassi> (quali programmi sono scritti correttamente) e la <strong|semantica> (che cosa significano). La sintassi si descrive con le grammatiche; per la semantica, in molte applicazioni non basta che un programma \Ssembri funzionare\T: per centrali nucleari, apparecchiature mediche o carte di credito bisogna <em|dimostrarne> le proprietà. Tre approcci:

  @TABLE wide
  Approccio & Idea
  operazionale & si descrivono gli stati e le transizioni da uno stato all'altro
  denotazionale & a ogni costrutto si associa una funzione matematica
  assiomatico & si annota il programma con asserzioni e se ne dimostra la correttezza con regole di inferenza (Hoare 1969, Dijkstra 1976)
  @END

  Vedremo una semantica denotazionale in questo capitolo e quella assiomatica nei successivi. I valori sono <math|<math-up|Val>=ℤ∪<math-up|Bool>>.

  <section|Stati e specifiche>

  Uno <strong|stato> associa a ogni identificatore al più un valore: è una funzione parziale <math|σ:<math-up|Ide>→<math-up|Val>>, come <math|σ={x↦10,y↦0}>. È la stessa struttura dell'assegnamento <math|ρ> del capitolo 5, con gli identificatori al posto delle variabili.

  Una <strong|specifica> è una coppia di <strong|asserzioni> (formule con variabili libere): proprietà dello stato iniziale <math|⟶> proprietà dello stato finale. Lo stato fa la parte dell'assegnamento: <math|σ> <strong|soddisfa> <math|P>, <math|σ⊨P>, se <math|P> è vera quando le variabili prendono i valori di <math|σ> (con l'interpretazione usuale dei numeri). Per il massimo di due naturali:

  <\equation*>
    x≥0∧y≥0<space|1em>⟶<space|1em>z=x<space|0.2em>max<space|0.2em>y.
  </equation*>

  <\attenzione|Una specifica troppo debole>
    L'\Salgoritmo\T \Smetti <math|2>, <math|50>, <math|50> in <math|x>, <math|y>, <math|z>\T la rispetta: da <math|{x↦20,y↦3}> arriva a uno stato con <math|z=50=2<space|0.2em>max<space|0.2em>50>. Ma non è ciò che volevamo: il massimo doveva essere quello dei valori <em|iniziali>, e <math|x>, <math|y> non dovevano cambiare.
  </attenzione>

  Per parlare dei valori iniziali si usano <strong|variabili di specifica> (maiuscole), che a differenza delle variabili di programma nessun comando può modificare:

  <\equation*>
    x=X∧y=Y∧X≥0∧Y≥0<space|1em>⟶<space|1em>z=X<space|0.2em>max<space|0.2em>Y.
  </equation*>

  Ora da <math|{x↦20,y↦3}> si ha <math|X=20>, <math|Y=3> e serve <math|z=20>. Un algoritmo corretto: \Sse <math|x‹y> assegna a <math|z> il valore di <math|y>, altrimenti quello di <math|x>\T. Altri esempi:

  @TABLE wide
  Problema & Specifica
  raddoppiare un naturale & <math|x=A∧A›0⟶x=2·A>
  valore assoluto & <math|x=A⟶x=\|A\|>
  quoziente e resto & <math|x=X∧y=Y∧X≥0∧Y›0⟶X=q·Y+r∧0≤r‹Y>
  @END

  Spesso si abbrevia scrivendo \S<em|con <math|x>, <math|y> costanti>\T: il programma deve lasciare <math|x> e <math|y> come li ha trovati, e le variabili di specifica non servono. Per esempio <math|x≥0∧y›0⟶x=q·y+r∧0≤r‹y> con <math|x,y> costanti. A volte sono però inevitabili: in <math|x=A∧A›0⟶x=2·A> è proprio <math|x> a cambiare.

  <section|Espressioni>

  Le <strong|espressioni> sono costanti intere (<tt|0>, <tt|125>, <tt|-5>), costanti booleane (<tt|true>, <tt|false>, nomi riservati), identificatori, e le loro combinazioni con <tt|not>, con <math|+,-,*,<math-up|div>,mod> e con <math|=,≠,‹,›,≤,≥,<math-up|and>,<math-up|or>>. Valgono le precedenze usuali; le parentesi disambiguano: <tt|(8+5)*3> contro <tt|8+(5*3)>.

  <tt|(x + 5) and (x › y)> è scritta bene, ma non ha senso: <tt|and> vuole due booleani. Lo scopre il <strong|controllo dei tipi>, detto <strong|semantica statica> perché guarda solo la struttura, senza calcolare. D'ora in poi le espressioni sono sempre staticamente corrette.

  Il valore di un'espressione in uno stato è dato dalla funzione <math|ℰ:<math-up|Exp>×<math-up|State>→<math-up|Val>>, definita sulla struttura:

  <\equation*>
    ℰ(<tt|n>,σ)=<math-bf|n>,<space|1.5em>ℰ(x,σ)=σ(x),<space|1.5em>ℰ(<tt|not> E,σ)=¬ℰ(E,σ),<space|1.5em>ℰ(E<space|0.2em><math-up|op><space|0.2em>E<rprime|'>,σ)=ℰ(E,σ)<space|0.2em><math-bf|<math-up|op>><space|0.2em>ℰ(E<rprime|'>,σ).
  </equation*>

  Il grassetto indica l'oggetto matematico che interpreta il simbolo (la costante <tt|5> denota il numero <math|5>; <tt|and> denota <math|∧>). Anche per espressioni corrette, <math|ℰ> è una funzione <strong|parziale>: <math|ℰ(<tt|x div 0>,σ)=σ(x)<space|0.2em><math-bf|<math-up|div>><space|0.2em>0=⊥>, il valore indefinito.

  <section|Comandi>

  I <strong|comandi> modificano lo stato.

  @TABLE wide
  Comando & Sintassi
  vuoto & <tt|skip>
  assegnamento & <tt|x := E>
  sequenza & <tt|C ; C'>
  condizionale & <tt|if E then C else C' fi> (guardia <math|E>, ramo then, ramo else)
  iterativo & <tt|while E do C endw> (guardia <math|E>, corpo <math|C>)
  @END

  La semantica è la funzione parziale <math|𝒞:<math-up|Com>×<math-up|State>→<math-up|State>>. Scriviamo <math|σ[v/x]> per lo stato uguale a <math|σ> tranne che in <math|x>, dove vale <math|v>.

  <\itemize>
    <item><math|𝒞(<tt|skip>,σ)=σ>.

    <item><math|𝒞(<tt|x := E>,σ)=σ[ℰ(E,σ)/x]>: si calcola <math|E> nello stato <em|vecchio>, poi si cambia <math|x>.

    <item><math|𝒞(C<tt|;>C<rprime|'>,σ)=𝒞(C<rprime|'>,𝒞(C,σ))>: si esegue <math|C>, poi <math|C<rprime|'>> dallo stato raggiunto.

    <item>Il condizionale esegue <math|C> se <math|ℰ(E,σ)=<vero>>, <math|C<rprime|'>> se <math|ℰ(E,σ)=<falso>>.

    <item><math|𝒞(<tt|while E do C endw>,σ)> è <math|σ> se la guardia è falsa; altrimenti è <math|𝒞(<tt|while E do C endw>,𝒞(C,σ))>. La definizione è <em|ricorsiva>.
  </itemize>

  Per esempio, <tt|if x › 0 then skip else x := -x fi> lascia invariato <math|{x↦25}> e porta <math|{x↦-25}> in <math|{x↦25}>. E <tt|x := y; x := x + 1> porta <math|{x↦10,y↦0}> prima in <math|{x↦0,y↦0}>, poi in <math|{x↦1,y↦0}>.

  Il <tt|while> esegue il corpo più volte: <math|C<rsub|1>;C<rsub|2>;C<rsub|3>;…>, tutte copie di <math|C>. Se la sequenza è finita, si ferma al primo stato in cui la guardia è falsa (anche subito, con zero giri); se è infinita, la guardia resta vera per sempre e <math|𝒞=⊥>. Anche <tt|x := y div 0> dà <math|⊥>.

  <figura|@IMG(while-srotolato)|Il <tt|while> srotolato: si controlla la guardia, si esegue il corpo, si ricontrolla. Ci si ferma al primo stato <math|σ<rsub|n>> in cui la guardia è falsa.>

  <tt|while x ›= y do x := x - 1 endw> termina sempre: <math|x> scende di <math|1> e <math|y> resta ferma. <tt|while x ›= y do x := x + 1 endw> può non terminare: se all'inizio <math|x≥y>, la guardia resta vera per sempre.

  <section|Primi algoritmi>

  <strong|Valore assoluto.> <math|{<math-up|numero>↦A}⟶{<math-up|risultato>↦\|A\|}>:

  @CODE
  if numero > 0 then risultato := numero else risultato := -numero fi
  @END

  <strong|Scambio.> <math|{x↦A,y↦B}⟶{x↦B,y↦A}>. La prima idea, <tt|x := y; y := x>, è sbagliata: calcolando, <math|𝒞(<tt|x := y; y := x>,σ)=𝒞(<tt|y := x>,σ[B/x])={x↦B,y↦B}>. Il valore di <math|x> è perso. Serve un appoggio:

  @CODE
  temp := x; x := y; y := temp
  @END

  <figura|@IMG(scambio)|Perché serve <tt|temp>. L'assegnamento è <em|distruttivo> (il vecchio valore viene sovrascritto) e i comandi sono eseguiti in sequenza: chi viene sovrascritto per primo deve essere messo da parte.>

  <strong|Ordinare due numeri.> <math|{<math-up|n1>↦A,<math-up|n2>↦B}⟶{<math-up|n1>↦max(A,B),<math-up|n2>↦min(A,B)}>:

  @CODE
  if n1 < n2 then temp := n1; n1 := n2; n2 := temp else skip fi
  @END

  <\guidato|Elevamento a potenza>
    Specifica: <math|{<math-up|base>↦A,<math-up|esp>↦B}> con <math|A›0>, <math|B≥0> <math|⟶> <math|{<math-up|ris>↦A<rsup|B>}>, seguendo <math|A<rsup|0>=1> e <math|A<rsup|B>=A·A⋯A> (<math|B> volte). Esegui il programma con <math|A=2>, <math|B=3>.

    @CODE
    ris := 1;
    while esp > 0 do
        ris := ris * base;
        esp := esp - 1
    endw
    @END

    <em|Idea.> Una riga per ogni controllo della guardia; a destra di <tt|:=> si usano i valori vecchi.

    <em|Conto.>

    @TABLE
    giro & <tt|ris> & <tt|esp> & guardia <tt|esp › 0>
    inizio & <math|1> & <math|3> & <vero>
    1 & <math|2> & <math|2> & <vero>
    2 & <math|4> & <math|1> & <vero>
    3 & <math|8> & <math|0> & <falso>
    @END

    <em|Controllo.> <math|<math-up|ris>=8=2<rsup|3>>. Con <math|B=0> il corpo non si esegue mai e <math|<math-up|ris>=1=A<rsup|0>>: anche il caso limite è giusto.
  </guidato>

  <\officina|6. Tracciare uno stato>
    Per capire che cosa fa un programma, eseguilo a mano su un esempio piccolo.

    <\itemize>
      <item>Una colonna per ogni variabile, una riga dopo ogni comando (o dopo ogni giro).

      <item>In <tt|x := E> calcola <math|E> con i valori della riga precedente, <em|poi> scrivi il nuovo <math|x>.

      <item>Per ogni <tt|while> annota il valore della guardia a ogni controllo: l'ultimo è <falso>.

      <item>Prova anche i casi limite (zero giri, valori uguali, zero).
    </itemize>

    Una traccia non dimostra nulla \Sper ogni stato\T, ma trova molti errori e suggerisce che cosa resta vero a ogni giro: l'invariante del capitolo 8.
  </officina>

  <\verifica|6>
    <strong|a)> In che stato porta <tt|x := x + y; y := x - y; x := x - y> lo stato <math|{x↦3,y↦7}>?

    <strong|b)> Perché <math|x≥0⟶x=2·x> non va bene come specifica del raddoppio?

    <strong|c)> <tt|while x ≠ 0 do x := x - 2 endw> termina partendo da <math|x=5>?
  </verifica>

