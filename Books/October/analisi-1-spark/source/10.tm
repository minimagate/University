<chapter|Limiti di funzioni, continuità e limiti notevoli>

<\inbreve>
Per una successione l'indice avanza fra i naturali: come cambia il limite quando lavoriamo con una funzione? Partiamo da una funzione con un buco, osservando i valori vicini al punto. Arriveremo alla continuità e ai limiti notevoli, un passaggio alla volta.
</inbreve>

<section|Punti di accumulazione e definizione di limite>

La funzione <math|f(x)=(x<rsup|2>-1)/(x-1)> non è definita in 1. Eppure per <math|x≠1> vale <math|f(x)=x+1>: guardando i valori vicini a 1 prevediamo il valore 2. Il limite descrive questa previsione e non richiede che la funzione abbia un valore nel punto.

Per poterci avvicinare a <math|x<rsub|0>> serve che il dominio abbia punti arbitrariamente vicini, diversi da <math|x<rsub|0>>. Si dice allora che <math|x<rsub|0>> è un <strong|punto di accumulazione> di <math|D>. Precisamente, per ogni <math|δ›0> esiste <math|x∈D> con <math|0‹\|x-x<rsub|0>\|≤δ>.

Per esempio, se <math|D=(0,1]∪{2}>, zero è di accumulazione anche se non appartiene al dominio: i punti <math|1/n> gli si avvicinano. Il numero 2 appartiene al dominio, ma è <strong|isolato>: entro distanza <math|1/2> non ci sono altri punti di <math|D>.

<\concetto|Limite finito in un punto>
Siano <math|f:D→ℝ> e <math|x<rsub|0>> un punto di accumulazione di <math|D>. Scriviamo <math|lim<rsub|x→x<rsub|0>>f(x)=ℓ∈ℝ> se, per ogni <math|ε›0>, esiste <math|δ›0> tale che

<\equation*>
x∈D,<space|1em>0‹\|x-x<rsub|0>\|≤δ<space|1em>⇒<space|1em>\|f(x)-ℓ\|≤ε.
</equation*>

La tolleranza <math|ε> riguarda i valori della funzione. La distanza <math|δ> riguarda gli argomenti e può dipendere da <math|ε>.
</concetto>

L'intervallo vicino a <math|x<rsub|0>> è <em|bucato>: esclude il centro. Nell'esempio iniziale <math|\|f(x)-2\|=\|x-1\|> per <math|x≠1>; dato <math|ε›0>, basta <math|δ=ε>. Se decidessimo di assegnare alla funzione il valore 100 in 1, il limite rimarrebbe 2.

<figura|@IMG(epsilon-delta,0.90)|Scelta una striscia orizzontale di larghezza <math|2ε> attorno a <math|ℓ>, cerchiamo una distanza <math|δ> dal centro che trattenga il grafico nella striscia. Il punto centrale non interviene nel limite.>

<subsection|Valori infiniti e avvicinamento da un lato>

Prima di cambiare il modo in cui ci avviciniamo, cambiamo soltanto ciò che chiediamo ai valori. La funzione <math|1/x<rsup|2>> vicino a zero non si avvicina a un reale: supera ogni quota assegnata. Per superare una quota <math|M›0> basta <math|0‹\|x\|≤1/<sqrt|M>>.

In generale, per <math|lim<rsub|x→x<rsub|0>>f(x)=+∞> sostituiamo la conclusione con <math|f(x)≥M>, per ogni soglia <math|M∈ℝ>; per <math|-∞> con <math|f(x)≤M>. La distanza <math|δ›0> dipende ora da <math|M>.

Un <strong|limite destro> usa soltanto <math|x∈D> con <math|x<rsub|0>‹x≤x<rsub|0>+δ>; un <strong|limite sinistro> soltanto <math|x<rsub|0>-δ≤x‹x<rsub|0>>. Serve accumulazione dal lato considerato.

Per <math|f(x)=1/x>, per esempio, i valori tendono a <math|+∞> da destra e a <math|-∞> da sinistra. I due limiti non coincidono, quindi non esiste un limite bilatero.

