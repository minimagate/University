<chapter|Limiti di funzioni, continuità e limiti notevoli>

<\inbreve>
In una successione l'indice avanza a scatti, un naturale dopo l'altro, mentre l'argomento di una funzione può avvicinarsi a un punto passando per tutti i reali. Questo capitolo porta l'idea di limite dalle successioni alle funzioni, a partire da una funzione con un buco nel suo grafico. Da lì arriveremo alla continuità e ai limiti notevoli, una piccola raccolta di risultati che renderà rapidi moltissimi calcoli.
</inbreve>

<section|Punti di accumulazione e definizione di limite>

La funzione <math|f(x)=(x<rsup|2>-1)/(x-1)> non è definita in 1, perché lì il denominatore si annulla. Eppure per <math|x≠1> possiamo semplificare e scrivere <math|f(x)=x+1>, e allora guardando i valori vicino a 1 ci aspettiamo di trovare numeri vicini a 2. Il limite descrive questa previsione, e per questo non ha bisogno che la funzione abbia un valore nel punto.

Perché la previsione abbia senso, però, il dominio deve contenere punti vicini a <math|x<rsub|0>> quanto vogliamo, diversi da <math|x<rsub|0>> stesso. In questo caso diciamo che <math|x<rsub|0>> è un <strong|punto di accumulazione> di <math|D>. In formule, per ogni <math|δ›0> deve esistere <math|x∈D> con <math|0‹\|x-x<rsub|0>\|≤δ>.

Prendiamo per esempio <math|D=(0,1]∪{2}>. Lo zero è di accumulazione anche se non appartiene al dominio, perché i punti <math|1/n> gli si avvicinano quanto vogliamo. Il numero 2 appartiene al dominio ma è <strong|isolato>, perché entro distanza <math|1/2> da lui non ci sono altri punti di <math|D>, e quindi non ha senso chiedersi a che cosa tenda la funzione avvicinandosi a 2.

<\concetto|Limite finito in un punto>
Siano <math|f:D→ℝ> e <math|x<rsub|0>> un punto di accumulazione di <math|D>. Scriviamo <math|lim<rsub|x→x<rsub|0>>f(x)=ℓ∈ℝ> se, per ogni <math|ε›0>, esiste <math|δ›0> tale che

<\equation*>
x∈D,<space|1em>0‹\|x-x<rsub|0>\|≤δ<space|1em>⇒<space|1em>\|f(x)-ℓ\|≤ε.
</equation*>

La tolleranza <math|ε> riguarda i valori della funzione. La distanza <math|δ> riguarda gli argomenti e può dipendere da <math|ε>.
</concetto>

La struttura è la stessa delle successioni, con una differenza. Al posto di «da un certo indice in poi» troviamo «abbastanza vicino a <math|x<rsub|0>>», e l'intorno che consideriamo è <em|bucato>, cioè esclude il centro, come dice la condizione <math|0‹\|x-x<rsub|0>\|>. Nell'esempio iniziale, per <math|x≠1> vale <math|\|f(x)-2\|=\|x-1\|>, e quindi, dato <math|ε›0>, basta prendere <math|δ=ε>. Anche se decidessimo di assegnare alla funzione il valore 100 nel punto 1, il limite resterebbe 2, perché il centro non partecipa.

<figura|@IMG(epsilon-delta,0.90)|Scelta una striscia orizzontale di larghezza <math|2ε> attorno a <math|ℓ>, cerchiamo una distanza <math|δ> dal centro che trattenga il grafico nella striscia. Il punto centrale non interviene nel limite.>

<subsection|Valori infiniti e avvicinamento da un lato>

Come per le successioni, i valori possono anche crescere senza limite. La funzione <math|1/x<rsup|2>> vicino a zero non si avvicina a nessun numero reale, ma supera qualsiasi quota. Per superare una quota <math|M›0>, per esempio, basta prendere <math|0‹\|x\|≤1/<sqrt|M>>. In generale, per definire <math|lim<rsub|x→x<rsub|0>>f(x)=+∞> sostituiamo la richiesta sui valori con <math|f(x)≥M>, da soddisfare per ogni quota <math|M∈ℝ>, e per <math|-∞> con <math|f(x)≤M>. Ora la distanza <math|δ› 0> dipende dalla quota <math|M>.

