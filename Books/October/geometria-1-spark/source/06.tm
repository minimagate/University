<chapter|Dimensione e lemma di scambio>

<\inbreve>
Tutte le basi del piano che abbiamo incontrato avevano due vettori, e viene il sospetto che non sia una coincidenza. Per trasformare il sospetto in un teorema impareremo a modificare una famiglia di vettori togliendone, aggiungendone e soprattutto scambiandone uno alla volta, senza mai perdere ciò che la famiglia sa fare. Il risultato è la dimensione, un numero che appartiene allo spazio e non alla base scelta per descriverlo.
</inbreve>

<section|Estrarre una base e completare una famiglia indipendente>

Nel piano la famiglia <math|(e<rsub|1>,e<rsub|2>,e<rsub|1>+e<rsub|2>)> genera tutto, ma ha un vettore di troppo. Se togliamo <math|e<rsub|1>+e<rsub|2>> non perdiamo nulla, perché gli altri due lo ricostruiscono, e quello che resta è la base canonica. Questo è un esempio di <strong|estrazione di una base> da una famiglia di generatori.

Si può anche partire dal problema opposto, cioè da troppo poco. Il solo vettore <math|e<rsub|1>> è indipendente, ma genera soltanto l'asse orizzontale. Se aggiungiamo <math|e<rsub|2>>, che non sta su quell'asse, otteniamo una base. In questo caso parliamo di <strong|completamento>.

Il completamento funziona perché aggiungere un vettore che sta fuori dallo span non rovina l'indipendenza. Supponiamo che <math|b<rsub|1>,…,b<rsub|r>> siano indipendenti e che <math|v> non stia nel loro span, e prendiamo una relazione

<\equation*>
α<rsub|1>b<rsub|1>+⋯+α<rsub|r>b<rsub|r>+βv=0.
</equation*>

Se fosse <math|β≠0>, potremmo isolare <math|v> e scriverlo come combinazione dei <math|b<rsub|j>>, mentre l'abbiamo scelto fuori dal loro span. Quindi <math|β=0>, e a quel punto l'indipendenza dei <math|b<rsub|j>> annulla anche tutti gli altri coefficienti.

L'estrazione si giustifica in modo altrettanto semplice. Se una famiglia finita genera <math|V> ma è dipendente, il capitolo precedente ci dice che uno dei suoi vettori è superfluo e si può togliere senza cambiare lo span. Ripetiamo l'operazione finché la famiglia diventa indipendente. Poiché a ogni passo i vettori diminuiscono, prima o poi ci fermiamo, e quello che resta è una base. Per lo spazio <math|{0}> la base è la famiglia vuota. Abbiamo così dimostrato che <strong|ogni famiglia finita di generatori contiene una base>.

<section|Lemma di scambio: sostituire senza perdere informazioni>

Ora vogliamo confrontare due basi diverse, e lo strumento giusto è lo scambio. Nella base canonica del piano il vettore <math|w=(2,1)> si scrive <math|w=2e<rsub|1>+e<rsub|2>>. Proviamo a mettere <math|w> al posto di <math|e<rsub|1>>. Non perdiamo nulla, perché dall'uguaglianza precedente ricaviamo <math|e<rsub|1>=(w-e<rsub|2>)/2>, e quindi il vettore tolto si può ancora ricostruire. La nuova coppia <math|(w,e<rsub|2>)> genera dunque il piano. È anche indipendente, perché da <math|αw+βe<rsub|2>=(2α,α+β)=0> segue prima <math|α=0> e poi <math|β=0>.

Facciamo entrare un secondo vettore, <math|z=(1,1)>. La coppia <math|(w,z)> è indipendente, perché le equazioni <math|2α+β=0> e <math|α+β=0> danno <math|α=β=0>. Vogliamo inserire <math|z> senza togliere <math|w>, che è già entrato. Scriviamo allora <math|z> nella base attuale <math|(w,e<rsub|2>)>:

<\equation*>
z=<frac|1|2>w+<frac|1|2>e<rsub|2>.
</equation*>

Il coefficiente di <math|e<rsub|2>> non è nullo, e questo ci permette di ricavare <math|e<rsub|2>=2z-w> e di mettere <math|z> al suo posto. In tutto abbiamo fatto due scambi:

<\equation*>
(e<rsub|1>,e<rsub|2>)<space|1em>→<space|1em>(w,e<rsub|2>)<space|1em>→<space|1em>(w,z).
</equation*>

Nel secondo passo abbiamo tolto il vecchio vettore rimasto e abbiamo lasciato al suo posto quello nuovo già inserito. Quando gli scambi saranno molti, dovremo giustificare proprio questa scelta.