Se entrambi i lati sono presenti, il limite bilatero esiste se e solo se i due limiti laterali esistono e coincidono: due controlli laterali si combinano prendendo il minimo dei rispettivi <math|δ>.

Il lato dell'argomento è diverso dal lato di arrivo dei valori. Per esempio <math|lim<rsub|x→0<rsup|->>x<rsup|2>=0<rsup|+>>: <math|x> arriva da sinistra, ma i quadrati sono positivi.

La notazione <math|ℓ<rsup|+>> richiede <math|ℓ‹f(x)≤ℓ+ε> vicino al punto; <math|ℓ<rsup|->> richiede <math|ℓ-ε≤f(x)‹ℓ>.

<subsection|Quando l'argomento va all'infinito>

Per <math|x→+∞> il dominio deve essere illimitato superiormente. La condizione sugli argomenti diventa <math|x∈D>, <math|x≥K>. Per esempio

<\equation*>
lim<rsub|x→+∞>f(x)=ℓ∈ℝ<space|1em>⇔<space|1em>∀ε›0<space|1em>∃K∈ℝ<space|1em>∀x∈D,<space|1em>x≥K⇒\|f(x)-ℓ\|≤ε.
</equation*>

Per un limite infinito sostituiamo di nuovo il controllo dei valori con <math|f(x)≥M> o <math|f(x)≤M>, per ogni <math|M>.

Per <math|x→-∞> chiediamo un dominio illimitato inferiormente e usiamo <math|x≤K>. Tutte queste definizioni ammettono gli stessi quattro esiti: limite reale, <math|+∞>, <math|-∞>, oppure nessun limite.

Il cambio <math|y=-x> riporta un argomento che tende a <math|-∞> a uno che tende a <math|+∞>.

Per esempio <math|<sqrt|x<rsup|2>+7x+2>+x> diventa <math|<sqrt|y<rsup|2>-7y+2>-y>: è lo stesso calcolo dell'esercizio 9.2, ora con variabile reale. La razionalizzazione usa <math|<sqrt|x<rsup|2>>=\|x\|=-x> per <math|x‹0>, e dà ancora il limite <math|-7/2>.

<section|Continuità e composizione>

La <strong|continuità> chiede che la previsione data dai valori vicini coincida con il valore effettivo. Ora è necessario <math|x<rsub|0>∈D>.

<\concetto|Continuità in un punto>
La funzione <math|f:D→ℝ> è continua in <math|x<rsub|0>∈D> se, per ogni <math|ε›0>, esiste <math|δ›0> tale che

<\equation*>
x∈D,<space|1em>\|x-x<rsub|0>\|≤δ<space|1em>⇒<space|1em>\|f(x)-f(x<rsub|0>)\|≤ε.
</equation*>

Se il punto è di accumulazione, equivale a <math|lim<rsub|x→x<rsub|0>>f(x)=f(x<rsub|0>)>. Un punto isolato soddisfa automaticamente la definizione: possiamo scegliere <math|δ> così piccolo che l'unico argomento ammesso sia il centro stesso.
</concetto>

Confronto, carabinieri e algebra dei limiti valgono anche per le funzioni: nelle prove si sostituisce «oltre un certo indice» con «abbastanza vicino al punto» oppure «abbastanza avanti sulla semiretta». Le somme e i prodotti di funzioni continue sono quindi continui; i quozienti lo sono dove il denominatore non si annulla.

<subsection|La composta: chiedere la precisione nel giusto ordine>

Anche la <strong|composta di funzioni continue> è continua. Per capire il ragionamento, consideriamo <math|f(x)=x+1> e <math|g(y)=y<rsup|2>> vicino a <math|x=0>. La prima funzione porta <math|x> vicino a 1; la seconda deve portare quel valore vicino a 1.

La domanda da fare prima è: quanto deve essere vicino <math|y> a 1 perché <math|y<rsup|2>> abbia la precisione richiesta? Dopo aver trovato questa distanza, chiediamo a <math|f> di rispettarla. Le scelte si fanno dall'uscita finale verso l'entrata iniziale.

