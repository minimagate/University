<chapter|Sottogruppi, gruppi ciclici e permutazioni>

<\inbreve>
Dentro un gruppo possiamo trovare insiemi più piccoli che seguono le stesse regole. Alcuni si ottengono ripetendo una sola operazione. Studieremo sottogruppi, generatori e ordine, poi useremo le permutazioni per vedere un gruppo in cui scambiare i fattori cambia il risultato.
</inbreve>

<section|Sottogruppo: quali elementi possiamo tenere?>

Gli interi pari sono un sottoinsieme degli interi. Sommandone due otteniamo un pari; lo zero è pari; l'opposto di un pari è pari. Gli interi pari formano quindi un gruppo con la stessa somma degli interi.

Gli interi dispari non funzionano: <math|1+3=4> esce dall'insieme. Un sottoinsieme, da solo, non è necessariamente un gruppo.

Un <strong|sottogruppo> <math|H> di un gruppo <math|G> è un sottoinsieme che forma un gruppo con l'operazione di <math|G>. Scriviamo <math|H≤G>. Il neutro deve coincidere con quello di <math|G>: preso <math|h∈H>, da <math|e<rsub|H>h=h>, moltiplicando a destra per <math|h<rsup|-1>> nel gruppo ambiente otteniamo <math|e<rsub|H>=e>. Gli inversi coincidono per unicità.

Per verificarlo basta controllare che contenga il neutro, i prodotti e gli inversi dei suoi elementi. L'associatività è già valida nel gruppo ambiente e continua a valere quando scegliamo elementi di <math|H>.

<\anatomia|Riconoscere un sottogruppo>
L'obiettivo è riunire le tre verifiche in una sola condizione: <math|H≠∅> e <math|xy<rsup|-1>∈H> per ogni <math|x,y∈H>.

Perché dovrebbe bastare? La stessa espressione può produrre prima il neutro, poi gli inversi, poi i prodotti: scegliamo opportunamente i suoi due argomenti.

Preso <math|a∈H>, scegliamo <math|x=y=a>: otteniamo <math|aa<rsup|-1>=e∈H>. Ora, per <math|y∈H>, scegliamo <math|x=e>: otteniamo <math|y<rsup|-1>∈H>. Infine, per <math|x,y∈H>, sappiamo già che <math|y<rsup|-1>∈H>. Applichiamo la condizione a <math|x> e <math|y<rsup|-1>>: otteniamo <math|x(y<rsup|-1>)<rsup|-1>=xy∈H>.

Abbiamo recuperato tutte le proprietà richieste. Viceversa, ogni sottogruppo soddisfa questa condizione, perché contiene gli inversi e i prodotti.
</anatomia>

Con la somma il criterio diventa: <math|H≠∅> e <math|x-y∈H> per ogni <math|x,y∈H>. Per esempio, per un intero <math|d>, l'insieme <math|dℤ> dei multipli di <math|d> contiene zero e la differenza <math|dk-dh=d(k-h)>. Dunque è un sottogruppo di <math|ℤ>.

L'intersezione di due sottogruppi è un sottogruppo: contiene il neutro e il controllo <math|xy<rsup|-1>> riesce in entrambi. L'unione può fallire: <math|2ℤ∪3ℤ> contiene 2 e 3, ma non la loro somma 5.

<section|Gruppo ciclico: partire da un solo elemento>

In <math|ℤ/12ℤ>, partiamo da <math|[3]> e continuiamo a sommarlo:

<\equation*>
[0],<space|0.5em>[3],<space|0.5em>[6],<space|0.5em>[9],<space|0.5em>[0],…
</equation*>

Raggiungiamo quattro classi, poi il percorso si ripete. Queste classi formano un sottogruppo. Se partiamo invece da <math|[1]>, raggiungiamo tutte le dodici classi.

<figura|@IMG(orologio12)|I passi di 3 raggiungono <math|[0],[3],[6],[9]>; i passi di 4 raggiungono <math|[0],[4],[8]>. I due sottogruppi hanno in comune soltanto <math|[0]>.>

In un gruppo scritto con il prodotto, ripetere l'operazione significa prendere potenze. Poniamo <math|g<rsup|0>=e>, e per esponenti negativi usiamo l'inverso: <math|g<rsup|-k>=(g<rsup|-1>)<rsup|k>>. Vale <math|g<rsup|r>g<rsup|s>=g<rsup|r+s>> per interi <math|r,s>.