<subsection|Il singolo scambio in generale>

Che cosa ha reso possibile ogni scambio? Il fatto che il vettore da togliere comparisse con un coefficiente non nullo. In generale, siano <math|u<rsub|1>,…,u<rsub|r>> indipendenti e sia

<\equation*>
w=a<rsub|1>u<rsub|1>+⋯+a<rsub|r>u<rsub|r>,<space|2em>a<rsub|1>≠0.
</equation*>

Allora i vettori <math|w,u<rsub|2>,…,u<rsub|r>> sono ancora indipendenti e generano lo stesso spazio dei vecchi. Per lo span basta ricavare il vettore tolto,

<\equation*>
u<rsub|1>=<frac|1|a<rsub|1>>(w-a<rsub|2>u<rsub|2>-⋯-a<rsub|r>u<rsub|r>).
</equation*>

Ogni vettore nuovo è combinazione dei vecchi, e ora sappiamo che ogni vettore vecchio è combinazione dei nuovi, quindi i due span coincidono.

Per l'indipendenza partiamo da una relazione nulla fra i vettori nuovi,

<\equation*>
βw+<big|sum><rsub|j=2><rsup|r>β<rsub|j>u<rsub|j>=0,
</equation*>

e sostituiamo al posto di <math|w> la sua espressione. Otteniamo una relazione fra i vecchi vettori in cui <math|u<rsub|1>> ha coefficiente <math|βa<rsub|1>> e ogni <math|u<rsub|j>> con <math|j≥2> ha coefficiente <math|βa<rsub|j>+β<rsub|j>>. Poiché i vecchi vettori sono indipendenti, tutti questi coefficienti sono nulli. In particolare <math|βa<rsub|1>=0>, e siccome <math|a<rsub|1>≠0> abbiamo <math|β=0>. Ne segue <math|β<rsub|j>=0> per ogni <math|j>, quindi la nuova famiglia è indipendente. Se il coefficiente non nullo si trova in un'altra posizione, il ragionamento è identico e si scambia quel vettore.

<subsection|Più scambi: il lemma di Steinitz>

Ora possiamo fare entrare molti vettori. Partiamo da una base <math|u<rsub|1>,…,u<rsub|n>> di <math|V> e da vettori indipendenti <math|w<rsub|1>,…,w<rsub|m>>, che vogliamo far entrare tutti nella base. Il primo passo è facile. Scriviamo <math|w<rsub|1>> nella base, e poiché <math|w<rsub|1>> non è nullo qualche coefficiente è diverso da zero, il che permette il primo scambio.

Supponiamo di essere arrivati al passo <math|k>, con una base che contiene già <math|w<rsub|1>,…,w<rsub|k-1>> e alcuni dei vettori <math|u> originali. Scriviamo <math|w<rsub|k>> in questa base. Il punto delicato è che <strong|almeno un coefficiente su un <math|u> rimasto deve essere non nullo.> Se così non fosse, <math|w<rsub|k>> sarebbe combinazione soltanto dei <math|w> precedenti, e questo contraddirebbe l'indipendenza dei <math|w>. Possiamo quindi scambiare uno dei <math|u>, senza mai togliere un <math|w> già inserito.

<figura|@IMG(scambio)|Ogni scambio fa entrare un vettore indipendente <math|w> e sostituisce un vecchio vettore <math|u>. La famiglia continua a essere una base.>

Questo procedimento ci dice anche che i <math|w> non possono essere più degli <math|u>. Se fosse <math|m›n>, dopo <math|n> scambi la base sarebbe fatta soltanto dai primi <math|n> vettori <math|w>, e il vettore <math|w<rsub|n+1>> sarebbe loro combinazione, ancora contro l'indipendenza. Abbiamo così dimostrato il <strong|lemma di scambio di Steinitz>. Esso dice che <math|m≤n> e che l'insieme indipendente si completa a una base aggiungendo opportuni vettori della base iniziale.

<section|Dimensione: un numero che non dipende dalla base>

Ora il sospetto iniziale diventa un teorema. Se uno spazio ha due basi finite, con <math|n> e <math|m> vettori, possiamo applicare lo scambio in un senso e nell'altro, ottenendo <math|m≤n> e <math|n≤m>. Quindi <math|m=n>. In uno spazio con una base di <math|n> vettori non può esistere nemmeno una base infinita, perché <math|n+1> dei suoi vettori formerebbero una famiglia indipendente troppo lunga.