Facciamo una richiesta concreta: vogliamo <math|\|y<rsup|2>-1\|≤1/10>. Se chiediamo prima <math|\|y-1\|≤1>, abbiamo <math|0≤y≤2> e quindi <math|\|y+1\|≤3>. La fattorizzazione dà

<\equation*>
\|y<rsup|2>-1\|=\|y-1\|\|y+1\|≤3\|y-1\|.
</equation*>

Basta dunque chiedere <math|\|y-1\|≤1/30>. Per ottenere questa precisione con <math|y=f(x)=x+1>, basta <math|\|x\|≤1/30>. Abbiamo trovato la distanza iniziale risalendo dai due controlli richiesti.

In generale supponiamo <math|f> continua in <math|x<rsub|0>> e <math|g> continua in <math|y<rsub|0>=f(x<rsub|0>)>. I valori di <math|f> devono appartenere al dominio di <math|g>. Dato <math|ε›0>, la continuità della funzione esterna fornisce una distanza <math|η›0> tale che

<\equation*>
\|y-y<rsub|0>\|≤η⇒\|g(y)-g(y<rsub|0>)\|≤ε.
</equation*>

Ora usiamo la continuità di <math|f> con la precisione <math|η>. Otteniamo <math|δ›0> tale che

<\equation*>
\|x-x<rsub|0>\|≤δ⇒\|f(x)-y<rsub|0>\|≤η.
</equation*>

Ponendo <math|y=f(x)> nella prima implicazione troviamo il controllo finale <math|≤ε>.

<subsection|Perché l'esponenziale è continuo>

Giustifichiamo la <strong|continuità dell'esponenziale> senza usare derivate. Per <math|a›1> sappiamo già che <math|a<rsup|1/n>→1>.

Se <math|0≤h≤1/n>, la monotonia dà <math|0≤a<rsup|h>-1≤a<rsup|1/n>-1>.

Se <math|-1/n≤h≤0>, poniamo <math|t=-h> e osserviamo

<\equation*>
0≤1-a<rsup|h>=1-a<rsup|-t>=<frac|a<rsup|t>-1|a<rsup|t>>≤a<rsup|1/n>-1.
</equation*>

Fissato <math|ε›0>, scegliamo <math|n> tanto grande che l'ultima quantità sia <math|≤ε/a<rsup|x<rsub|0>>>. Con <math|δ=1/n> otteniamo

<\equation*>
\|a<rsup|x<rsub|0>+h>-a<rsup|x<rsub|0>>\|=a<rsup|x<rsub|0>>\|a<rsup|h>-1\|≤ε.
</equation*>

Per <math|0‹a‹1> usiamo <math|a<rsup|x>=1/(1/a)<rsup|x>>; per <math|a=1> la funzione è costante. Abbiamo usato le proprietà delle potenze assunte nel capitolo 5; ora ne abbiamo dimostrato la continuità.

<subsection|La continuità dell'inversa: il caso del logaritmo>

Anche le inverse delle funzioni continue strettamente monotone fra intervalli sono continue. L'idea è racchiudere l'argomento dell'inversa fra due valori della funzione originaria.

Per il logaritmo, dato <math|y<rsub|0>=log x<rsub|0>> e <math|ε›0>, abbiamo

<\equation*>
e<rsup|y<rsub|0>-ε>‹x<rsub|0>‹e<rsup|y<rsub|0>+ε>.
</equation*>

Prendiamo <math|δ›0> più piccolo delle due distanze da <math|x<rsub|0>> agli estremi. Se <math|\|x-x<rsub|0>\|≤δ>, la monotonia impone <math|y<rsub|0>-ε‹log x‹y<rsub|0>+ε>. Questo dimostra la continuità di <math|log> su <math|(0,+∞)>.

<section|Il limite del seno e i limiti notevoli trigonometrici>

