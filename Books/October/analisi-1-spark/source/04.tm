<chapter|Numeri reali, completezza e supremi>

<\inbreve>
Nessuna frazione ha quadrato 2, eppure sulla retta sentiamo che lì, fra 1,4 e 1,5, un numero del genere dovrebbe esserci. Per esserne sicuri non bastano le regole di calcolo e di confronto, che valgono già per le frazioni. Serve una proprietà in più, la completezza, che dice che la retta reale non ha buchi. Da essa nasceranno il supremo e la proprietà archimedea, cioè il primo ponte verso i limiti.
</inbreve>

<section|Campo ordinato: calcoli e confronti>

Gli insiemi numerici si sono allargati man mano che servivano a rispondere a nuove domande:

<\equation*>
ℕ⊆ℤ⊆ℚ⊆ℝ⊆ℂ.
</equation*>

Negli interi possiamo sempre sottrarre, e nei razionali <math|p/q>, con <math|q≠0>, possiamo anche dividere per qualsiasi numero diverso da zero. I reali contengono inoltre numeri come <math|<sqrt|2>>. I complessi, dove esiste un numero <math|i> con <math|i<rsup|2>=-1>, non saranno il nostro ambiente di lavoro.

Invece di costruire <math|ℝ> pezzo per pezzo, lo descriviamo attraverso alcune proprietà di partenza, gli <strong|assiomi>, da cui dedurremo tutto il resto. Le prime riguardano i calcoli. Somma e prodotto sono associative e commutative, hanno come elementi neutri 0 e 1, con <math|0≠1>, ogni numero ha un opposto, ogni numero non nullo ha un inverso e vale la proprietà distributiva <math|a(b+c)=ab+ac>. Un insieme con queste operazioni si chiama <strong|campo>. In un campo la sottrazione non è un'operazione nuova, perché sottrarre significa sommare l'opposto, e allo stesso modo dividere significa moltiplicare per l'inverso.

Le altre proprietà riguardano l'ordine <math|≤>. È <strong|riflessivo>, perché <math|a≤a>, e <strong|antisimmetrico>, perché da <math|a≤b> e <math|b≤a> segue <math|a=b>. È anche <strong|transitivo>, perché da <math|a≤b> e <math|b≤c> segue <math|a≤c>, e infine <strong|totale>, perché due numeri sono sempre confrontabili.

Ordine e calcoli vanno d'accordo. Aggiungendo la stessa quantità ai due membri una disuguaglianza resta vera, e il prodotto di due numeri non negativi è ancora non negativo. Da queste due regole seguono tutte quelle che usiamo abitualmente. Per esempio, se <math|x≤y> allora <math|y-x≥0>, e se anche <math|z≥0> otteniamo <math|z(y-x)≥0>, cioè <math|xz≤yz>. Ripetendo il ragionamento con un numero negativo si vede che il verso si inverte.

Persino il fatto che <math|1›0> si può dedurre. Ogni quadrato è non negativo, perché il quadrato di un numero negativo coincide con quello del suo opposto, che è positivo. In particolare <math|1=1<rsup|2>≥0>, e poiché <math|1≠0> la disuguaglianza è stretta. Ne segue che aggiungere 1 fa sempre crescere un numero, e quindi i naturali costruiti dentro <math|ℝ> sono tutti distinti. Per questo basta l'ordine. Per dimostrare che i naturali superano qualsiasi barriera reale servirà invece la completezza.

<section|La completezza: una proprietà che manca ai razionali>

Tutte le proprietà che abbiamo elencato valgono anche in <math|ℚ>, eppure lì non c'è nessun numero con quadrato 2. Vediamo perché. Supponiamo che una frazione <math|p/q>, ridotta ai minimi termini, abbia quadrato 2. Allora <math|p<rsup|2>=2q<rsup|2>>, quindi <math|p<rsup|2>> è pari, e anche <math|p> deve esserlo, perché il quadrato di un dispari è dispari.

Scriviamo allora <math|p=2k>. Sostituendo otteniamo <math|4k<rsup|2>=2q<rsup|2>>, cioè <math|q<rsup|2>=2k<rsup|2>>, e per lo stesso motivo anche <math|q> è pari. Ma allora <math|p> e <math|q> hanno il fattore comune 2, contro l'ipotesi di aver ridotto la frazione.