<\concetto|Dimensione>
La dimensione <math|dim<rsub|K>V> di uno spazio finitamente generato è il numero di vettori di una sua base. Lo scambio assicura che la scelta della base non cambia questo numero. Lo spazio <math|{0}> ha dimensione zero.
</concetto>

Gli spazi che conosciamo hanno dimensioni facili da leggere. La base canonica mostra che <math|dim<rsub|K>K<rsup|n>=n>, e i monomi <math|1,X,…,X<rsup|d>> mostrano che <math|dim<rsub|K>K<rsub|d>[X]=d+1>. Per le matrici chiamiamo <math|E<rsub|ij>> quella che ha 1 nella casella <math|(i,j)> e zero altrove. Ogni matrice si scrive come <math|A=<big|sum><rsub|i,j>a<rsub|ij>E<rsub|ij>>, e in una combinazione nulla la casella <math|(i,j)> mostra il coefficiente di <math|E<rsub|ij>>, che deve quindi essere zero. Le <math|mn> matrici <math|E<rsub|ij>> formano dunque una base, e <math|dim<rsub|K>M<rsub|m,n>(K)=mn>.

<subsection|La dimensione dipende dal campo>

Come spazio su sé stesso, <math|ℂ> ha la base <math|(1)>, perché ogni numero complesso è un multiplo complesso di 1, e quindi ha dimensione 1. Se però ammettiamo soltanto scalari reali, ogni <math|a+ib> si scrive in un unico modo come combinazione reale di 1 e <math|i>, e la dimensione diventa 2. Allo stesso modo <math|ℂ<rsup|n>> ha dimensione <math|n> su <math|ℂ> e <math|2n> su <math|ℝ>, con la base reale <math|e<rsub|1>,ie<rsub|1>,…,e<rsub|n>,ie<rsub|n>>. Ogni entrata complessa richiede infatti due numeri reali per essere descritta.

<subsection|Le coordinate rispettano le operazioni>

Scelta una base <math|B> di uno spazio di dimensione <math|n>, possiamo associare a ogni vettore le sue coordinate, ottenendo una funzione <math|Φ<rsub|B>:V→K<rsup|n>>, <math|v↦[v]<rsub|B>>. Questa funzione è biiettiva, perché ogni vettore ha una scrittura nella base, che è anche unica.

Ma c'è di più. Se <math|v=<big|sum>x<rsub|j>b<rsub|j>> e <math|w=<big|sum>y<rsub|j>b<rsub|j>>, i coefficienti di <math|v+w> sono <math|x<rsub|j>+y<rsub|j>> e quelli di <math|αv> sono <math|αx<rsub|j>>. Quindi

<\equation*>
[v+w]<rsub|B>=[v]<rsub|B>+[w]<rsub|B>,<space|2em>[αv]<rsub|B>=α[v]<rsub|B>.
</equation*>

Un'applicazione che rispetta in questo modo la somma e il prodotto per scalare si chiama <strong|lineare>, e se è anche biiettiva si chiama <strong|isomorfismo>. Le coordinate ci danno quindi un isomorfismo <math|V≅K<rsup|n>>. Scelta una base, ogni spazio di dimensione <math|n> si comporta esattamente come <math|K<rsup|n>>, non solo nei suoi elementi ma anche nelle operazioni.

<section|Completamento, sottospazi e criteri per una base>

Mettiamo insieme ciò che abbiamo ottenuto, in uno spazio <math|V> di dimensione <math|n>. Per il lemma di scambio, un insieme indipendente ha al più <math|n> elementi e si può completare a una base. Un insieme finito di generatori, invece, contiene una base, e quindi ha almeno <math|n> elementi.

Anche da un insieme infinito di generatori possiamo estrarne un numero finito che genera ancora. Prendiamo una base finita di <math|V> e scriviamo ciascuno dei suoi <math|n> vettori come combinazione dei generatori. Ogni scrittura usa un numero finito di generatori, e le scritture sono <math|n>, quindi in tutto ne usiamo un numero finito. Questi generano ancora <math|V>, e da loro possiamo estrarre una base.

Da qui seguono due criteri molto comodi. Se in <math|V> abbiamo <math|n> vettori indipendenti, essi formano già una base, perché nel completamento non resta nessun posto da riempire. Se abbiamo <math|n> generatori, anche questi formano una base, perché la base che ne estraiamo ha già <math|n> vettori e quindi non abbiamo tolto nulla. Il numero giusto da solo, però, non basta. Due vettori paralleli del piano sono due, ma non generano il piano e non sono indipendenti.