Confrontare <math|sin x> con <math|x> ha senso vicino a zero. Gli angoli devono essere in radianti: è questa unità che fa coincidere, sulla circonferenza unitaria, angolo e lunghezza dell'arco.

Per <math|0‹x‹π/2> la geometria dà

<\equation*>
sin x≤x≤tan x.
</equation*>

La prima disuguaglianza si legge confrontando la corda che unisce i punti di angoli <math|-x> e <math|x>, lunga <math|2 sin x>, con l'arco, lungo <math|2x>.

Per la seconda, il settore fra gli angoli zero e <math|x>, di area <math|x/2>, è contenuto nel triangolo formato dal raggio orizzontale e dalla tangente alla circonferenza in <math|(1,0)>; il triangolo ha area <math|tan x/2>.

<figura|@IMG(seno-x-tan,0.90)|La corda e l'arco danno <math|sin x≤x>. Il settore e il triangolo esterno danno <math|x≤tan x>. Sono confronti geometrici, precedenti alle derivate.>

Prima di usarlo nei carabinieri, giustifichiamo che <math|cos x→1>. Dalla prima disuguaglianza e dalla disparità del seno abbiamo <math|\|sin h\|≤\|h\|> vicino a zero, quindi <math|sin h→0>.

Poi l'identità <math|1-cos h=2 sin<rsup|2>(h/2)> dà <math|0≤1-cos h≤h<rsup|2>/2→0>.

Le formule di addizione mostrano poi la continuità di seno e coseno in qualsiasi punto: per esempio

<\equation*>
sin(a+h)-sin a=sin a(cos h-1)+cos a sin h→0.
</equation*>

Ora la stessa prova per confronto degli estremi usata per il logaritmo dà la continuità delle inverse trigonometriche sui loro intervalli; agli estremi del dominio si usa un solo lato.

Torniamo al confronto geometrico. Dividendo per <math|x›0> e usando <math|tan x=sin x/cos x>, otteniamo

<\equation*>
cos x≤<frac|sin x|x>≤1.
</equation*>

I carabinieri danno il limite destro 1; il quoziente è pari, quindi vale anche a sinistra.

<\concetto|Limite fondamentale del seno>
Con gli angoli in radianti,

<\equation*>
lim<rsub|x→0><frac|sin x|x>=1.
</equation*>

Il seno e il suo argomento hanno lo stesso comportamento al primo ordine vicino a zero. Non abbiamo usato né derivate né de L'Hôpital.
</concetto>

<subsection|Dal seno al coseno, alla tangente e alle inverse>

Gli altri limiti trigonometrici si ricavano da questo. L'identità <math|(1-cos x)(1+cos x)=sin<rsup|2>x> dà

<\equation*>
<frac|1-cos x|x<rsup|2>>=<around*|(|<frac|sin x|x>|)><rsup|2><frac|1|1+cos x>→<frac|1|2>.
</equation*>

Inoltre <math|tan x/x=(sin x/x)/cos x→1>.

Per <math|arcsin x/x> poniamo <math|y=arcsin x>: per la continuità dell'inversa <math|y→0>, <math|x=sin y>, e il quoziente diventa <math|y/sin y→1>.

Con <math|y=arctan x> otteniamo <math|y/tan y→1>. In sintesi,

<\equation*>
<frac|tan x|x>→1,<space|1em><frac|arcsin x|x>→1,<space|1em><frac|arctan x|x>→1<space|1em>(x→0).
</equation*>

<section|Dal numero e ai limiti di logaritmo ed esponenziale>

Sappiamo che <math|(1+1/n)<rsup|n>→e> quando <math|n> è intero. Per usare un argomento reale non basta sostituire una lettera: dobbiamo controllare anche i punti fra due interi consecutivi.

<subsection|Fra due interi consecutivi>

Consideriamo prima <math|3≤x‹4>. La base <math|1+1/x> è fra <math|1+1/4> e <math|1+1/3>; l'esponente è fra 3 e 4. Le basi sono maggiori di 1, quindi diminuire sia la base sia l'esponente dà un valore più piccolo; aumentarli dà un valore più grande:

