<chapter|Sottogruppi, gruppi ciclici e permutazioni>

<\inbreve>
Dentro un gruppo si nascondono spesso gruppi più piccoli, che seguono le stesse regole con meno elementi. Alcuni nascono ripetendo all'infinito una sola operazione, come le lancette di un orologio che avanzano sempre dello stesso passo. Studieremo questi sottogruppi, i loro generatori e il numero di passi necessari per tornare al punto di partenza, e infine le permutazioni ci mostreranno un gruppo in cui l'ordine dei fattori cambia il risultato.
</inbreve>

<section|Sottogruppo: quali elementi possiamo tenere?>

Gli interi pari sono una parte degli interi con un comportamento molto ordinato. La somma di due pari è pari, lo zero è pari e l'opposto di un pari è ancora pari, e così i pari formano un gruppo con la stessa somma degli interi.

Con i dispari questo non succede, perché <math|1+3=4> non è dispari. Un sottoinsieme di un gruppo, da solo, non è quindi necessariamente un gruppo.

Un <strong|sottogruppo> <math|H> di un gruppo <math|G> è un sottoinsieme che forma un gruppo con la stessa operazione di <math|G>, e si scrive <math|H≤G>. Il suo neutro è per forza quello di <math|G>. Se infatti <math|h∈H> e <math|e<rsub|H>h=h>, possiamo moltiplicare a destra per l'inverso di <math|h> in <math|G> e otteniamo <math|e<rsub|H>=e>. Anche gli inversi coincidono, perché in <math|G> l'inverso è unico.

Per riconoscere un sottogruppo basta quindi controllare che contenga il neutro, i prodotti dei suoi elementi e i loro inversi. L'associatività non va ricontrollata, perché vale già per tutti gli elementi di <math|G>, e quindi in particolare per quelli di <math|H>.

<\anatomia|Riconoscere un sottogruppo>
Vorremmo riassumere le tre verifiche in una sola condizione, cioè che <math|H> non sia vuoto e che <math|xy<rsup|-1>∈H> per ogni <math|x,y∈H>.

Una condizione così compatta può bastare perché la stessa espressione <math|xy<rsup|-1>>, con argomenti scelti bene, produce prima il neutro, poi gli inversi e infine i prodotti.

Preso un elemento <math|a∈H>, scegliamo <math|x=y=a> e otteniamo <math|aa<rsup|-1>=e∈H>. Ora che abbiamo il neutro, per ogni <math|y∈H> scegliamo <math|x=e> e otteniamo <math|y<rsup|-1>∈H>. Infine, dati <math|x,y∈H>, sappiamo già che <math|y<rsup|-1>∈H>, e applicando la condizione a <math|x> e <math|y<rsup|-1>> otteniamo <math|x(y<rsup|-1>)<rsup|-1>=xy∈H>.

Abbiamo ritrovato tutte le proprietà richieste. Il viceversa è immediato, perché un sottogruppo contiene gli inversi e i prodotti dei suoi elementi, e quindi anche <math|xy<rsup|-1>>.
</anatomia>

Quando l'operazione è la somma il criterio diventa: <math|H≠∅> e <math|x-y∈H> per ogni <math|x,y∈H>. Così, per un intero <math|d>, l'insieme <math|dℤ> dei multipli di <math|d> è un sottogruppo di <math|ℤ>, perché contiene lo zero e la differenza di due multipli, <math|dk-dh=d(k-h)>, è ancora un multiplo.

L'intersezione di due sottogruppi è sempre un sottogruppo, perché contiene il neutro e il controllo su <math|xy<rsup|-1>> riesce in entrambi. Con l'unione, invece, le cose possono andare male. L'insieme <math|2ℤ∪3ℤ> contiene 2 e 3, ma non la loro somma 5, che non è multipla né di 2 né di 3.

<section|Gruppo ciclico: partire da un solo elemento>

In <math|ℤ/12ℤ> partiamo da <math|[3]> e continuiamo a sommarlo a sé stesso:

<\equation*>
[0],<space|0.5em>[3],<space|0.5em>[6],<space|0.5em>[9],<space|0.5em>[0],…
</equation*>

Dopo quattro classi torniamo al punto di partenza, e da lì il percorso si ripete. Le quattro classi raggiunte formano un sottogruppo. Partendo invece da <math|[1]>, con passi di una sola ora, raggiungiamo tutte e dodici le classi.

<figura|@IMG(orologio12)|I passi di 3 raggiungono <math|[0],[3],[6],[9]>; i passi di 4 raggiungono <math|[0],[4],[8]>. I due sottogruppi hanno in comune soltanto <math|[0]>.>

