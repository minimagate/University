  <chapter|Verità e leggi nel primo ordine>

  <\inbreve>
    Come si decide se una formula con <math|∀> ed <math|∃> è vera? Serve sapere a chi si riferiscono le variabili: un <strong|assegnamento>. Con questo strumento definiamo il valore di ogni formula, e poi raccogliamo le leggi e le regole che permettono di <em|dimostrare> con i quantificatori.
  </inbreve>

  <section|Il valore dei termini>

  Fissiamo un'interpretazione <math|ℐ=(D,α)>. Un termine <em|chiuso> denota un elemento di <math|D>: una costante vale <math|α(c)>; <math|g(t<rsub|1>,…,t<rsub|n>)> vale <math|α(g)> applicata ai valori dei <math|t<rsub|i>>. Con <math|D=ℕ>, <math|α(a)=0>, <math|α(s)(n)=n+1>:

  <\equation*>
    α(s(s(a)))=α(s)(α(s)(α(a)))=α(s)(α(s)(0))=(0+1)+1=2.
  </equation*>

  <math|s(s(a))> è una scrittura; <math|2> è il numero che essa denota.

  Per un termine con variabili serve sapere a chi si riferiscono. Un <strong|assegnamento> è una funzione <math|ρ:𝒱→D>, per esempio <math|ρ={x↦0,y↦3,z↦1}>. La notazione <math|ρ[d/x]> indica l'assegnamento uguale a <math|ρ> tranne che manda <math|x> in <math|d>: <math|ρ[15/z]={x↦0,y↦3,z↦15}>. Il valore <math|α<rsub|ρ>(t)> aggiunge una sola regola: una variabile vale <math|ρ(x)>. Con <math|ρ={x↦2,y↦10}> si ha <math|α<rsub|ρ>(s(s(x)))=4> e <math|α<rsub|ρ>(s(s(y)))=12>.

  <section|Il valore delle formule>

  Il valore di una formula dipende da <math|ℐ> e da <math|ρ>; lo scriviamo <math|ℐ<rsub|ρ>(φ)>. Le regole (S0)–(S4) sono quelle del capitolo 2: <math|T> vale <vero>, <math|F> vale <falso>, i connettivi si calcolano con le loro tabelle. Per una formula atomica, (S1): si calcolano i termini e si applica il predicato, <math|ℐ<rsub|ρ>(p(t<rsub|1>,…,t<rsub|n>))=α(p)(α<rsub|ρ>(t<rsub|1>),…,α<rsub|ρ>(t<rsub|n>))>. Le novità sono i quantificatori:

  <\itemize>
    <item><strong|(S5)> <math|ℐ<rsub|ρ>(∀x.P)=<vero>> se <math|ℐ<rsub|ρ[d/x]>(P)=<vero>> <em|per ogni> <math|d∈D>; altrimenti <falso>.

    <item><strong|(S6)> <math|ℐ<rsub|ρ>(∃x.P)=<vero>> se <math|ℐ<rsub|ρ[d/x]>(P)=<vero>> <em|per almeno un> <math|d∈D>; altrimenti <falso>.
  </itemize>

  Per valutare la portata, tipicamente aperta, si <em|prova> ogni elemento del dominio come valore di <math|x>. Per una formula <strong|chiusa> l'assegnamento non conta (le slide lo enunciano senza dimostrarlo), e scriviamo semplicemente <math|ℐ(φ)>.

  <\immagine|<math|∀> è un \Se\T lungo, <math|∃> è un \So\T lungo>
    Su un dominio finito <math|{a,b,c}>, <math|∀x.P(x)> si comporta come <math|P(a)∧P(b)∧P(c)> ed <math|∃x.P(x)> come <math|P(a)∨P(b)∨P(c)>. Per smontare un <math|∀> basta un elemento che fallisce; per un <math|∃> basta un elemento che funziona: un <strong|testimone>.
  </immagine>

  <\guidato|Un esistenziale con dentro un universale>
    <math|D={a,b}>; <math|Q> vale <vero> su entrambi; <math|P(x,y)> vale <vero> solo per <math|(a,a)> e <math|(a,b)>. Stabilisci il valore di <math|φ<rsub|1>=∃x.Q(x)∧(∀y.P(x,y))>.

    <em|Idea.> Per (S6) basta un testimone per <math|x>. Per il <math|∀y> interno bisogna invece provare tutti i valori di <math|y>.

    <figura|@IMG(quantificatori)|La tabella di <math|P(x,y)>. La riga di <math|a> è tutta vera: <math|a> è il testimone per <math|∃x.∀y.P(x,y)>. La riga di <math|b> non funzionerebbe.>

    <em|Conto.> Proviamo <math|x↦a>. <math|Q(a)=<vero>>. Per <math|∀y.P(a,y)>: con <math|y↦a>, <math|P(a,a)=<vero>>; con <math|y↦b>, <math|P(a,b)=<vero>>. Quindi la portata vale <math|<vero>∧<vero>=<vero>> e <math|φ<rsub|1>> è vera.

    <em|Controllo.> Con <math|x↦b> avremmo <math|P(b,a)=<falso>>: per un <math|∃> basta però un solo testimone buono.
  </guidato>

  Allo stesso modo, con <math|D={a,b,c}> e i valori

  @TABLE
  <math|x> & <math|a> & <math|b> & <math|c>
  <math|P> & <vero> & <vero> & <falso>
  <math|Q> & <vero> & <falso> & <vero>
  <math|R> & <falso> & <vero> & <falso>
  @END

  la formula <math|∀x.P(x)⇒Q(x)∧R(x)> è falsa: per <math|x=a> la premessa è vera e <math|Q(a)∧R(a)> è falsa. Un controesempio basta.

  Le definizioni del capitolo 2 si estendono. Una formula chiusa è <strong|valida> (<math|⊨φ>) se è vera in ogni interpretazione, come <math|∀x.p(x)∨¬p(x)>; <strong|soddisfacibile> se è vera in almeno una, come <math|p(a)> (basta <math|D=ℕ>, <math|α(a)=44>, <math|p> = \Sessere pari\T); <strong|insoddisfacibile> se non lo è mai, come <math|∃x.p(x)∧¬p(x)>. <math|Γ⊨φ> se ogni modello di <math|Γ> è modello di <math|φ>.

  <section|Dimostrare nella LPO>

  Una regola di inferenza si scrive <math|<frac|δ<rsub|1>,…,δ<rsub|k>|δ>>: dalle premesse sopra si ricava la conclusione sotto; con <math|k=0> è un <strong|assioma>. Una <strong|dimostrazione> di <math|φ> da <math|Γ> è una sequenza di formule, ciascuna presa da <math|Γ> o ottenuta con una regola dalle precedenti, che finisce con <math|φ>; si scrive <math|Γ⊢φ>. Un sistema è <strong|corretto> se <math|Γ⊢φ> implica <math|Γ⊨φ>, <strong|completo> se vale il viceversa. Il calcolo proposizionale è corretto e completo; il sistema del corso per la LPO è corretto (sistemi completi esistono, come la deduzione naturale, ma non li vediamo).

  Si usano tutte le leggi del capitolo 3, più leggi per i quantificatori, che sono <em|formule valide>. Se si usano anche ipotesi <math|Γ<rsub|2>>, la dimostrazione garantisce <math|Γ<rsub|2>⊨φ>, non la validità. Il <strong|teorema di deduzione> giustifica il trucco di assumere la premessa: <math|Γ⊢P⇒Q> se e solo se <math|Γ,P⊢Q>.

  I principi di sostituzione restano validi, evitando catture; sotto un quantificatore la relazione usata deve valere per tutti i valori della variabile quantificata; per la polarità, <math|∀> ed <math|∃> <em|non> cambiano segno. Con l'ipotesi <math|P⇒Q>, il passo <math|(∀x.P∨R)∧(∃x.¬P)⇒(∀x.Q∨R)∧(∃x.¬P)> è corretto (la prima <math|P> è positiva); sostituire anche la seconda <math|P>, che sta sotto <math|¬>, sarebbe sbagliato.

  <section|Le leggi dei quantificatori>

  Nelle sostituzioni <math|P[t/x]> si cambiano solo le occorrenze libere di <math|x>, evitando la cattura delle variabili di <math|t>: se necessario, prima si rinominano le variabili legate. Quando una legge istanzia un termine o nomina un individuo, si lavora su un dominio non vuoto. Il caso del dominio vuoto serve a capire quali ipotesi sono necessarie.

  @TABLE wide
  Nome & Legge
  Elim. <math|∀>, intro. <math|∃> & <math|(∀x.P)⇒P[t/x]>, <space|0.3em><math|P[t/x]⇒(∃x.P)> (<math|t> termine, sostituite le occorrenze libere di <math|x>)
  De Morgan & <math|¬(∀x.P)≡(∃x.¬P)>, <space|0.3em><math|¬(∃x.P)≡(∀x.¬P)>
  Annidamento & <math|∀x.∀y.P≡∀y.∀x.P>, <space|0.3em><math|∃x.∃y.P≡∃y.∃x.P>
  Costante & <math|(∀x.P)≡P><new-line><math|(∃x.P)≡P><new-line>se <math|x> non occorre in <math|P> (dominio non vuoto)
  Distribuzione & <math|(∀x.P∧Q)≡(∀x.P)∧(∀x.Q)>, <space|0.3em><math|(∃x.P∨Q)≡(∃x.P)∨(∃x.Q)>
  Solo implicazione & <math|(∀x.P)∨(∀x.Q)⇒(∀x.P∨Q)>, <space|0.3em><math|(∃x.P∧Q)⇒(∃x.P)∧(∃x.Q)>
  Distrib. con <math|Q> fisso & <math|(∀x.P∧Q)≡(∀x.P)∧Q>, <space|0.3em><math|(∃x.P∨Q)≡(∃x.P)∨Q><new-line>se <math|x> non occorre in <math|Q> (dominio non vuoto)
  Indebolimento & <math|(∀x.P)⇒(∀x.P∨Q)>, <space|0.3em><math|(∃x.P∧Q)⇒(∃x.P)>, e analoghe
  Dominio & <math|(∀x:P∨Q.R)≡(∀x:P.R)∧(∀x:Q.R)>, <space|0.3em><math|(∃x:P∨Q.R)≡(∃x:P.R)∨(∃x:Q.R)>
  @END

  Esempi: dall'eliminazione di <math|∀>, <math|(∀x.<math-up|uomo>(x)⇒<math-up|mortale>(x))⇒(<math-up|uomo>(<text|Socrate>)⇒<math-up|mortale>(<text|Socrate>))>; dall'introduzione di <math|∃>, <math|<math-up|pari>(10)∧10›2⇒∃x.<math-up|pari>(x)∧x›2>. Per la riga \Ssolo implicazione\T: \Sogni persona è maggiorenne o minorenne\T è vera, ma non segue che tutte siano maggiorenni o tutte minorenni.

  <\attenzione|Il dominio vuoto>
    Su un dominio vuoto non c'è nessun <math|d> che falsifichi la portata, quindi <math|∀x.F> è <em|vacuamente vera>, mentre <math|F> è falsa: la legge della costante fallirebbe. Per questo la legge richiede un dominio non vuoto (e dualmente <math|∃x.T> sarebbe falsa). Lo stesso accade con un quantificatore ristretto: se nessun elemento soddisfa <math|P>, <math|∀x:P.Q> è vera qualunque sia <math|Q> (\Stutti gli studenti con tre teste vanno al cinema\T è vera), ed <math|∃x:P.Q> è falsa.
  </attenzione>

  <section|Uguaglianza>

  Nei linguaggi con <math|=>, <math|t<rsub|1>=t<rsub|2>> è vera quando i due termini denotano lo stesso elemento. La <strong|legge di Leibniz> dice che oggetti uguali hanno le stesse proprietà, in tre forme equivalenti:

  <\equation*>
    x=y⇒(P≡P[y/x]),<space|2em>x=y∧P≡x=y∧P[y/x],<space|2em>x=y∧P⇒P[y/x].
  </equation*>

  Le <strong|leggi del singoletto> (con <math|x≠y> come nomi di variabile, e sostituzione senza cattura): <math|(∀x.x=y⇒P)≡P[y/x]> e <math|(∃x.x=y∧P)≡P[y/x]>. L'idea: <math|x=y> restringe il dominio a un solo elemento, quindi quantificare equivale a sostituire. La seconda si dimostra così:

  @CHAIN
  ∃x.x=y∧P
  ≡ ∃x.x=y∧P[y/x] ;; Leibniz
  ≡ (∃x.x=y)∧P[y/x] ;; distribuzione: <math|x> non occorre più libera in <math|P[y/x]>
  ≡ P[y/x] ;; <math|(∃x.x=y)≡T>, unità
  @END

  <section|Due regole per i quantificatori>

  <strong|Generalizzazione.> Per dimostrare <math|∀x.P> si prende una costante <em|nuova> <math|d> (che non compare in <math|Γ> né in <math|P>) e si dimostra <math|P[d/x]>. <math|d> rappresenta un elemento generico, su cui non sappiamo nulla. Per esempio, da <math|∀x.P⇒Q> e <math|∀x.P>: eliminando <math|∀> su <math|d> si ha <math|(P[d/x]⇒Q[d/x])∧P[d/x]>, e per modus ponens <math|Q[d/x]>; per generalizzazione, <math|∀x.Q>.

  <strong|Skolemizzazione.> Se tra le premesse c'è <math|∃x.P>, per dimostrare qualunque <math|Q> si può aggiungere l'ipotesi <math|P[d/x]> con <math|d> nuova, assente anche dalla conclusione <math|Q>: un elemento che soddisfa <math|P> esiste, e gli diamo un nome. Così si dimostra <math|(∀x.P⇒Q)∧(∃x.P)⇒(∃x.Q)>:

  Assumiamo le due premesse e chiamiamo <math|d> il testimone dell’esistenziale: aggiungiamo temporaneamente <math|P[d/x]>. Dall’universale otteniamo <math|P[d/x]⇒Q[d/x]>, quindi per modus ponens <math|Q[d/x]>, e per introduzione di <math|∃> concludiamo <math|∃x.Q>. La conclusione non nomina <math|d>, perciò possiamo chiudere l’ipotesi sul testimone.

  <strong|Attenzione.> La scelta di <math|d> è una regola di prova, non la legge <math|(∃x.P)⇒P[d/x]> per una costante arbitraria: quest’ultima è falsa.

  Con la generalizzazione si dimostra anche <math|(∃y.∀x.P)⇒(∀x.∃y.P)>: presa <math|d> nuova, <math|∃y.∀x.P(x,y)⇒∃y.P(d,y)> per eliminazione di <math|∀> (in posizione positiva dentro <math|∃y>), e si generalizza su <math|d>.

  <\attenzione|<math|∀∃> e <math|∃∀> non si scambiano>
    Il viceversa è falso, e le slide non lo trattano. Esempio aggiunto: sui naturali <math|∀x.∃y.x‹y> è vera (ogni numero ha un numero più grande), mentre <math|∃y.∀x.x‹y> è falsa (non c'è un numero più grande di tutti). Nel primo caso <math|y> può dipendere da <math|x>, nel secondo no.
  </attenzione>

  <\officina|5. Lavorare con i quantificatori>
    <\itemize>
      <item><em|Valutare <math|∃x.P>.> Cerca un testimone. <em|Valutare <math|∀x.P>.> Cerca un controesempio; se non c'è, devi controllare tutto il dominio.

      <item><em|Dimostrare <math|∀x.P>.> Prendi una costante nuova <math|d> e dimostra <math|P[d/x]> senza supporre nulla su <math|d>.

      <item><em|Usare <math|∃x.P> in premessa.> Dai un nome nuovo al testimone (skolemizzazione) e usa <math|P[d/x]>.

      <item><em|Usare <math|∀x.P> in premessa.> Istanzialo sul termine che ti serve.

      <item><em|Negare.> De Morgan scambia <math|∀> ed <math|∃> e porta la negazione dentro.
    </itemize>
  </officina>

  <\verifica|5>
    <strong|a)> Nega <math|∀x.(p(x)⇒∃y.q(x,y))> portando la negazione fino agli atomi.

    <strong|b)> Perché nella generalizzazione la costante deve essere nuova?

    <strong|c)> Con <math|D={a,b}>, <math|P(a,b)=P(b,a)=<vero>> e <math|P(a,a)=P(b,b)=<falso>>: quanto valgono <math|∀x.∃y.P(x,y)> e <math|∃y.∀x.P(x,y)>?
  </verifica>

