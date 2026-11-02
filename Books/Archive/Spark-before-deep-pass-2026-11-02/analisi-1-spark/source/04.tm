<chapter|Numeri reali, completezza e supremi>

Tra 1 e 2 cerchiamo un numero il cui quadrato sia 2. Possiamo avvicinarci con frazioni, ma nessuna frazione risolve esattamente il problema. Per l'analisi è essenziale che un'approssimazione possa avere un punto di arrivo dentro l'ambiente in cui lavoriamo. La completezza dei reali fornisce questa garanzia.

<section|Campo ordinato: calcoli e confronti>

Gli insiemi numerici si allargano quando nuove domande lo richiedono: <math|ℕ⊆ℤ⊆ℚ⊆ℝ⊆ℂ>. Gli interi permettono tutte le sottrazioni; i razionali <math|p/q>, con <math|q≠0>, permettono le divisioni per numeri non nulli. I reali includono anche numeri come <math|<sqrt|2>>. I complessi, in cui compare <math|i<rsup|2>=-1>, non saranno il nostro ambiente di lavoro.

Descriviamo <math|ℝ> mediante proprietà, dette <strong|assiomi>. Le operazioni di somma e prodotto sono associative e commutative; hanno neutri 0 e 1, con <math|0≠1>; ogni numero ha un opposto e ogni numero non nullo ha un inverso moltiplicativo. Infine vale <math|a(b+c)=ab+ac>. Questo insieme di proprietà si riassume dicendo che <math|ℝ> è un <strong|campo>. La sottrazione significa sommare l'opposto, la divisione moltiplicare per l'inverso.

L'ordine <math|≤> è riflessivo, antisimmetrico e transitivo; è anche totale, cioè due numeri sono sempre confrontabili. È compatibile con i calcoli: aggiungere la stessa quantità conserva le disuguaglianze e il prodotto di due numeri non negativi è non negativo.

Per esempio, da <math|x≤y> segue <math|y-x≥0>. Se <math|z≥0>, allora <math|z(y-x)≥0>, cioè <math|yz-xz≥0> e quindi <math|xz≤yz>. Moltiplicando per un numero negativo il verso si inverte. Le usuali regole si deducono dunque dagli assiomi.

Anche <math|1›0> si deduce: ogni quadrato è non negativo, perché per un numero negativo si può usare il suo opposto positivo. In particolare <math|1=1<rsup|2>≥0>, e <math|1≠0>. Aggiungere 1 aumenta quindi strettamente un numero: i naturali costruiti dentro <math|ℝ> sono distinti. Per questo fatto basta l'ordine; la completezza servirà per dimostrare che questi naturali superano ogni barriera reale.

<section|La completezza: una proprietà che manca ai razionali>

Somma, prodotto e ordine funzionano anche in <math|ℚ>. Ma supponiamo che una frazione ridotta <math|p/q> abbia quadrato 2. Da <math|p<rsup|2>=2q<rsup|2>> segue che <math|p> è pari: il quadrato di un dispari è dispari. Scriviamo <math|p=2k>. Allora <math|q<rsup|2>=2k<rsup|2>> e anche <math|q> è pari. Contraddizione con la riduzione ai minimi termini. Manca quindi un razionale che risolva il problema.

<\concetto|Assioma di completezza dei reali>
Se <math|A,B⊆ℝ> sono non vuoti e <math|a≤b> per ogni <math|a∈A> e ogni <math|b∈B>, esiste <math|c∈ℝ> tale che

<\equation*>
a≤c≤b<space|2em>∀a∈A,<space|1em>∀b∈B.
</equation*>
</concetto>

Il punto <math|c> separa i due insiemi. Non deve appartenere a uno di essi, né deve essere unico: tra <math|A={0}> e <math|B={2}> ogni punto di <math|[0,2]> va bene. Quando gli insiemi arrivano fino allo stesso confine, invece, il punto può essere unico. Il teorema di esistenza dei reali assicura che questi assiomi si possono soddisfare; l'unicità significa che due campi ordinati completi si traducono uno nell'altro mediante una biezione che preserva somme, prodotti e ordine. Non ne svolgeremo qui la costruzione.

<section|Maggioranti e massimo: una barriera può restare fuori>

Per <math|A=(0,1)>, i numeri 1, 2 e 10 sono tutti <strong|maggioranti>: ciascuno è maggiore o uguale a ogni elemento di <math|A>. Nessuno è però un massimo, perché non appartiene ad <math|A>. Un <strong|massimo> è precisamente un maggiorante che appartiene all'insieme. Il <strong|minimo> è, simmetricamente, un minorante che appartiene all'insieme.

Un massimo, quando esiste, è unico. Se <math|M<rsub|1>> e <math|M<rsub|2>> fossero entrambi massimi, avremmo <math|M<rsub|1>≤M<rsub|2>> e <math|M<rsub|2>≤M<rsub|1>>, dunque sarebbero uguali. I maggioranti, invece, non sono unici: una barriera può essere spostata più in alto.