<\equation*>
<around*|(|1+<frac|1|4>|)><rsup|3>≤<around*|(|1+<frac|1|x>|)><rsup|x>≤<around*|(|1+<frac|1|3>|)><rsup|4>.
</equation*>

Ripetiamo il confronto per <math|x∈[n,n+1)>, con <math|n≥1>:

<\equation*>
<around*|(|1+<frac|1|n+1>|)><rsup|n>≤<around*|(|1+<frac|1|x>|)><rsup|x>≤<around*|(|1+<frac|1|n>|)><rsup|n+1>.
</equation*>

L'estremo destro è <math|e<rsub|n>(1+1/n)→e>; il sinistro è <math|e<rsub|n+1>/(1+1/(n+1))→e>.

Una funzione che su ciascun intervallo <math|[n,n+1)> vale un termine <math|b<rsub|n>→e> tende a <math|e> per <math|x→+∞>: dato <math|ε>, tutti i gradini da un certo intero in poi rispettano la tolleranza. È il <strong|lemma dei gradini>.

Applicandolo ai due estremi e usando i carabinieri otteniamo

<\equation*>
lim<rsub|x→+∞><around*|(|1+<frac|1|x>|)><rsup|x>=e.
</equation*>

<figura|@IMG(gradini,0.90)|I due confronti sono costanti su ciascun intervallo unitario. Entrambi tendono a <math|e> e controllano la funzione anche fra un intero e il successivo.>

<subsection|L'altro infinito e il passaggio al logaritmo>

Per <math|x→-∞> poniamo <math|y=-x→+∞>. Per <math|y›1>,

<\equation*>
<around*|(|1-<frac|1|y>|)><rsup|-y>=<around*|(|1+<frac|1|y-1>|)><rsup|y-1><around*|(|1+<frac|1|y-1>|)>→e.
</equation*>

Il cambio <math|t=1/x> riunisce i due lati nel limite <math|(1+t)<rsup|1/t>→e> per <math|t→0>. La base è positiva vicino a zero. Applichiamo il logaritmo, già dimostrato continuo in <math|e>:

<\equation*>
<frac|log(1+t)|t>=log((1+t)<rsup|1/t>)→log e=1.
</equation*>

Ora poniamo <math|t=e<rsup|u>-1>. Quando <math|u→0> abbiamo <math|t→0>, e per <math|u≠0> anche <math|t≠0>. Il rapporto appena studiato diventa <math|u/(e<rsup|u>-1)→1>. Passando al reciproco ricaviamo il limite dell'esponenziale.

<\concetto|Limiti notevoli di logaritmo ed esponenziale>
Per <math|x→0>,

<\equation*>
<frac|log(1+x)|x>→1,<space|2em><frac|e<rsup|x>-1|x>→1.
</equation*>

Per ogni base <math|a›0> vale inoltre <math|(a<rsup|x>-1)/x→log a>.
</concetto>

L'ultima formula si ottiene scrivendo <math|a<rsup|x>=e<rsup|x log a>> e moltiplicando il limite dell'esponenziale per <math|log a>. Per <math|a=1> il quoziente è identicamente nullo: lo trattiamo separatamente per non dividere per <math|log a=0>.

<subsection|Un'applicazione: potenze e logaritmi vicino a zero>

Il lemma dei gradini estende anche la gerarchia degli infiniti alla variabile reale. Per esempio, su <math|[n,n+1)> vale <math|3<rsup|x>/x<rsup|m>≥3<rsup|n>/(n+1)<rsup|m>→+∞> per ogni intero <math|m≥1>. Per un esponente positivo reale basta maggiorarlo con un intero.

Così, ponendo <math|z=-log x→+∞>, otteniamo

<\equation*>
x log x=-<frac|z|e<rsup|z>>→0<space|1em>(x→0<rsup|+>).
</equation*>

Più in generale <math|x<rsup|a>\|log x\|<rsup|b>→0> per <math|a,b›0>: il cambio produce <math|z<rsup|b>/e<rsup|az>>, dominato dall'esponenziale.

