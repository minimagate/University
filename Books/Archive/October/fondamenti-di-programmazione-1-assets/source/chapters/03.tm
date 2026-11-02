  <chapter|Dimostrare con le leggi>

  <\inbreve>
    Le tavole di verità funzionano, ma con <math|n> simboli hanno <math|2<rsup|n>> righe, e nella logica del primo ordine i casi diventano infiniti. Impariamo allora a <strong|dimostrare>: trasformare una formula passo dopo passo con leggi già note, giustificando ogni passo. È esattamente il lavoro che faremo poi sui programmi.
  </inbreve>

  <section|Dimostrare invece di provare tutto>

  Una <strong|regola di inferenza> permette di derivare un asserto da altri. Due esempi: dal <em|modus ponens>, da <math|Q⇒R> e <math|Q> si deduce <math|R>; dall'<em|istanziazione>, da \Sper ogni <math|x> vale <math|P(x)>\T si deduce <math|P(a)>. Così si dimostra che Socrate è mortale: istanziando \Sper ogni <math|x>, se <math|x> è un uomo allora è mortale\T su Socrate, e applicando il modus ponens con \SSocrate è un uomo\T. Lo stesso schema dimostra che <math|8> non è primo: cambia il significato dei simboli, non la forma.

  Una dimostrazione è quindi <em|sintattica>: manipola simboli con regole meccaniche, come un algoritmo. La conseguenza logica è invece <em|semantica>: parla di verità nelle interpretazioni. Le due cose si incontrano se le regole sono

  <\itemize>
    <item><strong|corrette>: tutto ciò che si dimostra è conseguenza logica (non si deriva mai il falso da premesse vere);

    <item><strong|complete>: ogni conseguenza logica si può dimostrare.
  </itemize>

  Un esempio familiare dall'algebra: ogni passo cita la legge usata.

  @CHAIN
  (a+b)(a-b)
  = a(a-b)+b(a-b) ;; distributività
  = a<rsup|2>-ab+ba-b<rsup|2> ;; distributività, associatività
  = a<rsup|2>-b<rsup|2> ;; commutatività, opposto, elemento neutro
  @END

  Ogni passo usa anche il <strong|principio di sostituzione>: se <math|A=B>, sostituire <math|A> con <math|B> dentro un'espressione <math|C> non ne cambia il valore. Nel calcolo proposizionale vale l'analogo per l'equivalenza:

  <\equation*>
    <frac|P≡Q|R≡R[Q/P]>
  </equation*>

  dove <math|R[Q/P]> è <math|R> con un'occorrenza di <math|P> sostituita da <math|Q>. Una <strong|legge> è una tautologia che usiamo come giustificazione.

  <section|Le leggi>

  Ogni legge si verifica con una tavola di verità (basta usare simboli <math|p,q,r>: la tavola vale per ogni formula al loro posto) o con leggi già dimostrate. Non vanno imparate a memoria: servono a riconoscere i passi.

  @TABLE wide
  Nome & Legge
  Equivalenza & <math|P≡P>, <space|0.3em><math|(P≡Q)≡(Q≡P)>, <space|0.3em><math|(P≡T)≡P> (unità), associatività, transitività
  Comm., ass., idem. & <math|P∨Q≡Q∨P>, <space|0.3em><math|P∨(Q∨R)≡(P∨Q)∨R>, <space|0.3em><math|P∨P≡P> (e lo stesso per <math|∧>)
  Unità e zero & <math|P∧T≡P>, <space|0.3em><math|P∨F≡P>, <space|0.3em><math|P∧F≡F>, <space|0.3em><math|P∨T≡T>
  Distributività & <math|P∧(Q∨R)≡(P∧Q)∨(P∧R)>, <space|0.3em><math|P∨(Q∧R)≡(P∨Q)∧(P∨R)>
  Negazione & <math|¬¬P≡P>, <space|0.3em><math|P∨¬P≡T> (terzo escluso), <space|0.3em><math|P∧¬P≡F>, <space|0.3em><math|¬T≡F>
  De Morgan & <math|¬(P∧Q)≡¬P∨¬Q>, <space|0.3em><math|¬(P∨Q)≡¬P∧¬Q>
  Eliminazione di <math|⇒> & <math|P⇒Q≡¬P∨Q>, <space|0.3em><math|P⇒Q≡¬(P∧¬Q)>, <space|0.3em><math|¬(P⇒Q)≡P∧¬Q>
  Eliminazione di <math|≡> & <math|(P≡Q)≡(P⇒Q)∧(Q⇒P)>, <space|0.3em><math|(P≡Q)≡(P∧Q)∨(¬P∧¬Q)>
  Complemento & <math|P∨(¬P∧Q)≡P∨Q>, <space|0.3em><math|P∧(¬P∨Q)≡P∧Q>
  Assorbimento & <math|P∧(P∨Q)≡P>, <space|0.3em><math|P∨(P∧Q)≡P>
  Implicative & <math|(P⇒Q)∧P⇒Q> (modus ponens), <space|0.3em><math|(P⇒Q)∧(Q⇒R)⇒(P⇒R)>, <space|0.3em><math|P∧Q⇒P>, <space|0.3em><math|P⇒P∨Q>
  Scambio & <math|(P∧Q⇒R)≡(P∧¬R⇒¬Q)>
  @END

  <section|Catene di equivalenze>

  Per dimostrare <math|P<rsub|1>≡P<rsub|n>> si scrive una catena <math|P<rsub|1>≡P<rsub|2>≡⋯≡P<rsub|n>>, con ogni passo giustificato tra graffe. Ecco la legge di complemento:

  @CHAIN
  P∨(¬P∧Q)
  ≡ (P∨¬P)∧(P∨Q) ;; distributività
  ≡ T∧(P∨Q) ;; terzo escluso
  ≡ P∨Q ;; unità
  @END

  e l'assorbimento, con un trucco: aggiungere un <math|F> che non cambia nulla.

  @CHAIN
  P∧(P∨Q)
  ≡ (P∨F)∧(P∨Q) ;; unità
  ≡ P∨(F∧Q) ;; distributività
  ≡ P∨F ;; zero
  ≡ P ;; unità
  @END

  La tecnica non sceglie per noi la legge o il lato da cui partire. Tre strategie aiutano: trasformare <math|P> fino a <math|Q>; ridurre <math|P> e <math|Q> a una stessa formula <math|R>; se si vuole una tautologia, ridurla a <math|T>. Passi ovvi di associatività, commutatività e idempotenza si possono omettere.

  <\attenzione|Si manipolano simboli, non valori>
    Nella legge di unità compare la <em|costante> <math|F>, non un simbolo qualsiasi <math|f>. E quando si elimina <math|⇒> si rispetta la struttura: <math|P⇒(Q∧R)≡¬P∨(Q∧R)>, non <math|(¬P∨Q)∧R>.
  </attenzione>

  <\guidato|Il modus ponens è una tautologia>
    Dimostra <math|((P⇒Q)∧P)⇒Q≡T>.

    <em|Idea.> Togliere le implicazioni, poi semplificare finché resta un terzo escluso.

    <em|Conto.>

    @CHAIN
    ((P⇒Q)∧P)⇒Q
    ≡ ¬(P∧(¬P∨Q))∨Q ;; elim. <math|⇒> due volte, commutatività
    ≡ ¬(P∧Q)∨Q ;; complemento
    ≡ ¬P∨¬Q∨Q ;; De Morgan
    ≡ ¬P∨T ;; terzo escluso
    ≡ T ;; zero
    @END

    <em|Controllo.> Cercando un controesempio (<math|Q=<falso>>, premessa vera) si è costretti a <math|P=<vero>>, ma allora <math|P⇒Q> è falsa: nessun controesempio, come previsto.
  </guidato>

  <section|Implicazioni e polarità>

  Nella verifica dei programmi servono soprattutto implicazioni. Si possono costruire catene miste, con passi <math|≡> e passi <math|⇒> giustificati da leggi implicative. Per esempio il <em|tollendo tollens>:

  @CHAIN
  (P⇒Q)∧¬Q
  ≡ (¬P∨Q)∧¬Q ;; elim. <math|⇒>
  ≡ ¬P∧¬Q ;; complemento
  ⇒ ¬P ;; semplificazione
  @END

  Qui serve cautela. Da <math|P⇒Q> <em|non> segue in generale <math|R⇒R[Q/P]>. La legge <math|P∧Q⇒P> non permette di passare da <math|<math-up|studia>∧<math-up|frequenta>⇒<math-up|supera>> a <math|<math-up|studia>⇒<math-up|supera>>: studiare da solo non basta. È come con le disuguaglianze: sotto un segno meno il verso si inverte. In logica fanno da \Ssegno meno\T la negazione e l'antecedente di un'implicazione.

  Un'occorrenza è <strong|positiva> o <strong|negativa> secondo quanti passaggi negativi la separano dalla radice della formula: pari positiva, dispari negativa. Prima si elimina ogni <math|≡>: l’equivalenza non è monotona nei suoi argomenti. I passaggi negativi sono l'argomento di <math|¬> e il lato sinistro di <math|⇒>; tutto il resto (<math|∧>, <math|∨>, lato destro di <math|⇒>) non cambia segno.

  <figura|@IMG(polarita)|Due formule come alberi; i rami segnati <math|-> invertono il segno. In <math|P⇒(¬R⇒Q)> l'occorrenza di <math|P> è negativa, <math|R> e <math|Q> positive. In <math|(P⇒¬R)⇒Q> sono tutte positive: <math|P> e <math|R> attraversano due rami negativi.>

  Le equivalenze lo confermano: <math|P⇒(¬R⇒Q)≡¬P∨R∨Q> e <math|(P⇒¬R)⇒Q≡(P∧R)∨Q>. Il <strong|principio di sostituzione per l'implicazione> dice: se vale <math|P⇒Q>, allora <math|R⇒R[Q/P]> quando l'occorrenza sostituita è positiva, e <math|R[Q/P]⇒R> quando è negativa.

  Due esempi. Da <math|Q∧R⇒Q>, poiché <math|Q∧R> è positiva nel conseguente, <math|(P⇒Q∧R)⇒(P⇒Q)>. Da <math|P⇒P∨Q>, poiché <math|P> è negativa nell'antecedente di <math|P⇒R>, il verso si inverte: <math|(P∨Q⇒R)⇒(P⇒R)>.

  <section|Le tecniche di dimostrazione sono tautologie>

  Molte tecniche che si usano in matematica sono leggi del calcolo proposizionale.

  <\itemize>
    <item><strong|Per assurdo>: <math|P≡(¬P⇒F)>, e per un'implicazione <math|(Q⇒R)≡(Q∧¬R⇒F)>: si assumono l'ipotesi e la negazione della tesi e si arriva a una contraddizione.

    <item><strong|Per controposizione>: <math|(P⇒Q)≡(¬Q⇒¬P)>.

    <item><strong|Per casi>: <math|(P⇒Q)∧(¬P⇒Q)≡Q>; si sceglie un <math|P> comodo e si dimostra <math|Q> in entrambi i casi.

    <item><strong|Assumere la premessa>: per dimostrare <math|P⇒Q> si può supporre <math|P> e arrivare a <math|Q>, citando <math|P> tra le giustificazioni. Per esempio, sotto l'ipotesi <math|P>, <math|P∧Q≡T∧Q≡Q>; quindi <math|P⇒(P∧Q≡Q)>.
  </itemize>

  Per esempio, <math|(P∨Q⇒R)⇒(P⇒R)> per assurdo: si nega tutto e si arriva a <math|F>.

  @CHAIN
  ¬((P∨Q⇒R)⇒(P⇒R))
  ≡ (¬(P∨Q)∨R)∧P∧¬R ;; elim. <math|⇒>, negazione di <math|⇒>
  ⇒ ¬(P∨Q)∧P ;; complemento su <math|R>, semplificazione
  ≡ ¬P∧¬Q∧P ;; De Morgan
  ≡ F ;; contraddizione
  @END

  In generale, un passo <math|P<space|0.3em><math-up|conn><space|0.3em>Q> giustificato da <math|G> è corretto se <math|G⇒(P<space|0.3em><math-up|conn><space|0.3em>Q)> è una tautologia. Se tutte le giustificazioni sono leggi, la catena dimostra la sua conclusione; se alcune sono ipotesi <math|H>, dimostra <math|H⇒> conclusione.

  <\guidato|Combinare ipotesi: congiunzione e disgiunzione>
    <em|Idea.> Da <math|P⇒Q> e <math|R⇒S> possiamo trasportare ciascuna componente, sia in una congiunzione sia in una disgiunzione.

    <em|Conto.> Sotto le due ipotesi, <math|P∧R⇒Q∧R⇒Q∧S> e <math|P∨R⇒Q∨R⇒Q∨S>. Le occorrenze sostituite sono positive. Quindi <math|(P⇒Q)∧(R⇒S)⇒(P∧R⇒Q∧S)>; aggiungendo <math|P∨R> alle premesse si ottiene il sillogismo disgiuntivo, <math|Q∨S>.

    Un altro esercizio usa <math|H≡(P⇒(Q≡R))>. Sotto <math|H>, da <math|P∧R> si ottiene <math|(Q≡R)∧R>, quindi <math|Q>, perché l’equivalenza contiene <math|R⇒Q>. Abbiamo dimostrato <math|H⇒(P∧R⇒Q)>.

    <em|Controllo.> Le conclusioni dipendono dalle ipotesi: nel testo della dimostrazione bisogna dichiararle. Per spostarle a sinistra usiamo <math|P⇒(Q⇒R)≡(P∧Q⇒R)>.
  </guidato>

  <section|Forme normali e risoluzione>

  Una <strong|forma normale congiuntiva> (FNC) è un \Se di o\T, come <math|(p∨¬q)∧(q∨r)>; una <strong|forma normale disgiuntiva> (FND) è un \So di e\T. Ogni formula si porta in queste forme (eliminando <math|⇒> e <math|≡>, spingendo le negazioni con De Morgan, distribuendo), anche se la formula può crescere molto. Servono per confrontare formule: <math|¬((P⇒Q)∧(R⇒P))> e <math|¬(¬Q⇒¬P)∨¬(R⇒P)> diventano entrambe <math|(P∧¬Q)∨(R∧¬P)>, quindi sono equivalenti.

  La <strong|risoluzione> elimina un simbolo presente positivo in una clausola e negato in un'altra:

  <\equation*>
    (P∨Q)∧(¬P∨R)⇒Q∨R.
  </equation*>

  Deriva dalla transitività, perché <math|(P∨Q)∧(¬P∨R)≡(¬Q⇒P)∧(P⇒R)>. Applicata due volte dimostra <math|(P∨Q)∧(¬P∨R)∧(¬Q∨R)⇒R>: si ottiene <math|(Q∨R)∧(¬Q∨R)>, poi <math|R∧R≡R>. È il motore della programmazione logica.

  Infine, non servono tutti i connettivi: <math|{∧,¬}> è <strong|funzionalmente completo>, perché <math|P∨Q≡¬(¬P∧¬Q)> e <math|P⇒Q≡¬(P∧¬Q)>. Lo sono anche <math|{∨,¬}>, <math|{⇒,¬}> e perfino il solo <strong|NAND>, <math|P↑Q≡¬(P∧Q)>. Teniamo comunque <math|⇒> e <math|≡> perché rendono leggibili le dimostrazioni.

  <new-page*>

  <\officina|3. Scrivere una catena>
    Una dimostrazione è una catena di passi, uno per riga, ciascuno con la sua giustificazione tra graffe.

    <\itemize>
      <item>Parti dal lato più complicato: è più facile semplificare che complicare.

      <item>Per una tautologia, riducila a <math|T>. Per un'implicazione <math|P⇒Q>, puoi assumere <math|P> e trasformare fino a <math|Q>.

      <item>Ogni passo <math|⇒> dentro una formula più grande: controlla la polarità dell'occorrenza che sostituisci.

      <item>Se ti blocchi: elimina <math|⇒> e <math|≡>, spingi le negazioni verso l'interno, cerca un complemento o un terzo escluso.
    </itemize>

    Le stesse catene, con le stesse graffe, torneranno nei capitoli 7–9 per dimostrare che un programma è corretto.
  </officina>

  <\verifica|3>
    <strong|a)> In <math|¬(P⇒Q)∧R>, le occorrenze di <math|P>, <math|Q>, <math|R> sono positive o negative?

    <strong|b)> Dimostra <math|P∧(¬P∨Q)≡P∧Q> con una catena.

    <strong|c)> Esprimi <math|¬P> usando solo il NAND.
  </verifica>

