  <chapter|Proposizioni: forma e significato>

  <\inbreve>
    Per ragionare sui programmi servono frasi senza ambiguità. Il <strong|calcolo proposizionale> è il linguaggio logico più semplice: costruisce frasi composte con i connettivi e stabilisce quando sono vere. La domanda del capitolo: quando una conclusione <em|segue davvero> dalle premesse?
  </inbreve>

  <section|Ragionamenti validi>

  \STutti gli uomini sono mortali; Socrate è un uomo; quindi Socrate è mortale.\T Il ragionamento è <strong|valido>: <em|se> le premesse sono vere, la conclusione non può essere falsa. Si dice che la conclusione è <strong|conseguenza logica> delle premesse. Non serve sapere se le premesse siano vere nel mondo: conta la forma.

  \STutti gli uomini sono mortali; Socrate è mortale; quindi Socrate è un uomo.\T Questo <em|non> è valido: Socrate potrebbe essere un cane, mortale anche lui. Le premesse vere non bastano; la conclusione deve <em|seguire>.

  La logica nasce per formalizzare il ragionamento (Aristotele, poi la logica moderna di fine Ottocento). In informatica serve a scrivere requisiti, studiare e verificare programmi, rappresentare conoscenza; in Prolog si programma scrivendo premesse e regole. Nel corso la useremo per la <strong|logica di Hoare> (capitoli 7–9).

  Una <strong|proposizione> è una frase dichiarativa che è vera o falsa: \SRoma è la capitale d'Italia\T, \SLa Francia è in Asia\T (falsa, ma è una proposizione), <math|1+1=2>. Non sono proposizioni una domanda, un comando, o <math|x+1=2> finché <math|x> non è fissato. Lavoriamo nella <strong|logica classica>: ogni proposizione è vera o falsa (<em|terzo escluso>) e mai entrambe (<em|non contraddizione>).

  Una proposizione è <strong|atomica> se non la scomponiamo; le altre si costruiscono con i <strong|connettivi>, come le espressioni con le operazioni.

  <section|I connettivi>

  Indichiamo con <math|<math-up|Bool>={<vero>,<falso>}> i valori di verità. Il significato dei connettivi è dato dalla loro tabella.

  @TABLE
  <math|P> & <math|Q> & <math|¬P> & <math|P∧Q> & <math|P∨Q> & <math|P⇒Q> & <math|P≡Q>
  <vero> & <vero> & <falso> & <vero> & <vero> & <vero> & <vero>
  <vero> & <falso> & <falso> & <falso> & <vero> & <falso> & <falso>
  <falso> & <vero> & <vero> & <falso> & <vero> & <vero> & <falso>
  <falso> & <falso> & <vero> & <falso> & <falso> & <vero> & <vero>
  @END

  <math|¬P> (non <math|P>) inverte il valore. <math|P∧Q> (<math|P> e <math|Q>) è vera solo se entrambe lo sono. <math|P∨Q> (<math|P> o <math|Q>) è vera se almeno una lo è: è la disgiunzione <em|inclusiva>; quella esclusiva (\Scarne o pesce, non entrambi\T) non la useremo come connettivo. <math|P≡Q> (<math|P> se e solo se <math|Q>) è vera quando i due valori coincidono.

  <\immagine|L'implicazione è una promessa>
    \SSe piove, porto l'ombrello.\T L'unico modo di <em|rompere> la promessa è che piova e io non abbia l'ombrello. Se non piove, la promessa è mantenuta qualunque cosa io faccia. Per questo <math|P⇒Q> è falsa solo nella riga <math|P=<vero>>, <math|Q=<falso>>, e <math|(P⇒Q)≡¬(P∧¬Q)>.
  </immagine>

  <section|Sintassi: quali stringhe sono formule>

  Fissato un alfabeto <math|𝒫={p,q,r,…}> di simboli proposizionali, le <strong|formule> sono tutte e sole quelle costruite così: <math|T> e <math|F> sono formule (la formula sempre vera e quella sempre falsa: non sono simboli dell'alfabeto); ogni <math|p∈𝒫> è una formula; se <math|P> e <math|Q> sono formule, lo sono <math|¬P>, <math|(P∧Q)>, <math|(P∨Q)>, <math|(P⇒Q)>, <math|(P≡Q)>. In informatica si scrive spesso come <strong|grammatica libera dal contesto>:

  @CODE
  Prop ::= (Prop ≡ Prop) | (Prop ∧ Prop) | (Prop ∨ Prop)
         | (Prop ⇒ Prop) | ¬Prop | T | F | p | q | ...
  @END

  Stringhe come <math|p∧∨> o <math|()> non sono formule. Le parentesi contano: <math|(P⇒¬P)⇒Q> e <math|P⇒(¬P⇒Q)> sono formule diverse, e con <math|P=Q=<falso>> la prima è falsa, la seconda vera.

  Per toglierne qualcuna si eliminano le parentesi esterne e si usano le <strong|precedenze>, dalla più debole alla più forte: <math|≡> (0), <math|⇒> (1), <math|∧> e <math|∨> (2), <math|¬> (3). Così <math|P∧Q⇒R≡R∨P⇒S> si legge <math|((P∧Q)⇒R)≡((R∨P)⇒S)>, e <math|P⇒Q≡¬P∨Q> si legge <math|(P⇒Q)≡(¬P∨Q)>.

  <\attenzione|Fra <math|∧> e <math|∨> non c'è precedenza>
    <math|P∧Q∨R> è <em|sbagliata>: <math|(P∧Q)∨R> e <math|P∧(Q∨R)> non sono equivalenti (con <math|P=<falso>>, <math|R=<vero>> la prima è vera e la seconda falsa). Anche <math|P⇒Q⇒R> è sbagliata se non si dice come associare. <math|P∧Q∧R> è invece accettata, perché <math|∧> è associativo.
  </attenzione>

  <section|Tradurre le frasi>

  Con <math|p>: piove, <math|n>: ci sono nuvole, <math|v>: c'è vento, <math|r>: fa freddo, <math|c>: ci si copre, <math|<math-up|ne>>: nevica.

  @TABLE wide
  Frase & Formula
  Fa freddo, ma non piove & <math|r∧¬p>
  Se ci sono nuvole e non c'è vento, allora piove & <math|(n∧¬v)⇒p>
  Nevica, ma non fa freddo se ci si copre & <math|<math-up|ne>∧(c⇒¬r)>
  Se ci si copre, allora fa freddo o nevica & <math|c⇒(r∨<math-up|ne>)>
  Piove solo se ci sono nuvole e non c'è vento & <math|p⇒(n∧¬v)>
  @END

  \SMa\T si traduce con <math|∧>. E soprattutto: \S<math|P> <em|solo se> <math|Q>\T è <math|P⇒Q>, perché <math|Q> è una <strong|condizione necessaria> per <math|P>. Anche \Scondizione necessaria perché Antonio vada al cinema è che ci vada Bruno\T diventa <math|a⇒b>.

  <section|Interpretazioni e valore di una formula>

  Il valore di una formula dipende dai valori dei simboli, come il valore di <math|x+y> dipende da <math|x> e <math|y>. Un'<strong|interpretazione> è una funzione <math|I:𝒫→<math-up|Bool>>, per esempio <math|I={p↦<vero>,q↦<falso>,r↦<falso>}>. Il valore <math|⟦φ⟧<rsub|I>> si calcola <em|ricorsivamente>: <math|⟦T⟧<rsub|I>=<vero>>, <math|⟦F⟧<rsub|I>=<falso>>, <math|⟦p⟧<rsub|I>=I(p)>, e per ogni connettivo si applica la sua tabella ai valori delle parti, per esempio <math|⟦P∧Q⟧<rsub|I>=⟦P⟧<rsub|I>∧⟦Q⟧<rsub|I>>. A destra il simbolo indica la funzione booleana: lo stesso segno serve per la sintassi e per il significato.

  <figura|@IMG(albero-formula)|La formula <math|(p∧q)∨¬r> come albero. Con <math|I={p↦<vero>,q↦<falso>,r↦<falso>}> si valuta dal basso: <math|p∧q=<falso>>, <math|¬r=<vero>>, quindi la radice (il <em|connettivo principale>) vale <vero>.>

  Una <strong|tavola di verità> elenca il valore di una formula in tutte le interpretazioni dei suoi simboli: con <math|n> simboli sono <math|2<rsup|n>> righe.

  @TABLE
  <math|p> & <math|q> & <math|r> & <math|p∧q> & <math|¬r> & <math|(p∧q)∨¬r>
  <vero> & <vero> & <vero> & <vero> & <falso> & <vero>
  <vero> & <vero> & <falso> & <vero> & <vero> & <vero>
  <vero> & <falso> & <vero> & <falso> & <falso> & <falso>
  <vero> & <falso> & <falso> & <falso> & <vero> & <vero>
  <falso> & <vero> & <vero> & <falso> & <falso> & <falso>
  <falso> & <vero> & <falso> & <falso> & <vero> & <vero>
  <falso> & <falso> & <vero> & <falso> & <falso> & <falso>
  <falso> & <falso> & <falso> & <falso> & <vero> & <vero>
  @END

  <section|Tautologie e conseguenza logica>

  Un'interpretazione <math|I> è un <strong|modello> di <math|φ>, e si scrive <math|I⊨φ>, se <math|⟦φ⟧<rsub|I>=<vero>>; è modello di un insieme <math|Γ> se lo è di ogni sua formula. Una formula è

  <\itemize>
    <item><strong|soddisfacibile> se ha almeno un modello;

    <item>una <strong|tautologia> (<math|⊨φ>) se ogni interpretazione è un modello: per esempio <math|p∨¬p>;

    <item>una <strong|contraddizione> (insoddisfacibile) se non ha modelli: per esempio <math|p∧¬p>.
  </itemize>

  <math|φ> è una tautologia se e solo se <math|¬φ> è una contraddizione. Infine <math|φ> è <strong|conseguenza logica> di <math|Γ>, <math|Γ⊨φ>, se ogni modello di <math|Γ> è anche modello di <math|φ>. Con premesse finite basta controllare che <math|(φ<rsub|1>∧⋯∧φ<rsub|n>)⇒φ> sia una tautologia.

  <figura|@IMG(conseguenza)|A sinistra <math|Γ⊨φ>: i modelli delle premesse stanno tutti dentro i modelli della conclusione. A destra no: un'interpretazione rende vere le premesse e falsa la conclusione, ed è un <em|controesempio>.>

  <\guidato|Gli amici al cinema>
    Se Corrado va al cinema ci va anche Antonio (<math|c⇒a>); condizione necessaria perché Antonio vada è che vada Bruno (<math|a⇒b>). Quali conclusioni seguono? (1) <math|c⇒b>; (2) <math|¬a∧¬b∧¬c>; (3) <math|b⇒c>; (4) <math|¬c⇒¬b>.

    <em|Idea.> Per escludere una conclusione basta <em|un> controesempio: un'interpretazione che renda vere le due premesse e falsa la conclusione. Per accettarla serve che non esista.

    <em|Conto.> (1) Se <math|c=<vero>>, dalla prima premessa <math|a=<vero>>, dalla seconda <math|b=<vero>>: la conclusione non può essere falsa. Segue (è la <em|transitività>).

    (2) Tutti al cinema (<math|a=b=c=<vero>>) rende vere le premesse e falsa la conclusione. Non segue.

    (3) <math|b=<vero>>, <math|c=<falso>> (e <math|a> qualsiasi): <math|c⇒a> è vera perché <math|c> è falsa, <math|a⇒b> è vera perché <math|b> è vera, ma <math|b⇒c> è falsa. Non segue.

    (4) <math|¬c⇒¬b> ha la stessa tabella di <math|b⇒c>: lo stesso controesempio la esclude.

    <em|Controllo.> Solo la (1) segue. Nella (4) si riconosce la <em|controposizione> di (3), che vedremo nel capitolo 3.
  </guidato>

  Lo stesso metodo vale per le frasi di tutti i giorni. \SSe piove non esco; ieri sono uscito; quindi non pioveva\T è <math|((P⇒¬E)∧E)⇒¬P>: una tautologia, ragionamento corretto. \SSe piove non esco; ieri non pioveva; quindi sono uscito\T è <math|((P⇒¬E)∧¬P)⇒E>: con <math|P=E=<falso>> le premesse sono vere e la conclusione falsa. Non è corretto.

  <new-page*>

  <\officina|2. Basta un caso o servono tutti?>
    Prima di metterti a calcolare, chiediti se la frase è un \Sesiste\T o un \Sper ogni\T nascosto.

    <\itemize>
      <item><em|Soddisfacibile?> È un \Sesiste\T: basta trovare un'interpretazione che la renda vera.

      <item><em|Non è una tautologia? Non è conseguenza logica?> Basta un controesempio. Conviene partire dalla fine: rendi falsa la conclusione e prova a rendere vere tutte le premesse.

      <item><em|È una tautologia? È conseguenza logica?> È un \Sper ogni\T: serve tutta la tavola (<math|2<rsup|n>> righe) o una dimostrazione (capitolo 3).
    </itemize>

    Se la ricerca del controesempio fallisce per forza (come per <math|((a⇒b)∧a)⇒b>: con <math|a=<vero>>, <math|b=<falso>> la premessa <math|a⇒b> diventa falsa), quel fallimento è già un indizio che la formula è una tautologia.
  </officina>

  <\verifica|2>
    <strong|a)> Traduci \Sesco solo se non piove\T.

    <strong|b)> <math|p⇒q> è soddisfacibile? È una tautologia?

    <strong|c)> Trova un controesempio per <math|((a⇒b)∧¬a)⇒¬b>.
  </verifica>