<section|Usare un limite notevole: argomento, dominio e scala>

Per calcolare <math|lim<rsub|x→0>(e<rsup|3x>-1)/sin x>, vogliamo riconoscere separatamente il comportamento dell'esponenziale e del seno. L'argomento dell'esponenziale è <math|3x>, quindi deve comparire lo stesso <math|3x> nel suo denominatore:

<\equation*>
<frac|e<rsup|3x>-1|sin x>=<frac|e<rsup|3x>-1|3x>·3·<frac|x|sin x>→1·3·1=3.
</equation*>

Tutti i denominatori sono non nulli in un intorno bucato sufficientemente piccolo. Il primo fattore usa il limite con il cambio <math|u=3x→0>; il terzo è il reciproco del limite del seno.

Un cambio di variabile richiede sempre di controllare il nuovo punto di arrivo. Per esempio <math|sin(cos x)/cos x→sin 1> per <math|x→0>: l'argomento <math|cos x> tende a 1, quindi non si applica il limite notevole in zero. Usiamo invece la continuità nel punto 1.

<subsection|Quando si possono comporre due limiti?>

Più precisamente, se <math|u(x)→a> e <math|g(y)→L> per <math|y→a>, possiamo comporre i limiti se <math|u(x)> appartiene al dominio di <math|g> e resta diverso da <math|a> vicino al punto.

Se <math|u(x)=a> può accadere, basta che <math|g> sia definita e continua in <math|a>. La distinzione serve perché il limite bucato di <math|g> non controlla il valore <math|g(a)>.

<subsection|Il logaritmo del coseno e una potenza variabile>

Un altro esempio rivela la scala quadratica del coseno:

<\equation*>
<frac|log(cos x)|x<rsup|2>>=<frac|log(1+(cos x-1))|cos x-1>·<frac|cos x-1|x<rsup|2>>→1·<around*|(|-<frac|1|2>|)>=-<frac|1|2>.
</equation*>

Vicino a zero <math|cos x›0>, quindi il logaritmo è definito; per <math|0‹\|x\|‹2π> vale <math|cos x≠1>, quindi la divisione aggiunta è lecita.

Il segno negativo deriva da <math|cos x-1>, mentre il limite di <math|(1-cos x)/x<rsup|2>> è positivo.

Per una <strong|potenza con base ed esponente variabili>, come <math|(cos x)<rsup|1/sin<rsup|2>x>>, usiamo la scrittura <math|A<rsup|B>=exp(B log A)>, valida per <math|A›0>. Qui l'esponente trasformato è

<\equation*>
<frac|log(cos x)|sin<rsup|2>x>=<frac|log(cos x)|x<rsup|2>>·<around*|(|<frac|x|sin x>|)><rsup|2>→-<frac|1|2>.
</equation*>

La continuità dell'esponenziale dà dunque <math|(cos x)<rsup|1/sin<rsup|2>x>→e<rsup|-1/2>>. Il dominio vicino a zero è garantito da <math|cos x›0> e <math|sin x≠0> per <math|x≠0> abbastanza piccolo.

<section|Sottosuccessioni e limiti che non esistono>

Una <strong|sottosuccessione> mantiene alcuni termini nell'ordine originario. Si scelgono indici naturali strettamente crescenti <math|n<rsub|k>> e si considera <math|a<rsub|n<rsub|k>>>. Pari, dispari e quadrati sono tre scelte possibili. Poiché <math|n<rsub|k>≥k> per induzione, gli indici scelti vanno a <math|+∞>.

Se <math|a<rsub|n>→ℓ>, ogni sottosuccessione tende allo stesso <math|ℓ>, finito o infinito. Infatti ogni controllo valido per <math|n≥N> vale anche per <math|a<rsub|n<rsub|k>>> quando <math|k≥N>. Funziona anche se chiediamo soltanto <math|n<rsub|k>→+∞>, senza monotonia degli indici.