Possiamo anche decidere da che parte avvicinarci al punto. Un <strong|limite destro> usa soltanto gli <math|x∈D> con <math|x<rsub|0>‹x≤x<rsub|0>+δ>, e un <strong|limite sinistro> soltanto quelli con <math|x<rsub|0>-δ≤x‹x<rsub|0>>. In questo caso il punto deve essere di accumulazione dal lato che consideriamo. Per <math|f(x)=1/x>, per esempio, i valori tendono a <math|+∞> da destra e a <math|-∞> da sinistra, e poiché i due comportamenti non coincidono il limite bilatero non esiste.

In generale, quando il dominio si avvicina al punto da entrambi i lati, il limite bilatero esiste se e solo se esistono i due limiti laterali e sono uguali. Se entrambi esistono e coincidono, infatti, basta prendere il più piccolo dei due <math|δ> per controllare i due lati insieme.

Non bisogna confondere il lato da cui arriva l'argomento con quello da cui arrivano i valori. Per esempio <math|lim<rsub|x→0<rsup|->>x<rsup|2>=0<rsup|+>>, perché <math|x> arriva da sinistra, ma i suoi quadrati sono positivi. La notazione <math|ℓ<rsup|+>> chiede che vicino al punto valga <math|ℓ‹f(x)≤ℓ+ε>, mentre <math|ℓ<rsup|->> chiede <math|ℓ-ε≤f(x)‹ℓ>.

<subsection|Quando l'argomento va all'infinito>

Possiamo anche chiederci che cosa succede quando l'argomento cresce senza limite. Perché <math|x→+∞> abbia senso il dominio deve essere illimitato superiormente, e la vicinanza al punto viene sostituita da una condizione del tipo <math|x≥K>. Per esempio

<\equation*>
lim<rsub|x→+∞>f(x)=ℓ∈ℝ<space|1em>⇔<space|1em>∀ε›0<space|1em>∃K∈ℝ<space|1em>∀x∈D,<space|1em>x≥K⇒\|f(x)-ℓ\|≤ε.
</equation*>

Per un limite infinito sostituiamo, come sempre, la tolleranza sui valori con una quota da superare. Per <math|x→-∞> chiediamo un dominio illimitato inferiormente e usiamo condizioni del tipo <math|x≤K>. In tutte queste definizioni gli esiti possibili sono gli stessi quattro: un limite reale, <math|+∞>, <math|-∞>, oppure nessun limite.

Il cambio di variabile <math|y=-x> trasforma un argomento che tende a <math|-∞> in uno che tende a <math|+∞>. Per esempio <math|<sqrt|x<rsup|2>+7x+2>+x> diventa <math|<sqrt|y<rsup|2>-7y+2>-y>, cioè lo stesso calcolo dell'esercizio 9.2, ora con una variabile reale. Se preferiamo razionalizzare direttamente, dobbiamo ricordare che per <math|x‹0> vale <math|<sqrt|x<rsup|2>>=\|x\|=-x>, e il risultato è ancora <math|-7/2>.

<section|Continuità e composizione>

Il limite fa una previsione a partire dai valori vicini. La <strong|continuità> chiede che questa previsione coincida con il valore effettivo della funzione nel punto, e quindi questa volta il punto deve appartenere al dominio.

<\concetto|Continuità in un punto>
La funzione <math|f:D→ℝ> è continua in <math|x<rsub|0>∈D> se, per ogni <math|ε›0>, esiste <math|δ›0> tale che

<\equation*>
x∈D,<space|1em>\|x-x<rsub|0>\|≤δ<space|1em>⇒<space|1em>\|f(x)-f(x<rsub|0>)\|≤ε.
</equation*>

Se il punto è di accumulazione, equivale a <math|lim<rsub|x→x<rsub|0>>f(x)=f(x<rsub|0>)>. Un punto isolato soddisfa automaticamente la definizione: possiamo scegliere <math|δ> così piccolo che l'unico argomento ammesso sia il centro stesso.
</concetto>