<\concetto|Generato e gruppo ciclico>
Il <strong|sottogruppo generato> da <math|g> è

<\equation*>
⟨g⟩=<around|{|g<rsup|k>:k∈ℤ|}>.
</equation*>

Se <math|G=⟨g⟩>, il gruppo si chiama <strong|ciclico> e <math|g> è un suo <strong|generatore>. Con la somma usiamo i multipli <math|kg> al posto delle potenze.
</concetto>

È davvero un sottogruppo: contiene <math|e=g<rsup|0>> e <math|g<rsup|r>(g<rsup|s>)<rsup|-1>=g<rsup|r-s>> è ancora una potenza. È anche abeliano, perché <math|r+s=s+r>. Il gruppo ambiente può invece essere non abeliano.

<section|Ordine: dopo quanti passi torniamo al neutro?>

Per <math|[3]> nella somma modulo 12, il primo ritorno a zero avviene dopo quattro passi. Diciamo che <math|[3]> ha <strong|ordine 4>. Non confondiamolo con il numero di elementi del gruppo ambiente, che è 12.

<\concetto|Ordine di un elemento>
In generale, l'<strong|ordine di un elemento> <math|g> è il minimo intero positivo <math|r> con <math|g<rsup|r>=e>, se esiste. Se nessuna potenza positiva torna al neutro, l'ordine è infinito.
</concetto>

Negli interi con la somma, per esempio, 3 ha ordine infinito: nessun multiplo positivo di 3 è zero.

In un gruppo finito un ritorno deve esistere. La lista <math|e,g,g<rsup|2>,…> non può contenere per sempre elementi distinti. Due potenze coincidono: <math|g<rsup|i>=g<rsup|j>> con <math|i›j>. Moltiplicando per <math|g<rsup|-j>> otteniamo <math|g<rsup|i-j>=e>, con esponente positivo.

<new-page>

<subsection|Perché tutti i ritorni sono multipli del primo>

Sia <math|r> l'ordine di <math|g>. I multipli di <math|r> danno il neutro, perché <math|g<rsup|qr>=(g<rsup|r>)<rsup|q>=e>.

Per escludere altri ritorni, prendiamo un intero <math|k> con <math|g<rsup|k>=e> e dividiamolo per <math|r>: <math|k=qr+s>, con <math|0≤s‹r>. Allora

<\equation*>
e=g<rsup|k>=(g<rsup|r>)<rsup|q>g<rsup|s>=g<rsup|s>.
</equation*>

Se <math|s›0>, avremmo un ritorno positivo più piccolo di <math|r>, contro la sua definizione. Quindi <math|s=0> e <math|r∣k>. Abbiamo dimostrato <math|g<rsup|k>=e⇔r∣k>.

La stessa idea mostra che <math|g<rsup|u>=g<rsup|v>⇔u≡v<pmod|r>>: basta portare una potenza dall'altra parte usando l'inverso. Il generato contiene quindi esattamente <math|r> elementi distinti, <math|e,g,…,g<rsup|r-1>>. Se l'ordine è infinito, tutte le potenze sono invece distinte.

<\attenzione|Precisare l'operazione>
La classe <math|[3]> ha ordine 4 nel gruppo <math|(ℤ/12ℤ,+)>. Con il prodotto non appartiene nemmeno al gruppo delle unità, perché <math|gcd(3,12)=3>. La frase «ordine di <math|[3]>» richiede di sapere in quale gruppo stiamo lavorando.
</attenzione>

<section|Permutazioni: comporre cambiamenti di posizione>

Una <strong|permutazione> di un insieme è una biezione dell'insieme in sé. Su <math|<around|{|1,2,3|}>> possiamo, per esempio, mandare 1 in 2, 2 in 3 e 3 in 1. Scriviamo questa permutazione come <math|σ=(1 2 3)>: è un <strong|ciclo>.

Un ciclo manda ogni elemento nel successivo e l'ultimo nel primo. Gli elementi non scritti restano fermi. La permutazione <math|τ=(1 2)> scambia 1 e 2 e lascia fermo 3.

L'operazione fra permutazioni è la <strong|composizione>. Per convenzione <math|στ=σ∘τ> significa applicare prima <math|τ> e poi <math|σ>. Leggiamo il fattore di destra per primo.

