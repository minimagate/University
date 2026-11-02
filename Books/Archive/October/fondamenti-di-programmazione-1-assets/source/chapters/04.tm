  <chapter|Il linguaggio del primo ordine>

  <\inbreve>
    Nel calcolo proposizionale \SAlberto va al cinema\T è un atomo chiuso: non vediamo né Alberto né il cinema. La <strong|logica del primo ordine> (LPO) apre gli atomi: parla di individui, delle loro proprietà e relazioni, e dice \Sper ogni\T e \Sesiste\T. In questo capitolo impariamo a scrivere e a leggere le sue formule.
  </inbreve>

  <section|Perché il calcolo proposizionale non basta>

  \SAlberto va al cinema con Bruno o va al teatro con Carlo\T diventa <math|(<math-up|AC>∧<math-up|BC>)∨(<math-up|AT>∧<math-up|CT>)>: le persone e la relazione \Sandare a\T spariscono. E non si possono scrivere in modo compatto frasi su insiemi infiniti (\Stutti i pari maggiori di <math|2> non sono primi\T), proprietà che dipendono da una variabile (\Sse <math|x> è pari, <math|x+1> è dispari\T) o su molti individui (\Stutti gli studenti di FPL vanno al cinema\T). Nella LPO:

  <\equation*>
    ∀x.(<math-up|pari>(x)∧x›2⇒¬<math-up|primo>(x)),<space|2em>∀x.(<math-up|pari>(x)⇒<math-up|dispari>(x+1)).
  </equation*>

  Una proprietà generale permette di ricavare i casi particolari: dalla seconda segue <math|<math-up|pari>(4)⇒<math-up|dispari>(5)>. Le formule vere in ogni interpretazione si dicono <strong|valide>, come le tautologie; ma ora non esistono tavole finite che decidano la validità: servono dimostrazioni, e non sempre se ne trova una.

  <section|Termini e formule>

  L'alfabeto ha quattro tipi di simboli, più connettivi, quantificatori <math|∀>, <math|∃> e punteggiatura.

  @TABLE wide
  Simboli & Che cosa indicano
  costanti <math|a,b,c,2,<math-up|FPL>> & individui precisi del dominio
  variabili <math|x,y,z> & individui generici
  funzioni <math|f,g,+,*,<math-up|succ>> & operatori che da individui danno un individuo; ognuno ha la sua <em|arietà> (numero di argomenti)
  predicati <math|p,q,=,‹,<math-up|pari>> & proprietà o relazioni; arietà <math|0> per le lettere proposizionali (\Spiove\T)
  @END

  I <strong|termini> denotano individui e si definiscono per induzione: ogni costante e ogni variabile è un termine; se <math|g> ha arietà <math|n> e <math|t<rsub|1>,…,t<rsub|n>> sono termini, <math|g(t<rsub|1>,…,t<rsub|n>)> è un termine. Esempi: <math|a>, <math|x>, <math|g(a)>, <math|h(x,g(a))>, e <math|x+(1*z)>, che in notazione prefissa è <math|+(x,*(1,z))>.

  Le <strong|formule> denotano valori di verità: <math|T> e <math|F>; le formule <strong|atomiche> <math|p(t<rsub|1>,…,t<rsub|n>)>; e poi <math|(P)>, <math|¬P>, <math|P∧Q>, <math|P∨Q>, <math|P⇒Q>, <math|P≡Q>, <math|(∀x.P)>, <math|(∃x.P)>. Quantificatori uguali di seguito si abbreviano: <math|∀x,y,z.P>.

  <\attenzione|Termini e formule sono cose diverse>
    <math|x+1> è un <em|termine>: denota un numero. <math|<math-up|dispari>(x+1)> è una <em|formula>: è vera o falsa. Le funzioni trasformano termini in termini; i predicati trasformano termini in formule. Scrivere <math|<math-up|pari>(x)+1> non ha senso.
  </attenzione>

  <section|Variabili libere e legate>

  In <math|(∀x.P)> la formula <math|P> è la <strong|portata> del quantificatore. Un'occorrenza di <math|x> è <strong|legata> se sta nella portata di un <math|∀x> o <math|∃x>, altrimenti è <strong|libera>. Conta la singola occorrenza: in <math|(∀x.p(a,x))∧q(x,y)> la prima <math|x> è legata, la seconda è libera, come <math|y>.

  <figura|@IMG(portata)|Le occorrenze in <math|∀y.(z=y∧(x=y∨(∃x.x=z∨z=y)))>. Le frecce collegano le variabili legate al loro quantificatore; le occorrenze in grigio sono libere. La formula è aperta, con variabili libere <math|x> e <math|z>.>

  Una formula è <strong|chiusa> se non ha variabili libere, <strong|aperta> altrimenti; <math|P(x)> ricorda che <math|x> è libera in <math|P>. Il valore di una formula aperta non è determinato: sui naturali <math|<math-up|multiplo>(x,3)> è vera se <math|x> \Ssta per\T <math|6>, falsa se sta per <math|7> (come <math|x+1=2> nel capitolo 2). Invece <math|∀x.<math-up|multiplo>(x,3)> è chiusa, e sui naturali è falsa. Ci occuperemo quasi solo di formule chiuse.

  Le variabili legate sono segnaposto e si possono ribattezzare: <math|(∀x.P)≡(∀y.P[y/x])> e <math|(∃x.P)≡(∃y.P[y/x])>, purché <math|y> non compaia in <math|P>. In <math|P[y/x]> si sostituiscono solo le occorrenze libere di <math|x> in <math|P>, non quelle già legate da un quantificatore interno.

  <\attenzione|La cattura>
    La condizione su <math|y> è essenziale. In <math|∀x.x≤y> non si può ribattezzare <math|x> in <math|y>: si otterrebbe <math|∀y.y≤y>, dove la <math|y> che era libera è stata \Scatturata\T e il significato è cambiato.
  </attenzione>

  <section|Interpretazioni>

  Una stessa formula può essere vera o falsa a seconda di come leggiamo i simboli. <math|∀x.p(x)∨q(x)> è vera sulle persone se <math|p> è \Smaggiorenne\T e <math|q> è \Sminorenne\T; è falsa sui naturali se <math|p> è \Sprimo\T e <math|q> è \Spari\T (<math|9> non è né l'uno né l'altro).

  Un'<strong|interpretazione> è una coppia <math|ℐ=(D,α)>: un <strong|dominio> <math|D> (un insieme) e una funzione <math|α> che dà a ogni costante un elemento di <math|D>, a ogni funzione di arietà <math|n> una funzione <math|D<rsup|n>→D>, a ogni predicato di arietà <math|n> una funzione <math|D<rsup|n>→<math-up|Bool>> (di arietà <math|0>: un valore di verità).

  <figura|@IMG(tre-interpretazioni)|Tre interpretazioni dello stesso alfabeto (costanti <math|a,b,c>, un predicato <math|p>). In grigio gli elementi che soddisfano <math|p>. <math|ℐ<rsub|2>> e <math|ℐ<rsub|3>> differiscono solo per il dominio, eppure <math|∀x.p(x)> è vera nella prima e falsa nella seconda.>

  @TABLE
  Formula & <math|ℐ<rsub|1>> (città, capoluogo) & <math|ℐ<rsub|2>> (<math|{5,10,15}>) & <math|ℐ<rsub|3>> (<math|ℕ>, multiplo di <math|5>)
  <math|p(c)> & <falso> & <vero> & <vero>
  <math|∃x.p(x)> & <vero> & <vero> & <vero>
  <math|∀x.p(x)> & <falso> & <vero> & <falso>
  <math|(∃x.p(x))∧(∃y.¬p(y))> & <vero> & <falso> & <vero>
  @END

  In <math|ℐ<rsub|1>> le costanti sono Milano, Roma, Pontedera; in <math|ℐ<rsub|2>> e <math|ℐ<rsub|3>> sono <math|5>, <math|10>, <math|15>. Il dominio conta anche per gli individui <em|senza nome>: in <math|ℕ> c'è <math|7>, che nessuna costante nomina ma che basta a rendere falsa <math|∀x.p(x)>.

  <section|Formalizzare>

  Per formalizzare una frase si sceglie un alfabeto e un'interpretazione, e si scrive una formula vera <em|se e solo se> la frase è vera:

  <\enumerate>
    <item>individua il dominio <math|D>;

    <item>per ogni individuo nominato, una costante;

    <item>per ogni operatore che dà un individuo, un simbolo di funzione;

    <item>per ogni proprietà o relazione, un predicato;

    <item>scrivi la formula.
  </enumerate>

  \SSe un naturale è pari, lo è anche il successore del suo successore\T: dominio <math|ℕ>, funzione <math|<math-up|succ>> con <math|α(<math-up|succ>)(n)=n+1> (un operatore, non un predicato), predicato <math|<math-up|pari>>:

  <\equation*>
    ∀x.<math-up|pari>(x)⇒<math-up|pari>(<math-up|succ>(<math-up|succ>(x))).
  </equation*>

  \SDue persone sono parenti se hanno un antenato in comune\T: l'antenato non ha nome, quindi diventa una variabile quantificata <em|dentro> la premessa:

  <\equation*>
    ∀x,y.(∃z.<math-up|antenato>(z,x)∧<math-up|antenato>(z,y))⇒<math-up|parenti>(x,y).
  </equation*>

  Spesso si quantifica solo su chi soddisfa una condizione <math|P>, il <strong|dominio> del quantificatore. Si abbrevia

  <\equation*>
    (∀x:P.Q)<text| per >(∀x.P⇒Q),<space|2em>(∃x:P.Q)<text| per >(∃x.P∧Q).
  </equation*>

  <\attenzione|Con <math|∀> va <math|⇒>, con <math|∃> va <math|∧>>
    \SQualche studente di FPL va al cinema\T è <math|∃x.<math-up|stud>(x)∧<math-up|cin>(x)>. Scrivere <math|∃x.<math-up|stud>(x)⇒<math-up|cin>(x)> è un errore: basta una persona che <em|non> è studente per rendere vera l'implicazione, e la formula diventa vera quasi sempre. Viceversa <math|∀x.<math-up|stud>(x)∧<math-up|cin>(x)> direbbe che <em|tutti> sono studenti.
  </attenzione>

  <\guidato|Tutti tranne uno>
    Dominio: le persone; costanti <math|A,B,C> (Alberto, Bruno, Carlo); predicati <math|<math-up|segueFPL>>, <math|<math-up|vaCinema>>, <math|=>. Formalizza: (1) \SAlberto non segue FPL ma va al cinema con Bruno o con Carlo\T; (2) \Stutti gli studenti di FPL vanno al cinema\T; (3) \Stutti gli studenti di FPL tranne uno vanno al cinema\T.

    <em|Idea.> \SMa\T è una congiunzione; \Stranne uno\T dice due cose: ce n'è uno che non ci va, e <em|tutti gli altri> ci vanno.

    <em|Conto.> (1) <math|¬<math-up|segueFPL>(A)∧<math-up|vaCinema>(A)∧(<math-up|vaCinema>(B)∨<math-up|vaCinema>(C))>.

    (2) <math|∀x.<math-up|segueFPL>(x)⇒<math-up|vaCinema>(x)>.

    (3) <math|∃x.(<math-up|segueFPL>(x)∧¬<math-up|vaCinema>(x)∧∀y.(<math-up|segueFPL>(y)∧¬(x=y)⇒<math-up|vaCinema>(y)))>.

    <em|Controllo.> Senza la parte <math|∀y> la (3) direbbe solo \Salmeno uno non ci va\T. Senza <math|¬(x=y)> la parte <math|∀y> si applicherebbe anche a <math|x> stesso e contraddirebbe <math|¬<math-up|vaCinema>(x)>. Un solo predicato <math|<math-up|segueFPL>> è più compatto di <math|<math-up|studente>(x)∧<math-up|frequenta>(x,<math-up|FPL>)>, ma non permette di parlare di altri corsi: l'alfabeto si sceglie in base a ciò che si vuole dire.
  </guidato>

  <\officina|4. Formalizzare senza tradire>
    <\itemize>
      <item>Prima l'alfabeto, poi la formula: dominio, costanti, funzioni (danno individui), predicati (danno vero o falso).

      <item>\SOgni <math|P> è <math|Q>\T: <math|∀x.P(x)⇒Q(x)>. \SQualche <math|P> è <math|Q>\T: <math|∃x.P(x)∧Q(x)>.

      <item>\SEsattamente uno\T: <math|∃x.(P(x)∧∀y.(P(y)⇒y=x))>. \STranne uno\T: come sopra, con la negazione al posto giusto.

      <item>Un individuo senza nome nella frase è una variabile quantificata, nel punto in cui la frase lo introduce.

      <item>Controllo finale: rileggi la formula ad alta voce e cerca un'interpretazione in cui la formula e la frase non sono d'accordo.
    </itemize>
  </officina>

  <\verifica|4>
    <strong|a)> In <math|(∃x.p(x)∧(∀x.q(x,y)))∨r(x)>, quali occorrenze sono libere?

    <strong|b)> Formalizza \Sogni numero pari ha un successore dispari\T e dimmi se è un termine o una formula.

    <strong|c)> Perché <math|∀x.p(x)> è vera in <math|ℐ<rsub|2>> e falsa in <math|ℐ<rsub|3>>?
  </verifica>