I teoremi sulle successioni passano alle funzioni quasi senza modifiche. Confronto, carabinieri e algebra dei limiti valgono anche qui, e nelle dimostrazioni basta sostituire «oltre un certo indice» con «abbastanza vicino al punto», oppure con «abbastanza avanti sulla semiretta». In particolare somme e prodotti di funzioni continue sono continui, e i quozienti lo sono dove il denominatore non si annulla.

<subsection|La composta: chiedere la precisione nel giusto ordine>

Anche la <strong|composta di funzioni continue> è continua, ma qui il ragionamento ha una piccola sottigliezza, che conviene vedere prima su un esempio. Prendiamo <math|f(x)=x+1> e <math|g(y)=y<rsup|2>>, e guardiamo la composta vicino a <math|x=0>. La prima funzione porta <math|x> vicino a 1, e la seconda deve portare quel valore vicino a <math|1<rsup|2>=1>.

Da dove cominciamo? La precisione richiesta riguarda l'uscita finale, quindi dobbiamo prima capire quanto <math|y> deve essere vicino a 1 perché <math|y<rsup|2>> rispetti quella precisione. Solo dopo chiediamo a <math|f> di portare <math|x> abbastanza vicino. Le scelte vanno fatte a ritroso, dall'uscita verso l'entrata.

Facciamo una richiesta concreta, <math|\|y<rsup|2>-1\|≤1/10>. Se intanto ci limitiamo a <math|\|y-1\|≤1>, cioè a <math|0≤y≤2>, abbiamo <math|\|y+1\|≤3>, e la fattorizzazione dà

<\equation*>
\|y<rsup|2>-1\|=\|y-1\|\|y+1\|≤3\|y-1\|.
</equation*>

Basta quindi chiedere <math|\|y-1\|≤1/30>. Con <math|y=f(x)=x+1> questa precisione si ottiene per <math|\|x\|≤1/30>, e siamo così risaliti dalla precisione finale alla distanza iniziale.

Il caso generale segue lo stesso schema. Supponiamo <math|f> continua in <math|x<rsub|0>> e <math|g> continua in <math|y<rsub|0>=f(x<rsub|0>)>, con i valori di <math|f> nel dominio di <math|g>. Dato <math|ε›0>, la continuità della funzione esterna ci dà una distanza <math|η›0> tale che

<\equation*>
\|y-y<rsub|0>\|≤η⇒\|g(y)-g(y<rsub|0>)\|≤ε.
</equation*>

Ora usiamo la continuità di <math|f>, chiedendole la precisione <math|η>, e otteniamo <math|δ›0> tale che

<\equation*>
\|x-x<rsub|0>\|≤δ⇒\|f(x)-y<rsub|0>\|≤η.
</equation*>

Mettendo <math|y=f(x)> nella prima implicazione otteniamo <math|\|g(f(x))-g(f(x<rsub|0>))\|≤ε>, come volevamo.

<subsection|Perché l'esponenziale è continuo>

Nel capitolo 5 abbiamo assunto alcune proprietà delle potenze, e ora possiamo dimostrare che l'esponenziale è continuo senza usare derivate. Sia <math|a›1>. Sappiamo già che <math|a<rsup|1/n>→1>, e il trucco è sfruttare questo fatto per gli esponenti piccoli.

Se <math|0≤h≤1/n>, la monotonia dà <math|0≤a<rsup|h>-1≤a<rsup|1/n>-1>. Se invece <math|-1/n≤h≤0>, poniamo <math|t=-h> e osserviamo che

<\equation*>
0≤1-a<rsup|h>=1-a<rsup|-t>=<frac|a<rsup|t>-1|a<rsup|t>>≤a<rsup|1/n>-1,
</equation*>