<figura|@IMG(sottosucc,0.90)|Selezionando gli indici pari di <math|(-1)<rsup|n>> isoliamo i termini uguali a 1. La sottosuccessione dispari isola invece <math|-1>.>

Due sottosuccessioni con limiti diversi provano quindi che la successione originale non ha limite. Per esempio <math|n<rsup|3>+(-1)<rsup|n>n<rsup|5>> tende a <math|+∞> sui pari e a <math|-∞> sui dispari.

Non basta invece vedere un segno alterno nella formula: <math|n<rsup|5>+(-1)<rsup|n>n<rsup|3>=n<rsup|5>(1+(-1)<rsup|n>/n<rsup|2>)→+∞>, perché la correzione tende a zero.

<subsection|Da un limite di funzione a una successione di valori>

Un limite di funzione si conserva lungo ogni successione di argomenti ammessi che si avvicini al punto: se <math|f(x)→ℓ> per <math|x→x<rsub|0>> e <math|x<rsub|n>→x<rsub|0>>, con <math|x<rsub|n>∈D> e <math|x<rsub|n>≠x<rsub|0>> definitivamente, allora <math|f(x<rsub|n>)→ℓ>.

Nel caso finito, dato <math|ε>, il limite di funzione fornisce <math|δ>; la convergenza di <math|x<rsub|n>> porta definitivamente gli argomenti nell'intorno bucato di raggio <math|δ>. Da quel momento i valori rispettano <math|ε>.

Per punti o valori infiniti si sostituiscono le distanze con le soglie corrispondenti; per un limite laterale si deve arrivare dal lato corretto.

Possiamo dunque <strong|dimostrare la non esistenza di un limite di funzione> trovando due successioni ammesse che arrivino allo stesso punto e producano limiti diversi. Per <math|sin x> a <math|+∞>, gli argomenti <math|2πn> danno zero e <math|π/2+2πn> danno 1.

Per <math|cos(1/x<rsup|2>)> a <math|0<rsup|+>>, scegliamo invece

<\equation*>
x<rsub|n>=<frac|1|<sqrt|2πn>>,<space|2em>y<rsub|n>=<frac|1|<sqrt|2πn+π/2>><space|1em>(n≥1).
</equation*>

Entrambe tendono a <math|0<rsup|+>>, ma i valori del coseno sono rispettivamente 1 e zero. Il limite non esiste.

Se moltiplichiamo la funzione oscillante per <math|x>, otteniamo invece <math|\|x cos(1/x<rsup|2>)\|≤\|x\|→0>: un'oscillazione limitata può essere annullata da un fattore piccolo.

<subsection|Un parametro nell'esponente>

Lo stesso passaggio dalle funzioni alle successioni permette di usare i limiti notevoli lungo <math|1/n>. Per esempio <math|n sin(1/n)→1>. Con un parametro reale <math|α>, riscriviamo

<\equation*>
<around*|(|1+<frac|1|n>|)><rsup|n<rsup|α>>=exp<around*|(|n<rsup|α-1><frac|log(1+1/n)|1/n>|)>.
</equation*>

Il rapporto logaritmico tende a 1. L'esponente tende quindi a zero se <math|α‹1>, a 1 se <math|α=1>, a <math|+∞> se <math|α›1>.

I limiti della potenza sono rispettivamente 1, <math|e> e <math|+∞>.

<\verifica|10>
<strong|1.> Scrivi la definizione completa di <math|lim<rsub|x→2<rsup|->>f(x)=+∞>, includendo l'ipotesi sul dominio. Poi dimostra che <math|f(x)=3x+1> è continua in ogni punto.

<strong|2.> Calcola <math|lim<rsub|x→0>tan(5x)/log(1+2x)> e <math|lim<rsub|x→3π/2>cos x/(2x-3π)>. Nel secondo riporta l'argomento vicino a zero prima di scegliere il limite notevole.

<strong|3.> Studia <math|f(x)=x(1+sin x)> e <math|g(x)=x(2+sin x)> per <math|x→+∞>. Non assumere che la presenza del seno renda necessariamente inesistente il limite.
</verifica>