In un gruppo scritto con il prodotto, ripetere l'operazione vuol dire prendere potenze. Poniamo <math|g<rsup|0>=e> e, per gli esponenti negativi, <math|g<rsup|-k>=(g<rsup|-1>)<rsup|k>>. Con queste convenzioni vale <math|g<rsup|r>g<rsup|s>=g<rsup|r+s>> per tutti gli interi <math|r,s>.

<\concetto|Generato e gruppo ciclico>
Il <strong|sottogruppo generato> da <math|g> è

<\equation*>
⟨g⟩=<around|{|g<rsup|k>:k∈ℤ|}>.
</equation*>

Se <math|G=⟨g⟩>, il gruppo si chiama <strong|ciclico> e <math|g> è un suo <strong|generatore>. Con la somma usiamo i multipli <math|kg> al posto delle potenze.
</concetto>

Il generato è davvero un sottogruppo, perché contiene <math|e=g<rsup|0>> e <math|g<rsup|r>(g<rsup|s>)<rsup|-1>=g<rsup|r-s>> è ancora una potenza di <math|g>. È anche abeliano, perché <math|r+s=s+r>, anche quando il gruppo che lo contiene non lo è.

<section|Ordine: dopo quanti passi torniamo al neutro?>

Sommando <math|[3]> modulo 12 siamo tornati a zero per la prima volta dopo quattro passi, e diciamo allora che <math|[3]> ha <strong|ordine 4>. Non va confuso con il numero degli elementi del gruppo, che è 12.

<\concetto|Ordine di un elemento>
In generale, l'<strong|ordine di un elemento> <math|g> è il minimo intero positivo <math|r> con <math|g<rsup|r>=e>, se esiste. Se nessuna potenza positiva torna al neutro, l'ordine è infinito.
</concetto>

Negli interi con la somma, per esempio, 3 ha ordine infinito, perché nessun multiplo positivo di 3 è zero.

In un gruppo finito, al contrario, prima o poi si torna sempre al neutro. La lista <math|e,g,g<rsup|2>,…> non può contenere infiniti elementi diversi, quindi due potenze coincidono, diciamo <math|g<rsup|i>=g<rsup|j>> con <math|i›j>. Moltiplicando per <math|g<rsup|-j>> otteniamo <math|g<rsup|i-j>=e>, con un esponente positivo.

<subsection|Perché tutti i ritorni sono multipli del primo>

Sia <math|r> l'ordine di <math|g>. Dopo <math|2r>, <math|3r> e in generale <math|qr> passi siamo di nuovo al neutro, perché <math|g<rsup|qr>=(g<rsup|r>)<rsup|q>=e>. Vogliamo mostrare che questi sono gli unici ritorni.

Prendiamo un intero <math|k> con <math|g<rsup|k>=e> e dividiamolo per <math|r>, scrivendo <math|k=qr+s> con <math|0≤s‹r>. Allora

<\equation*>
e=g<rsup|k>=(g<rsup|r>)<rsup|q>g<rsup|s>=g<rsup|s>.
</equation*>

Se fosse <math|s›0>, avremmo un ritorno dopo meno di <math|r> passi, contro la definizione di ordine. Quindi <math|s=0> e <math|r∣k>. In breve, <math|g<rsup|k>=e> se e solo se <math|r∣k>.

Con la stessa idea, portando una potenza dall'altra parte, si vede che <math|g<rsup|u>=g<rsup|v>> se e solo se <math|u≡v<pmod|r>>. Il generato contiene quindi esattamente <math|r> elementi distinti, cioè <math|e,g,…,g<rsup|r-1>>. Se l'ordine è infinito, invece, tutte le potenze sono diverse fra loro.

<\attenzione|Precisare l'operazione>
La classe <math|[3]> ha ordine 4 nel gruppo <math|(ℤ/12ℤ,+)>. Con il prodotto non appartiene nemmeno al gruppo delle unità, perché <math|gcd(3,12)=3>. La frase «ordine di <math|[3]>» richiede di sapere in quale gruppo stiamo lavorando.
</attenzione>

<section|Permutazioni: comporre cambiamenti di posizione>

Una <strong|permutazione> di un insieme è una biiezione dell'insieme in sé stesso, cioè un modo di rimescolarne gli elementi. Su <math|<around|{|1,2,3|}>> possiamo, per esempio, mandare 1 in 2, 2 in 3 e 3 in 1. Questa permutazione si scrive <math|σ=(1 2 3)> e si chiama <strong|ciclo>, perché manda ogni elemento nel successivo e l'ultimo di nuovo nel primo.

Gli elementi che non compaiono nella scrittura restano fermi. La permutazione <math|τ=(1 2)>, per esempio, scambia 1 e 2 e lascia 3 dov'è.

Due permutazioni si combinano eseguendole una dopo l'altra, cioè con la <strong|composizione>. Per convenzione <math|στ=σ∘τ> vuol dire applicare prima <math|τ> e poi <math|σ>, quindi si legge da destra verso sinistra, come per le funzioni.