perché <math|a<rsup|t>≥1>. In entrambi i casi <math|\|a<rsup|h>-1\|≤a<rsup|1/n>-1>. Fissati un punto <math|x<rsub|0>> e una tolleranza <math|ε›0>, scegliamo <math|n> abbastanza grande da rendere quest'ultima quantità al massimo <math|ε/a<rsup|x<rsub|0>>>. Con <math|δ=1/n> otteniamo

<\equation*>
\|a<rsup|x<rsub|0>+h>-a<rsup|x<rsub|0>>\|=a<rsup|x<rsub|0>>\|a<rsup|h>-1\|≤ε.
</equation*>

Per <math|0‹a‹1> basta scrivere <math|a<rsup|x>=1/(1/a)<rsup|x>>, e per <math|a=1> la funzione è costante.

<subsection|La continuità dell'inversa: il caso del logaritmo>

Anche l'inversa di una funzione continua e strettamente monotona fra due intervalli è continua. L'idea è racchiudere l'argomento dell'inversa fra due valori della funzione di partenza, e la vediamo nel caso del logaritmo. Fissiamo <math|x<rsub|0>›0>, poniamo <math|y<rsub|0>=log x<rsub|0>> e prendiamo <math|ε›0>. Poiché l'esponenziale è crescente,

<\equation*>
e<rsup|y<rsub|0>-ε>‹x<rsub|0>‹e<rsup|y<rsub|0>+ε>.
</equation*>

Scegliamo <math|δ›0> più piccolo delle distanze di <math|x<rsub|0>> dai due estremi. Se <math|\|x-x<rsub|0>\|≤δ>, il punto <math|x> resta fra <math|e<rsup|y<rsub|0>-ε>> ed <math|e<rsup|y<rsub|0>+ε>>, e poiché il logaritmo è crescente <math|y<rsub|0>-ε‹log x‹y<rsub|0>+ε>. Il logaritmo è quindi continuo su tutto <math|(0,+∞)>.

<section|Il limite del seno e i limiti notevoli trigonometrici>

Vicino a zero il seno di un angolo e l'angolo stesso sono quasi uguali, purché l'angolo sia misurato in radianti. È proprio questa unità di misura a far coincidere, sulla circonferenza unitaria, l'angolo con la lunghezza dell'arco. Il confronto preciso, per <math|0‹x‹π/2>, viene dalla geometria:

<\equation*>
sin x≤x≤tan x.
</equation*>

La prima disuguaglianza confronta una corda con un arco. La corda che unisce i punti di angolo <math|-x> e <math|x> è lunga <math|2 sin x>, e l'arco fra gli stessi punti è lungo <math|2x>. Per la seconda confrontiamo due aree. Il settore circolare fra gli angoli zero e <math|x> ha area <math|x/2> ed è contenuto nel triangolo formato dal raggio orizzontale e dalla retta tangente alla circonferenza in <math|(1,0)>, che ha area <math|tan x/2>.

<figura|@IMG(seno-x-tan,0.90)|La corda e l'arco danno <math|sin x≤x>. Il settore e il triangolo esterno danno <math|x≤tan x>. Sono confronti geometrici, precedenti alle derivate.>

Prima di usare questi confronti con i carabinieri ci serve sapere che <math|cos x→1>. Dalla prima disuguaglianza e dal fatto che il seno è dispari ricaviamo <math|\|sin h\|≤\|h\|> vicino a zero, quindi <math|sin h→0>. L'identità <math|1-cos h=2 sin<rsup|2>(h/2)> dà allora <math|0≤1-cos h≤h<rsup|2>/2>, che tende a zero. Con le formule di addizione questi due fatti diventano la continuità di seno e coseno in qualsiasi punto. Per esempio

<\equation*>
sin(a+h)-sin a=sin a(cos h-1)+cos a sin h→0.
</equation*>

Lo stesso argomento usato per il logaritmo, che racchiude l'argomento fra due valori della funzione, mostra poi che anche le inverse trigonometriche sono continue sui loro intervalli, usando un solo lato agli estremi del dominio.

Torniamo al confronto geometrico. Dividendo per <math|x›0> e ricordando che <math|tan x=sin x/cos x>, otteniamo

<\equation*>
cos x≤<frac|sin x|x>≤1.
</equation*>