<\guidato|Due ordini, due risultati>
Calcoliamo <math|στ>. Il numero 1 passa prima a 2 e poi a 3; il 2 passa a 1 e poi a 2; il 3 rimane 3 e poi passa a 1. Quindi <math|στ=(1 3)>.

Per <math|τσ>, il numero 1 passa a 2 e poi torna a 1; il 2 passa a 3 e resta 3; il 3 passa a 1 e poi a 2. Quindi <math|τσ=(2 3)>.

Le due permutazioni differiscono: il gruppo delle permutazioni di tre elementi non è abeliano.
</guidato>

<figura|@IMG(permutazioni)|Seguiamo ciascun filo dall'alto in basso. Nei due disegni cambia l'ordine delle permutazioni e cambiano le destinazioni.>

Le permutazioni di <math|<around|{|1,…,n|}>> formano il <strong|gruppo simmetrico> <math|S<rsub|n>>. La composizione di biezioni è una biezione; è associativa; il neutro è la funzione identità; ogni biezione ha funzione inversa. Queste sono tutte le verifiche richieste dalla definizione di gruppo. Ci sono <math|n!> permutazioni, per il conteggio delle biezioni del capitolo 2.

Per scrivere una permutazione come prodotto di <strong|cicli disgiunti>, partiamo da un elemento e seguiamo le sue immagini fino al ritorno. Ripetiamo con un elemento non ancora visitato. I cicli così ottenuti agiscono su insiemi separati e commutano.

Per esempio, <math|(1 2 3)(4 5)> torna all'identità quando il numero di ripetizioni è sia multiplo di 3 sia multiplo di 2. Il primo è 6. In generale l'ordine di una permutazione è il <strong|minimo comune multiplo delle lunghezze dei suoi cicli disgiunti>.

<section|Per proseguire: altre immagini dei sottogruppi>

Per un intero <math|n≥1>, le <strong|radici <math|n>-esime dell'unità> sono i numeri complessi <math|z> con <math|z<rsup|n>=1>. Per <math|n=4> sono <math|1,i,-1,-i>, con <math|i<rsup|2>=-1>. Moltiplicare per <math|i> percorre in ordine questi quattro punti sul cerchio. È un gruppo ciclico. In generale, con la notazione trigonometrica <math|e<rsup|iθ>=cos θ+i sin θ>, le radici sono <math|e<rsup|2πik/n>>, per <math|k=0,…,n-1>: il prodotto somma gli angoli.

Il <strong|centro> <math|Z(G)> raccoglie gli elementi che commutano con tutti gli altri. È un sottogruppo: contiene <math|e>; se <math|x,y> commutano con ogni <math|h>, allora <math|(xy)h=x(hy)=h(xy)>; da <math|xh=hx>, moltiplicando a sinistra e a destra per <math|x<rsup|-1>>, otteniamo <math|hx<rsup|-1>=x<rsup|-1>h>. Quindi contiene prodotti e inversi. Un gruppo è abeliano esattamente quando <math|Z(G)=G>.

Per i multipli interi, <math|dℤ⊆mℤ> equivale a <math|m∣d>: basta controllare che <math|d> sia un multiplo di <math|m>. Inoltre, per <math|d,m›0>, <math|dℤ∩mℤ=<math-up|mcm>(d,m)ℤ>, perché gli elementi comuni sono proprio i multipli comuni.

<subsection|In sintesi>

Un <strong|sottogruppo> conserva l'operazione e le sue regole. Un <strong|generatore> produce tutti gli elementi di un gruppo ciclico. L'<strong|ordine> conta i passi fino al primo ritorno al neutro. Le <strong|permutazioni> mostrano concretamente perché in un gruppo l'ordine dei fattori può contare.

<\verifica|10>
<strong|1.> In <math|(ℤ/12ℤ,+)> elenca il sottogruppo generato da <math|[8]>, trova l'ordine di <math|[8]> e spiega perché il generato è chiuso rispetto alla sottrazione.

<strong|2.> Sia <math|ρ=(1 2 3)(4 5)> in <math|S<rsub|5>>. Trova <math|ρ<rsup|2>>, l'inverso e l'ordine. Giustifica l'ordine osservando separatamente i due cicli.
</verifica>