Un insieme è <strong|limitato superiormente> se ha un maggiorante; <strong|limitato inferiormente> se ha un minorante; <strong|limitato> se ha entrambi. Equivalentemente, esiste <math|K≥0> con <math|\|a\|≤K> per ogni <math|a∈A>: possiamo racchiuderlo fra due barriere simmetriche <math|-K> e <math|K>.

<\concetto|Estremo superiore e inferiore>
Per un insieme non vuoto <math|A⊆ℝ>, il <strong|supremo> <math|sup A> è il più piccolo maggiorante, se l'insieme è limitato superiormente. L'<strong|infimo> <math|inf A> è il più grande minorante, se è limitato inferiormente. La completezza ne garantisce l'esistenza.
</concetto>

Se <math|A> non è limitato superiormente scriviamo <math|sup A=+∞>; se non è limitato inferiormente scriviamo <math|inf A=-∞>. Sono convenzioni per l'assenza di barriere reali: <math|±∞> non sono numeri reali. Per <math|(0,1)> abbiamo <math|sup A=1> e <math|inf A=0>, senza massimo né minimo. Quando un massimo esiste, coincide con il supremo; analogamente per il minimo e l'infimo.

<section|Perché il supremo esiste e come riconoscerlo>

Non basta chiamare il supremo «il minimo dei maggioranti»: dobbiamo sapere che quel minimo esiste. Sia <math|A> non vuoto e limitato superiormente, e sia <math|B> l'insieme di tutti i suoi maggioranti. Anche <math|B> è non vuoto; inoltre <math|a≤b> per ogni <math|a∈A>, <math|b∈B>. È proprio la situazione dell'assioma di completezza.

Otteniamo <math|c> con <math|a≤c≤b> per tutte queste scelte. La prima disuguaglianza dice che <math|c> è un maggiorante, quindi <math|c∈B>. La seconda dice che è minore o uguale a ogni altro maggiorante. Perciò è il minimo di <math|B>, cioè <math|sup A>. L'infimo si ottiene cambiando i versi, oppure usando <math|inf A=-sup(-A)>.

Come distinguiamo il supremo da una barriera troppo alta? Se <math|L=sup A> e abbassiamo <math|L> di un qualsiasi <math|ε›0>, il numero <math|L-ε> non può più essere un maggiorante. Deve quindi esserci un punto di <math|A> sopra quella barriera abbassata.

<figura|@IMG(sup-eps)|Tutti i punti restano a sinistra di <math|L>, ma nessuna distanza positiva può separare <math|L> dall'intero insieme.>

La caratterizzazione completa richiede entrambe le condizioni:

<\equation*>
∀a∈A,<space|1em>a≤L;<space|2em>∀ε›0∃a∈A,<space|1em>L-ε‹a≤L.
</equation*>

Abbiamo spiegato il primo verso. Per il viceversa, se <math|M‹L> fosse un maggiorante, scegliendo <math|ε=L-M›0> la seconda condizione fornirebbe <math|a›L-ε=M>, contraddizione. Quindi nessun maggiorante è più piccolo di <math|L>. Per l'infimo la condizione simmetrica è <math|∀ε›0∃a∈A, l≤a‹l+ε>, insieme alla proprietà di minorante di <math|l>.

<section|La proprietà archimedea e il ponte verso i limiti>

Ogni barriera reale è superata da qualche naturale. Per provarlo supponiamo, per assurdo, che <math|ℕ> sia limitato e poniamo <math|L=sup ℕ>. La caratterizzazione con <math|ε=1/2> fornisce <math|n∈ℕ> tale che <math|n›L-1/2>. Ma allora <math|n+1›L+1/2›L>, mentre <math|n+1> è ancora un naturale. Contraddizione: <math|L> doveva maggiorarli tutti.

Dunque <math|∀M∈ℝ∃n∈ℕ,n›M>. Questa <strong|proprietà archimedea> implica che possiamo rendere <math|1/n> più piccolo di qualsiasi <math|ε›0>: scegliamo <math|n›1/ε>. La completezza è così diventata uno strumento per controllare errori piccoli.

Consideriamo supremi e infimi di insiemi non vuoti. Il vuoto ha tutti i reali come maggioranti e minoranti, quindi non rientra nell'enunciato d'esistenza appena dimostrato. Eventuali convenzioni sugli estremi del vuoto non servono al percorso.

<\verifica|4>
<strong|1.> Per <math|A={1-1/n:n≥1}>, determina infimo, supremo, eventuale minimo e massimo. Per il supremo usa la caratterizzazione con <math|ε>.

<strong|2.> Se <math|A> è non vuoto e limitato, dimostra che <math|sup(-A)=-inf A>, dove <math|-A={-a:a∈A}>. Parti dal significato di minorante.
</verifica>