Il coseno tende a 1, quindi i carabinieri danno il limite destro 1. Poiché il quoziente è una funzione pari, lo stesso vale a sinistra.

<\concetto|Limite fondamentale del seno>
Con gli angoli in radianti,

<\equation*>
lim<rsub|x→0><frac|sin x|x>=1.
</equation*>

Il seno e il suo argomento hanno lo stesso comportamento al primo ordine vicino a zero. Non abbiamo usato né derivate né de L'Hôpital.
</concetto>

<subsection|Dal seno al coseno, alla tangente e alle inverse>

Da questo limite discendono tutti gli altri limiti trigonometrici. Per il coseno usiamo l'identità <math|(1-cos x)(1+cos x)=sin<rsup|2>x>, che permette di far comparire il seno:

<\equation*>
<frac|1-cos x|x<rsup|2>>=<around*|(|<frac|sin x|x>|)><rsup|2><frac|1|1+cos x>→<frac|1|2>.
</equation*>

Per la tangente basta scrivere <math|tan x/x=(sin x/x)/cos x>, che tende a 1. Per le inverse conviene cambiare variabile. Se poniamo <math|y=arcsin x>, allora <math|x=sin y>, e per la continuità dell'inversa <math|y→0> quando <math|x→0>. Il quoziente <math|arcsin x/x> diventa così <math|y/sin y>, che tende a 1. Allo stesso modo, con <math|y=arctan x>, il quoziente diventa <math|y/tan y→1>. Riassumendo,

<\equation*>
<frac|tan x|x>→1,<space|1em><frac|arcsin x|x>→1,<space|1em><frac|arctan x|x>→1<space|1em>(x→0).
</equation*>

<section|Dal numero e ai limiti di logaritmo ed esponenziale>

Sappiamo che <math|(1+1/n)<rsup|n>→e> quando <math|n> percorre gli interi. Viene la tentazione di scrivere subito lo stesso limite con una variabile reale <math|x>, ma non è lecito senza un argomento, perché dobbiamo controllare anche i punti che stanno fra due interi consecutivi.

<subsection|Fra due interi consecutivi>

Guardiamo prima che cosa succede per <math|3≤x‹4>. La base <math|1+1/x> sta fra <math|1+1/4> e <math|1+1/3>, e l'esponente sta fra 3 e 4. Poiché le basi sono maggiori di 1, diminuire sia la base sia l'esponente rende la potenza più piccola, e aumentarli entrambi la rende più grande:

<\equation*>
<around*|(|1+<frac|1|4>|)><rsup|3>≤<around*|(|1+<frac|1|x>|)><rsup|x>≤<around*|(|1+<frac|1|3>|)><rsup|4>.
</equation*>

Lo stesso confronto, per <math|x∈[n,n+1)> con <math|n≥1>, dà

<\equation*>
<around*|(|1+<frac|1|n+1>|)><rsup|n>≤<around*|(|1+<frac|1|x>|)><rsup|x>≤<around*|(|1+<frac|1|n>|)><rsup|n+1>.
</equation*>

Entrambi gli estremi tendono a <math|e>. Quello destro è <math|e<rsub|n>(1+1/n)>, e quello sinistro è <math|e<rsub|n+1>/(1+1/(n+1))>.

Gli estremi però sono costanti su ciascun intervallo <math|[n,n+1)>, come i gradini di una scala, e ci serve un modo per passare dalle successioni alle funzioni. Se una funzione vale <math|b<rsub|n>> su ciascun intervallo <math|[n,n+1)> e <math|b<rsub|n>→e>, allora la funzione tende a <math|e> per <math|x→+∞>. Dato <math|ε›0>, infatti, tutti i gradini da un certo intero in poi rispettano la tolleranza. Lo chiamiamo <strong|lemma dei gradini>. Applicandolo ai due estremi e usando i carabinieri otteniamo

<\equation*>
lim<rsub|x→+∞><around*|(|1+<frac|1|x>|)><rsup|x>=e.
</equation*>