Che dire dei sottospazi? Se <math|W⊆V> è un sottospazio, non sappiamo ancora che abbia una base finita, e dobbiamo dimostrarlo prima di parlare della sua dimensione. Partiamo dalla famiglia vuota e aggiungiamo, finché possiamo, un vettore di <math|W> che stia fuori dallo span di quelli già scelti. Ogni aggiunta mantiene l'indipendenza, come abbiamo visto all'inizio del capitolo. Poiché in <math|V> non esistono più di <math|n> vettori indipendenti, dopo al più <math|n> aggiunte siamo costretti a fermarci. A quel punto nessun vettore di <math|W> sta fuori dallo span della famiglia, e quindi abbiamo trovato una base finita di <math|W>.

Questa base è un insieme indipendente anche dentro <math|V>, e quindi <math|dim W≤dim V>. Se le due dimensioni sono uguali, la base di <math|W> è fatta di <math|n> vettori indipendenti di <math|V>, quindi è una base di <math|V>, e <math|W=V>. D'altra parte, per ogni <math|k> fra 0 e <math|n> lo span di <math|k> vettori di una base di <math|V> ha dimensione <math|k>, quindi tutte queste dimensioni si presentano davvero.

Ora possiamo classificare i sottospazi che conosciamo dalla geometria. In <math|ℝ<rsup|2>> le dimensioni possibili sono 0, 1 e 2, e corrispondono al solo zero, alle rette per l'origine e al piano intero. In <math|ℝ<rsup|3>> si aggiungono i piani per l'origine, di dimensione 2, e la dimensione 3 dà tutto lo spazio. Non esistono altre possibilità.

<subsection|Una sola equazione: prima un esempio>

In <math|ℝ<rsup|3>> l'equazione <math|2x-y+3z=0> lascia liberi <math|y> e <math|z> e determina <math|x=y/2-3z/2>. Ogni soluzione si scrive allora come

<\equation*>
(x,y,z)=y(1/2,1,0)+z(-3/2,0,1).
</equation*>

I due vettori che compaiono generano tutte le soluzioni. Sono anche indipendenti, perché in una loro combinazione nulla la seconda componente mostra il primo coefficiente e la terza componente mostra il secondo. Lo spazio delle soluzioni ha quindi dimensione 2. Notiamo che non ci siamo limitati a contare i parametri liberi, ma abbiamo verificato di avere una base.

Lo stesso ragionamento funziona per una singola equazione <math|a<rsub|1>x<rsub|1>+⋯+a<rsub|n>x<rsub|n>=0> con <math|a<rsub|1>≠0>. L'equazione determina <math|x<rsub|1>> e lascia libere le altre variabili, e i vettori

<\equation*>
f<rsub|j>=e<rsub|j>-<frac|a<rsub|j>|a<rsub|1>>e<rsub|1>,<space|2em>j=2,…,n,
</equation*>

formano una base delle soluzioni. Ogni soluzione si scrive infatti come <math|<big|sum><rsub|j=2><rsup|n>x<rsub|j>f<rsub|j>>, e in una combinazione dei <math|f<rsub|j>> la componente di posto <math|j≥2> mostra soltanto il coefficiente di <math|f<rsub|j>>, che quindi deve essere zero se la combinazione è nulla. La dimensione è <math|n-1>. Se il primo coefficiente è zero ma un altro non lo è, basta rinominare le coordinate per portare quello al primo posto. Se invece tutti i coefficienti sono nulli, l'equazione si riduce a <math|0=0>, non impone alcun vincolo e lo spazio delle soluzioni ha dimensione <math|n>.

<section|Basi di sottospazi di polinomi>

Le stesse idee funzionano anche lontano da <math|K<rsup|n>>. Torniamo a <math|ℝ<rsub|3>[X]>, che ha dimensione 4, e imponiamo qualche condizione. La condizione <math|p(0)=0> è facile da leggere sui coefficienti, perché se <math|p=a<rsub|0>+a<rsub|1>X+a<rsub|2>X<rsup|2>+a<rsub|3>X<rsup|3>> allora <math|p(0)=a<rsub|0>>. Lo spazio <math|W<rsub|0>={p:p(0)=0}> ha quindi la base <math|(X,X<rsup|2>,X<rsup|3>)> e dimensione 3.

La condizione <math|p(1)=0> non si legge altrettanto direttamente, ma il teorema del fattore ci viene in aiuto. Essa equivale a scrivere <math|p=(X-1)q> con <math|q∈ℝ<rsub|2>[X]>. Sviluppando <math|q> nei monomi <math|1,X,X<rsup|2>>, vediamo che i polinomi <math|X-1>, <math|X(X-1)> e <math|X<rsup|2>(X-1)> generano <math|W<rsub|1>={p:p(1)=0}>.