Che cosa manca, dunque, ai razionali? Pensiamo a due gruppi di numeri positivi, quelli con quadrato minore di 2 e quelli con quadrato maggiore. Tutti i numeri del primo gruppo stanno a sinistra di tutti quelli del secondo, ma in <math|ℚ> non c'è nessun punto che faccia da confine fra loro. Nei reali vogliamo che un confine del genere esista sempre.

<\concetto|Assioma di completezza dei reali>
Se <math|A,B⊆ℝ> sono non vuoti e <math|a≤b> per ogni <math|a∈A> e ogni <math|b∈B>, esiste <math|c∈ℝ> tale che

<\equation*>
a≤c≤b<space|2em>∀a∈A,<space|1em>∀b∈B.
</equation*>
</concetto>

Il punto <math|c> separa i due insiemi, ma non deve per forza appartenere a uno dei due e non è necessariamente unico. Fra <math|A={0}> e <math|B={2}>, per esempio, va bene qualsiasi punto di <math|[0,2]>. Quando invece i due insiemi si avvicinano fino a toccare lo stesso confine, come nell'esempio della radice di 2, il punto separatore è uno solo.

Un teorema, che non dimostreremo, garantisce che un campo ordinato completo esiste davvero, e anche che è sostanzialmente unico. Due campi di questo tipo si possono infatti mettere in corrispondenza biunivoca rispettando somme, prodotti e ordine.

<section|Maggioranti e massimo: una barriera può restare fuori>

Consideriamo l'intervallo <math|A=(0,1)>. I numeri 1, 2 e 10 sono tutti <strong|maggioranti> di <math|A>, perché ciascuno è maggiore o uguale a ogni elemento dell'insieme. Nessuno di loro però è un massimo, perché nessuno appartiene ad <math|A>. Un <strong|massimo> è infatti un maggiorante che sta dentro l'insieme, e allo stesso modo un <strong|minimo> è un minorante che sta dentro l'insieme.

Se un massimo esiste, è unico. Infatti, se <math|M<rsub|1>> e <math|M<rsub|2>> fossero entrambi massimi, ciascuno sarebbe minore o uguale all'altro, e quindi sarebbero uguali. I maggioranti invece non sono mai unici, perché una barriera si può sempre spostare più in alto.

Un insieme è <strong|limitato superiormente> se ha almeno un maggiorante, <strong|limitato inferiormente> se ha almeno un minorante e <strong|limitato> se li ha entrambi. Nell'ultimo caso possiamo racchiuderlo fra due barriere simmetriche, cioè trovare <math|K≥0> con <math|\|a\|≤K> per ogni <math|a∈A>.

Fra tutti i maggioranti di <math|(0,1)> ce n'è uno speciale, il numero 1, che è il più basso possibile. Ogni numero più piccolo di 1 viene superato da qualche punto dell'intervallo. Questa barriera ottimale ha un nome.

<\concetto|Estremo superiore e inferiore>
Per un insieme non vuoto <math|A⊆ℝ>, il <strong|supremo> <math|sup A> è il più piccolo maggiorante, se l'insieme è limitato superiormente. L'<strong|infimo> <math|inf A> è il più grande minorante, se è limitato inferiormente. La completezza ne garantisce l'esistenza.
</concetto>

Se <math|A> non è limitato superiormente scriviamo <math|sup A=+∞>, e se non è limitato inferiormente scriviamo <math|inf A=-∞>. Sono soltanto convenzioni per dire che non esistono barriere reali, perché <math|±∞> non sono numeri.

Per <math|A=(0,1)> abbiamo quindi <math|sup A=1> e <math|inf A=0>, anche se l'insieme non ha né massimo né minimo. Quando un massimo esiste, invece, coincide con il supremo, e lo stesso vale per minimo e infimo.

<section|Perché il supremo esiste e come riconoscerlo>