<figura|@IMG(gradini,0.90)|I due confronti sono costanti su ciascun intervallo unitario. Entrambi tendono a <math|e> e controllano la funzione anche fra un intero e il successivo.>

<subsection|L'altro infinito e il passaggio al logaritmo>

Per <math|x→-∞> poniamo <math|y=-x>, che tende a <math|+∞>. Per <math|y›1> un po' di algebra riporta al caso precedente:

<\equation*>
<around*|(|1-<frac|1|y>|)><rsup|-y>=<around*|(|1+<frac|1|y-1>|)><rsup|y-1><around*|(|1+<frac|1|y-1>|)>→e.
</equation*>

Con il cambio <math|t=1/x> i due lati si riuniscono in un unico limite, <math|(1+t)<rsup|1/t>→e> per <math|t→0>. Vicino a zero la base è positiva, e possiamo applicare il logaritmo, che sappiamo essere continuo in <math|e>:

<\equation*>
<frac|log(1+t)|t>=log((1+t)<rsup|1/t>)→log e=1.
</equation*>

Per l'esponenziale cambiamo ancora variabile, ponendo <math|t=e<rsup|u>-1>. Quando <math|u→0> anche <math|t→0>, e per <math|u≠0> vale <math|t≠0>. Il rapporto appena studiato diventa <math|u/(e<rsup|u>-1)>, che quindi tende a 1, e passando al reciproco otteniamo il limite dell'esponenziale.

<\concetto|Limiti notevoli di logaritmo ed esponenziale>
Per <math|x→0>,

<\equation*>
<frac|log(1+x)|x>→1,<space|2em><frac|e<rsup|x>-1|x>→1.
</equation*>

Per ogni base <math|a›0> vale inoltre <math|(a<rsup|x>-1)/x→log a>.
</concetto>

L'ultima formula si ottiene scrivendo <math|a<rsup|x>=e<rsup|x log a>> e moltiplicando il limite dell'esponenziale per <math|log a>. Il caso <math|a=1> va trattato a parte, per non dividere per <math|log a=0>, ma è banale, perché il quoziente è sempre nullo.

<subsection|Un'applicazione: potenze e logaritmi vicino a zero>

Il lemma dei gradini permette anche di portare la gerarchia degli infiniti alla variabile reale. Su <math|[n,n+1)> vale per esempio <math|3<rsup|x>/x<rsup|m>≥3<rsup|n>/(n+1)<rsup|m>>, che tende a <math|+∞> per ogni intero <math|m≥1>, e per un esponente reale positivo basta maggiorarlo con un intero.

Questo risultato dice qualcosa anche vicino a zero. Ponendo <math|z=-log x>, che tende a <math|+∞> quando <math|x→0<rsup|+>>, otteniamo

<\equation*>
x log x=-<frac|z|e<rsup|z>>→0<space|1em>(x→0<rsup|+>).
</equation*>

Più in generale <math|x<rsup|a>\|log x\|<rsup|b>→0> per <math|a,b›0>, perché lo stesso cambio produce <math|z<rsup|b>/e<rsup|az>>, e l'esponenziale vince sulla potenza.

<section|Usare un limite notevole: argomento, dominio e scala>

Per usare bene un limite notevole bisogna riconoscerlo con esattamente lo stesso argomento. Calcoliamo <math|lim<rsub|x→0>(e<rsup|3x>-1)/sin x>. Nell'esponenziale l'argomento è <math|3x>, quindi vogliamo che anche al denominatore compaia <math|3x>, e lo facciamo comparire moltiplicando e dividendo:

<\equation*>
<frac|e<rsup|3x>-1|sin x>=<frac|e<rsup|3x>-1|3x>·3·<frac|x|sin x>→1·3·1=3.
</equation*>

Tutti i denominatori sono diversi da zero in un intorno bucato abbastanza piccolo di 0. Il primo fattore tende a 1 grazie al cambio <math|u=3x→0>, e il terzo è il reciproco del limite del seno.