Sono anche indipendenti, e il motivo è che hanno gradi diversi. In una loro relazione nulla il termine di grado più alto può venire da un solo polinomio, quindi il suo coefficiente deve essere zero. Tolto quel polinomio, ripetiamo lo stesso ragionamento sui rimanenti. Questo argomento funziona per qualsiasi famiglia finita di polinomi non nulli con gradi tutti diversi, e lo useremo ancora.

Se chiediamo entrambe le condizioni otteniamo l'intersezione <math|W<rsub|0,1>>. Poiché <math|p(0)=0>, possiamo scrivere <math|p=Xq>, e valutando in 1 troviamo <math|q(1)=0>. Allora <math|q=(X-1)r> con <math|r> di grado al più 1, e quindi

<\equation*>
p=X(X-1)(a+bX).
</equation*>

La formula mostra che <math|X(X-1)> e <math|X<rsup|2>(X-1)> generano, e i loro gradi 2 e 3 mostrano che sono indipendenti. La dimensione è 2.

<figura|@IMG(polinomi01)|I due polinomi della base di <math|W<rsub|0,1>> si annullano in 0 e in 1. Nel disegno la curva continua è <math|X(X-1)>, quella tratteggiata è <math|X<rsup|2>(X-1)>.>

Infine chiediamo soltanto che <math|p(0)=p(1)>. Questa volta i polinomi costanti sono ammessi, e per sfruttare il caso precedente togliamo la costante <math|p(0)>. Il polinomio <math|p-p(0)> si annulla sia in 0 sia in 1, quindi sta in <math|W<rsub|0,1>>, e otteniamo

<\equation*>
p=p(0)·1+aX(X-1)+bX<rsup|2>(X-1).
</equation*>

La formula dà la generazione, e i gradi diversi 0, 2 e 3 danno l'indipendenza. La base è <math|(1,X(X-1),X<rsup|2>(X-1))> e la dimensione è 3. Tutte le condizioni che abbiamo considerato definiscono davvero sottospazi, perché la valutazione in un punto rispetta somme e multipli, come nell'esercizio 4.1.

<subsection|Per proseguire: basi massimali e generatori minimali>

Ci sono altri due modi di riconoscere una base, che aiutano a capire che cosa abbiamo ottenuto. Un insieme indipendente si dice <strong|massimale per inclusione> quando non possiamo aggiungergli nessun vettore senza perdere l'indipendenza. Un sistema di generatori si dice <strong|minimale per inclusione> quando non possiamo togliergli nessun vettore senza perdere la generazione. Entrambe le definizioni parlano di aggiungere o togliere, non di contare.

Una base è un insieme indipendente massimale. Se le aggiungiamo un vettore <math|v>, possiamo scrivere <math|v> come combinazione dei vettori della base, e questa scrittura dà una relazione non banale. Viceversa, un insieme indipendente massimale genera tutto lo spazio. Se un vettore <math|v> stesse fuori dal suo span, potremmo aggiungerlo mantenendo l'indipendenza, come abbiamo visto all'inizio del capitolo, e questo contraddirebbe la massimalità.

Una base è anche un sistema minimale di generatori, perché se togliamo un suo vettore non possiamo più ricostruirlo con gli altri, per l'indipendenza. Viceversa, un sistema minimale di generatori non può essere dipendente, perché una relazione non banale indicherebbe un vettore superfluo, che si potrebbe togliere. Le tre descrizioni coincidono quindi. Le dimostrazioni funzionano anche per famiglie infinite, perché ogni relazione coinvolge soltanto un numero finito di vettori, anche se qui ci interesserà soprattutto il caso finito.

<subsection|Per proseguire: basi infinite>

La base dei monomi mostra che <math|K[X]> non è finitamente generato. Anche per gli spazi con basi infinite si può parlare di dimensione, intesa come cardinalità di una base, ed è vero che due basi dello stesso spazio hanno sempre la stessa cardinalità. Il confronto richiede però argomenti diversi da quelli di questo capitolo, perché il lemma di scambio funziona con un numero finito di passi. Nel resto del volume useremo i teoremi sulla dimensione soltanto per spazi di dimensione finita.

<\verifica|6>
<strong|6.1.> Trova una base e la dimensione di <math|W={p∈ℝ<rsub|2>[X]:p(2)=0}>. Controlla sia la generazione sia l'indipendenza.

<strong|6.2.> Completa <math|v=(2,3)> a una base di <math|ℝ<rsup|2>> scegliendo un vettore della base canonica. Poi spiega perché quattro vettori di <math|ℝ<rsup|3>> sono sempre dipendenti.
</verifica>