Definire il supremo come «il più piccolo dei maggioranti» non basta, perché dobbiamo ancora sapere che quel più piccolo esiste. Qui entra in gioco la completezza. Sia <math|A> non vuoto e limitato superiormente, e sia <math|B> l'insieme di tutti i suoi maggioranti. Anche <math|B> è non vuoto, e per definizione ogni elemento di <math|A> è minore o uguale a ogni elemento di <math|B>. Siamo esattamente nella situazione dell'assioma.

L'assioma ci dà un numero <math|c> con <math|a≤c≤b> per ogni <math|a∈A> e ogni <math|b∈B>. La prima disuguaglianza dice che <math|c> è un maggiorante, quindi appartiene a <math|B>. La seconda dice che <math|c> è minore o uguale a ogni altro maggiorante. Dunque <math|c> è il minimo di <math|B>, cioè il supremo di <math|A>. Per l'infimo basta rovesciare i versi, oppure usare la relazione <math|inf A=-sup(-A)>.

Nella pratica ci serve anche un modo per riconoscere il supremo. Se <math|L=sup A> e lo abbassiamo di una quantità positiva <math|ε>, qualsiasi essa sia, il numero <math|L-ε> non è più un maggiorante, perché <math|L> era il più piccolo. Deve quindi esistere un punto di <math|A> più alto di questa barriera abbassata.

<figura|@IMG(sup-eps)|Tutti i punti restano a sinistra di <math|L>, ma nessuna distanza positiva può separare <math|L> dall'intero insieme.>

Il supremo è caratterizzato esattamente da queste due condizioni:

<\equation*>
∀a∈A,<space|1em>a≤L;<space|2em>∀ε›0∃a∈A,<space|1em>L-ε‹a≤L.
</equation*>

Abbiamo appena visto che il supremo le soddisfa. Viceversa, se un numero <math|L> le soddisfa entrambe, è il supremo. La prima condizione dice che <math|L> è un maggiorante. Se poi esistesse un maggiorante <math|M‹L>, scegliendo <math|ε=L-M> la seconda condizione ci darebbe un punto <math|a›L-ε=M>, e <math|M> non sarebbe più un maggiorante. Quindi nessun maggiorante è più piccolo di <math|L>.

Per l'infimo <math|l> la caratterizzazione è simmetrica. Il numero <math|l> deve essere un minorante, e per ogni <math|ε›0> deve esistere <math|a∈A> con <math|l≤a‹l+ε>.

<section|La proprietà archimedea e il ponte verso i limiti>

Ora possiamo dimostrare un fatto che sembra ovvio, ma che senza la completezza non sapremmo giustificare, cioè che ogni barriera reale è superata da qualche naturale. Supponiamo per assurdo che <math|ℕ> sia limitato superiormente e chiamiamo <math|L> il suo supremo.

Usiamo la caratterizzazione con <math|ε=1/2>. Esiste un naturale <math|n> con <math|n›L-1/2>, e allora <math|n+1›L+1/2›L>. Ma anche <math|n+1> è un naturale, e quindi <math|L> non era un maggiorante di <math|ℕ>, contro quanto avevamo supposto.

Abbiamo così ottenuto la <strong|proprietà archimedea>: per ogni <math|M∈ℝ> esiste un naturale <math|n›M>. La sua conseguenza più utile riguarda i numeri piccoli. Per qualsiasi <math|ε›0> possiamo scegliere <math|n›1/ε>, e allora <math|1/n‹ε>. La completezza diventa così uno strumento per rendere un errore piccolo quanto vogliamo, ed è esattamente ciò che faremo con i limiti.

Una precisazione sull'insieme vuoto. Per il vuoto ogni numero reale è sia maggiorante sia minorante, quindi l'esistenza del supremo che abbiamo dimostrato riguarda soltanto insiemi non vuoti, gli unici che ci serviranno.

<\verifica|4>
<strong|1.> Per <math|A={1-1/n:n≥1}>, determina infimo, supremo, eventuale minimo e massimo. Per il supremo usa la caratterizzazione con <math|ε>.

<strong|2.> Se <math|A> è non vuoto e limitato, dimostra che <math|sup(-A)=-inf A>, dove <math|-A={-a:a∈A}>. Parti dal significato di minorante.
</verifica>