Ogni cambio di variabile richiede di controllare dove va a finire il nuovo argomento. In <math|sin(cos x)/cos x>, per <math|x→0>, l'argomento <math|cos x> tende a 1 e non a 0, quindi il limite notevole del seno non c'entra. Basta invece la continuità nel punto 1, e il limite vale <math|sin 1>.

<subsection|Quando si possono comporre due limiti?>

Dietro questi passaggi c'è una regola precisa. Se <math|u(x)→a> e <math|g(y)→L> per <math|y→a>, possiamo concludere che <math|g(u(x))→L> purché <math|u(x)> stia nel dominio di <math|g> e resti diverso da <math|a> vicino al punto. Se invece <math|u(x)> può essere uguale ad <math|a>, serve che <math|g> sia definita e continua in <math|a>. Il motivo è che il limite di <math|g> guarda soltanto un intorno bucato, e quindi non dice nulla sul valore <math|g(a)>.

<subsection|Il logaritmo del coseno e una potenza variabile>

Il prossimo esempio mostra che il coseno, vicino a zero, si allontana da 1 come <math|x<rsup|2>>. Facciamo comparire i due limiti notevoli che conosciamo:

<\equation*>
<frac|log(cos x)|x<rsup|2>>=<frac|log(1+(cos x-1))|cos x-1>·<frac|cos x-1|x<rsup|2>>→1·<around*|(|-<frac|1|2>|)>=-<frac|1|2>.
</equation*>

Tutti i passaggi sono leciti. Vicino a zero <math|cos x›0>, quindi il logaritmo è definito, e per <math|0‹\|x\|‹2π> vale <math|cos x≠1>, quindi possiamo dividere per <math|cos x-1>. Il segno meno viene da <math|cos x-1>, che è negativo, mentre il limite di <math|(1-cos x)/x<rsup|2>> è positivo.

Lo stesso calcolo risolve una <strong|potenza con base ed esponente variabili>, come <math|(cos x)<rsup|1/sin<rsup|2>x>>. In questi casi conviene scrivere <math|A<rsup|B>=exp(B log A)>, che vale per <math|A›0>, e studiare l'esponente:

<\equation*>
<frac|log(cos x)|sin<rsup|2>x>=<frac|log(cos x)|x<rsup|2>>·<around*|(|<frac|x|sin x>|)><rsup|2>→-<frac|1|2>.
</equation*>

Per la continuità dell'esponenziale concludiamo che <math|(cos x)<rsup|1/sin<rsup|2>x>→e<rsup|-1/2>>. L'espressione è definita vicino a zero, perché lì <math|cos x›0> e <math|sin x≠0> per <math|x≠0>.

<section|Sottosuccessioni e limiti che non esistono>

Per dimostrare che un limite esiste abbiamo molti strumenti, ma come si dimostra che non esiste? L'idea è guardare la successione solo lungo una parte dei suoi indici. Una <strong|sottosuccessione> si ottiene scegliendo indici naturali strettamente crescenti <math|n<rsub|k>> e considerando i termini <math|a<rsub|n<rsub|k>>>, nell'ordine originale. Prendere solo gli indici pari, solo i dispari o solo i quadrati sono tre esempi. Per induzione si vede che <math|n<rsub|k>≥k>, quindi gli indici scelti tendono a <math|+∞>.

Se <math|a<rsub|n>→ℓ>, finito o infinito, ogni sottosuccessione tende allo stesso <math|ℓ>. Ogni controllo valido per <math|n≥N>, infatti, vale anche per <math|a<rsub|n<rsub|k>>> quando <math|k≥N>. Il ragionamento funziona anche se chiediamo soltanto che <math|n<rsub|k>→+∞>, senza pretendere che gli indici siano crescenti.

<figura|@IMG(sottosucc,0.90)|Selezionando gli indici pari di <math|(-1)<rsup|n>> isoliamo i termini uguali a 1. La sottosuccessione dispari isola invece <math|-1>.>