<\guidato|Due ordini, due risultati>
Calcoliamo <math|στ> seguendo un numero alla volta. Il numero 1 va prima in 2 con <math|τ>, e poi <math|σ> lo porta in 3. Il 2 va in 1 e poi in 2, quindi resta fermo. Il 3 resta 3 con <math|τ> e poi va in 1. Quindi <math|στ=(1 3)>.

Per <math|τσ> applichiamo prima <math|σ>. Il numero 1 va in 2 e poi torna in 1, il 2 va in 3 e lì resta, e il 3 va in 1 e poi in 2. Quindi <math|τσ=(2 3)>.

Le due permutazioni sono diverse, e così il gruppo delle permutazioni di tre elementi non è abeliano.
</guidato>

<figura|@IMG(permutazioni)|Seguiamo ciascun filo dall'alto in basso. Nei due disegni cambia l'ordine delle permutazioni e cambiano le destinazioni.>

Tutte le permutazioni di <math|<around|{|1,…,n|}>> formano il <strong|gruppo simmetrico> <math|S<rsub|n>>. Le verifiche sono semplici. La composizione di due biiezioni è una biiezione, la composizione di funzioni è associativa, il neutro è la funzione identità e ogni biiezione ha una funzione inversa. Per il conteggio delle biiezioni del capitolo 2, le permutazioni sono <math|n!>.

Ogni permutazione si può scrivere come prodotto di <strong|cicli disgiunti>. Partiamo da un elemento e seguiamo le sue immagini finché torniamo al punto di partenza, poi ripetiamo da un elemento che non abbiamo ancora visitato. I cicli che otteniamo spostano insiemi di elementi separati, e per questo commutano fra loro.

Questa scrittura rende facile calcolare l'ordine. La permutazione <math|(1 2 3)(4 5)> torna all'identità quando il numero di ripetizioni è insieme un multiplo di 3, per il primo ciclo, e un multiplo di 2, per il secondo, e il primo numero con questa proprietà è 6. In generale l'ordine di una permutazione è il <strong|minimo comune multiplo delle lunghezze dei suoi cicli disgiunti>.

<section|Per proseguire: altre immagini dei sottogruppi>

I gruppi ciclici compaiono anche fra i numeri complessi. Per un intero <math|n≥1>, le <strong|radici <math|n>-esime dell'unità> sono i numeri complessi <math|z> con <math|z<rsup|n>=1>. Per <math|n=4> sono <math|1,i,-1,-i>, dove <math|i<rsup|2>=-1>, e moltiplicare ripetutamente per <math|i> li percorre in ordine sul cerchio, come un orologio con quattro ore. In generale, usando la notazione <math|e<rsup|iθ>=cos θ+i sin θ>, le radici sono <math|e<rsup|2πik/n>> per <math|k=0,…,n-1>, e moltiplicarle vuol dire sommare gli angoli.

Un altro sottogruppo interessante è il <strong|centro> <math|Z(G)>, formato dagli elementi che commutano con tutti gli altri. Contiene il neutro. Se <math|x> e <math|y> commutano con ogni <math|h>, allora <math|(xy)h=x(hy)=h(xy)>, quindi anche <math|xy> sta nel centro. Infine, da <math|xh=hx>, moltiplicando a sinistra e a destra per <math|x<rsup|-1>>, otteniamo <math|hx<rsup|-1>=x<rsup|-1>h>, e anche l'inverso sta nel centro. Un gruppo è abeliano esattamente quando il centro è tutto il gruppo.

Infine, fra i sottogruppi di multipli, l'inclusione <math|dℤ⊆mℤ> equivale a <math|m∣d>, perché basta che <math|d> stesso sia un multiplo di <math|m>. Per <math|d,m›0> vale inoltre <math|dℤ∩mℤ=<math-up|mcm>(d,m)ℤ>, perché gli elementi comuni sono esattamente i multipli comuni.

<subsection|In sintesi>

Un <strong|sottogruppo> è una parte di un gruppo che resta un gruppo con la stessa operazione. Un <strong|generatore> produce, ripetendo l'operazione, tutti gli elementi di un gruppo ciclico, e l'<strong|ordine> conta i passi fino al primo ritorno al neutro. Le <strong|permutazioni> mostrano in concreto che in un gruppo l'ordine dei fattori può contare.

<\verifica|10>
<strong|1.> In <math|(ℤ/12ℤ,+)> elenca il sottogruppo generato da <math|[8]>, trova l'ordine di <math|[8]> e spiega perché il generato è chiuso rispetto alla sottrazione.

<strong|2.> Sia <math|ρ=(1 2 3)(4 5)> in <math|S<rsub|5>>. Trova <math|ρ<rsup|2>>, l'inverso e l'ordine. Giustifica l'ordine osservando separatamente i due cicli.
</verifica>