Basta quindi trovare due sottosuccessioni con limiti diversi per concludere che la successione non ha limite. Per esempio <math|n<rsup|3>+(-1)<rsup|n>n<rsup|5>> tende a <math|+∞> lungo i pari e a <math|-∞> lungo i dispari. Però non basta vedere un segno alterno nella formula. In <math|n<rsup|5>+(-1)<rsup|n>n<rsup|3>=n<rsup|5>(1+(-1)<rsup|n>/n<rsup|2>)> la parte alterna è una correzione che tende a zero, e la successione tende a <math|+∞>.

<subsection|Da un limite di funzione a una successione di valori>

Lo stesso principio collega funzioni e successioni. Se <math|f(x)→ℓ> per <math|x→x<rsub|0>> e <math|x<rsub|n>→x<rsub|0>>, con <math|x<rsub|n>∈D> e <math|x<rsub|n>≠x<rsub|0>> definitivamente, allora <math|f(x<rsub|n>)→ℓ>. In altre parole, il limite vale anche lungo ogni successione di argomenti ammessi che si avvicina al punto. Nel caso finito, dato <math|ε›0>, il limite della funzione ci dà un <math|δ>, e la convergenza di <math|x<rsub|n>> porta definitivamente gli argomenti nell'intorno bucato di raggio <math|δ>, dove i valori rispettano la tolleranza. Se il punto o i valori sono infiniti si usano le soglie corrispondenti, e per un limite laterale bisogna arrivare dal lato giusto.

Possiamo quindi <strong|dimostrare la non esistenza di un limite di funzione> trovando due successioni ammesse che arrivano allo stesso punto ma producono limiti diversi. Per <math|sin x> a <math|+∞>, per esempio, lungo gli argomenti <math|2πn> il seno vale sempre zero, mentre lungo <math|π/2+2πn> vale sempre 1.

Per <math|cos(1/x<rsup|2>)> a <math|0<rsup|+>> scegliamo invece gli argomenti che rendono <math|1/x<rsup|2>> uguale a <math|2πn> o a <math|2πn+π/2>, cioè

<\equation*>
x<rsub|n>=<frac|1|<sqrt|2πn>>,<space|2em>y<rsub|n>=<frac|1|<sqrt|2πn+π/2>><space|1em>(n≥1).
</equation*>

Entrambe le successioni tendono a <math|0<rsup|+>>, ma lungo la prima il coseno vale 1 e lungo la seconda vale zero, quindi il limite non esiste. Se però moltiplichiamo la stessa funzione per <math|x>, otteniamo <math|\|x cos(1/x<rsup|2>)\|≤\|x\|→0>. Un'oscillazione limitata viene spenta da un fattore che tende a zero.

<subsection|Un parametro nell'esponente>

Il passaggio dalle funzioni alle successioni permette anche di usare i limiti notevoli lungo <math|x=1/n>. Per esempio <math|n sin(1/n)→1>. Vediamo un caso con un parametro reale <math|α>, riscrivendo la potenza come esponenziale:

<\equation*>
<around*|(|1+<frac|1|n>|)><rsup|n<rsup|α>>=exp<around*|(|n<rsup|α-1><frac|log(1+1/n)|1/n>|)>.
</equation*>

Il rapporto con il logaritmo tende a 1, quindi tutto dipende da <math|n<rsup|α-1>>. L'esponente tende a zero se <math|α‹1>, a 1 se <math|α=1> e a <math|+∞> se <math|α›1>, e di conseguenza la potenza tende rispettivamente a 1, a <math|e> e a <math|+∞>.

<\verifica|10>
<strong|1.> Scrivi la definizione completa di <math|lim<rsub|x→2<rsup|->>f(x)=+∞>, includendo l'ipotesi sul dominio. Poi dimostra che <math|f(x)=3x+1> è continua in ogni punto.

<strong|2.> Calcola <math|lim<rsub|x→0>tan(5x)/log(1+2x)> e <math|lim<rsub|x→3π/2>cos x/(2x-3π)>. Nel secondo riporta l'argomento vicino a zero prima di scegliere il limite notevole.

<strong|3.> Studia <math|f(x)=x(1+sin x)> e <math|g(x)=x(2+sin x)> per <math|x→+∞>. Non assumere che la presenza del seno renda necessariamente inesistente il limite.
</verifica>
