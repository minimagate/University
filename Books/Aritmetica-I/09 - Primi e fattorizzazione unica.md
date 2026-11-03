# Primi e fattorizzazione unica

Prerequisiti: [[Books/Aritmetica-I/02 - Naturali e induzione|induzione forte ed esistenza della fattorizzazione]], [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|divisibilità e Bézout]]; per i conteggi, [[Books/Aritmetica-I/05 - Distribuzioni e ripetizioni|stelle e sbarre]]. Torna all’[[Books/Aritmetica-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Dimostrerai che un primo che divide un prodotto divide uno dei fattori, usando Bézout, e da questo l'**unicità della fattorizzazione**.
> - Userai le **valutazioni** $v_p$ per trasformare prodotti in somme e divisibilità in disuguaglianze fra esponenti.
> - Calcolerai MCD, mcm e numero dei divisori dagli esponenti, e conterrai fattori primi in $n!$ con la formula di Legendre.
> - L'idea che lega tutto: il numero è determinato dai suoi esponenti, e le operazioni diventano operazioni sugli esponenti.

## Un prodotto può raccontare due storie diverse?

Il numero $60$ si può scrivere come $6\cdot10$, come $4\cdot15$ oppure come $3\cdot20$. Le scomposizioni sembrano diverse, ma continuando a spezzare i fattori troviamo sempre due copie di $2$, una di $3$ e una di $5$:

$$60=2^2\cdot3\cdot5.$$

Perché deve succedere? L’esistenza di una scomposizione non garantisce da sola che tutti i procedimenti arrivino allo stesso risultato. Occorre dimostrare che nessun fattore primo possa scomparire passando da una scomposizione all’altra.

Questa unicità avrà conseguenze concrete. Permetterà di decidere una divisibilità confrontando esponenti, trovare MCD e mcm, contare divisori senza elencarli e conoscere quante volte $2$ divide $19!$ senza calcolare il fattoriale.

Un naturale $p\geq2$ è **primo** se i suoi soli divisori positivi sono $1$ e $p$. Un naturale $N\geq2$ è **composto** se non è primo: equivale a poter scrivere $N=ab$ con $1<a<N$ e $1<b<N$. Il numero $1$ non appartiene a nessuna delle due categorie. Se lo ammettessimo tra i primi, potremmo inserire arbitrariamente fattori $1$, distruggendo l’unicità della lunghezza.

> [!example] Esempi e controesempi — Numero primo
> **È primo:** $2$, $7$, $13$: i soli divisori positivi sono $1$ e il numero stesso.
> **Non lo è:** $1$, perché non soddisfa $p\geq2$ (e ammetterlo spezzerebbe l'unicità); $9$, perché ha il divisore $3$, diverso da $1$ e da $9$ (viola la condizione sui divisori); $0$ e i negativi non rientrano nella definizione, che riguarda i naturali $\geq2$.

Negli interi il segno va gestito separatamente. Gli interi che hanno un inverso intero per il prodotto, detti **unità**, sono precisamente $1$ e $-1$: da $uv=1$ segue $|u||v|=1$, dunque $|u|=|v|=1$. Scriveremo quindi un intero non nullo come il suo segno, moltiplicato per una fattorizzazione di $|N|$ in primi positivi. Lo zero resta escluso: un prodotto finito di primi, anche moltiplicato per $-1$, non può essere zero.

## Il passaggio decisivo viene da Bézout

Per unicità serve poter dire: se un primo compare nel prodotto, allora compare in un fattore. È un fatto vero per i primi, ma non ovvio dalla definizione (che parla soltanto di divisori). Sia $p$ primo e siano $a,b\in\mathbb Z$. Vogliamo dimostrare il **lemma del primo che divide un prodotto**:

$$p\mid ab\quad\Longrightarrow\quad p\mid a\ \text{oppure}\ p\mid b.$$

Se $p\mid a$, abbiamo già concluso. Supponiamo dunque $p\nmid a$. I divisori positivi comuni di $p$ e $a$ possono essere soltanto $1$ e $p$; il secondo è escluso dall’ipotesi. Pertanto $\gcd(p,a)=1$. Per l’identità di Bézout del [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|capitolo 08]], esistono $u,v\in\mathbb Z$ tali che

$$up+va=1.$$

Moltiplichiamo per $b$, perché vogliamo far comparire il prodotto $ab$ di cui conosciamo la divisibilità:

$$upb+vab=b.$$

Entrambi gli addendi a sinistra sono divisibili per $p$, quindi anche $b$ lo è. La prova non ha utilizzato alcuna fattorizzazione: potremo impiegarla per dimostrarne l’unicità senza un ragionamento circolare.

Ripetendo il lemma otteniamo che, se $p$ divide un prodotto finito non vuoto $a_1\cdots a_s$, allora divide almeno un fattore. Formalmente si procede per induzione su $s$, applicando il caso di due fattori ad $a_1(a_2\cdots a_s)$.

> [!abstract] Concetto chiave — Lemma del primo
> Se $p$ è primo e $p\mid ab$, allora $p\mid a$ oppure $p\mid b$.
> È il perno dell'unicità della fattorizzazione e, nei capitoli successivi, della cancellazione nelle congruenze e della struttura di $\mathbb Z/p\mathbb Z$.

> [!example] Esempi e controesempi — Il lemma del primo
> **Funziona:** $5\mid 15=3\cdot5$ e infatti $5\mid5$; $7\mid 6\cdot14$ e $7\mid14$.
> **Non funziona se $p$ non è primo:** $6\mid4\cdot9=36$, ma $6\nmid4$ e $6\nmid9$. Qui l'ipotesi violata è soltanto "primo" ($6=2\cdot3$): il $2$ sta in $4$ e il $3$ sta in $9$.
> Attenzione: la conclusione "oppure" non è un "e": $5\mid5\cdot2$ ma $5\nmid2$.

> [!warning] Attenzione — La parola «primo» è un’ipotesi
> Da $d\mid ab$ non segue in generale che $d\mid a$ oppure $d\mid b$: $6\mid3\cdot4$, ma $6$ non divide né $3$ né $4$. Inoltre, spiegare il lemma dicendo che «i fattori primi del prodotto provengono dai fattori» presupporrebbe proprio l’unicità che stiamo per dimostrare. Bézout evita questo circolo.

## Il teorema fondamentale dell’aritmetica

> [!abstract] Concetto chiave — Teorema fondamentale dell'aritmetica
> Ogni intero positivo si scrive in modo unico come prodotto di primi positivi, a meno dell'ordine dei fattori.
> Giustifica quasi tutto ciò che segue: valutazioni, MCD e mcm dagli esponenti, conteggio dei divisori e formule su fattoriali.

**Ogni intero positivo si scrive in modo unico come prodotto di primi positivi, a meno dell’ordine dei fattori.** Per $1$ ammettiamo il **prodotto vuoto**, cioè un prodotto senza fattori, il cui valore è $1$.

L’esistenza per $N\geq2$ è stata dimostrata nel [[Books/Aritmetica-I/02 - Naturali e induzione|capitolo 02]] mediante induzione forte: un numero primo è già fattorizzato; un composto si spezza in due interi più piccoli, ai quali si applica l’ipotesi induttiva. Per $1$ basta la convenzione appena introdotta.

Dimostriamo l’unicità per induzione sulla lunghezza $r$ di una fattorizzazione. La proprietà induttiva riguarda **ogni** intero che ammette una fattorizzazione di lunghezza $r$, confrontata con una fattorizzazione di lunghezza arbitraria.

Se $r=0$, l’intero è $1$. Una fattorizzazione con almeno un primo ha valore almeno $2$, quindi anche l’altra deve essere vuota.

Supponiamo ora vera la proprietà alla lunghezza $r-1$, con $r\geq1$, e consideriamo

$$p_1\cdots p_r=q_1\cdots q_s,$$

con tutti i fattori primi. Il membro sinistro è almeno $2$, quindi $s\geq1$. Il primo $p_1$ divide il membro destro e, per il lemma precedente, divide qualche $q_j$. Essendo $q_j$ primo e $p_1>1$, deve essere $p_1=q_j$. Riordinando i fattori poniamo $q_j$ al primo posto e cancelliamo il fattore comune non nullo:

$$p_2\cdots p_r=q_2\cdots q_s.$$

Il membro sinistro ha una fattorizzazione di lunghezza $r-1$. L’ipotesi induttiva dice che $r-1=s-1$ e che i fattori rimasti coincidono dopo un riordinamento. Reinserendo $p_1=q_1$ otteniamo $r=s$ e la coincidenza di tutti i fattori. Questo conclude la prova.

Raggruppando i primi uguali, ogni $N>0$ si scrive dunque

$$N=p_1^{\alpha_1}\cdots p_t^{\alpha_t},$$

dove $p_1<\cdots<p_t$ sono primi e $\alpha_i\geq1$. Sono unici sia i primi presenti sia i loro esponenti. Per $N=1$ abbiamo $t=0$. Per un intero negativo aggiungiamo davanti il segno $-1$; usando primi positivi, anche questa rappresentazione è univoca.

> [!example] Esempi e controesempi — Unicità della fattorizzazione
> **Vale:** $60=6\cdot10=4\cdot15$ si spezzano entrambe in $2^2\cdot3\cdot5$; $91=7\cdot13$ e non c'è altra scrittura come prodotto di primi.
> **Cade se i fattori non sono tutti primi:** $12=2\cdot6=3\cdot4$ sono due scomposizioni in fattori maggiori di $1$ diverse (nessuna è fattorizzazione in primi, perché $6$ e $4$ sono composti). Cade anche se si ammette $1$ fra i primi: $6=2\cdot3=1\cdot2\cdot3$.

> [!info] Approfondimento — Dove l'unicità non vale
> L'unicità non è automatica in ogni contesto numerico. Nell'insieme dei numeri pari $2\mathbb Z$, con il prodotto usuale, chiamiamo "indecomponibile" un pari che non è prodotto di due pari: sono i numeri $2m$ con $m$ dispari, come $2,6,10,30$. Allora $60=2\cdot30=6\cdot10$ sono due scritture diverse in indecomponibili. Un esempio classico, più profondo, è l'insieme dei numeri $a+b\sqrt{-5}$ con $a,b$ interi, dove $6=2\cdot3=(1+\sqrt{-5})(1-\sqrt{-5})$. In $\mathbb Z$ l'unicità funziona grazie al lemma del primo, cioè in ultima analisi a Bézout.

### Cercare i fattori e trovare nuovi primi

Per verificare se $N\geq2$ è primo basta cercare divisori primi non superiori a $\sqrt N$. Infatti, se $N=ab$ con $a,b>1$, almeno uno dei due è al più $\sqrt N$: altrimenti il loro prodotto sarebbe maggiore di $N$. Quel fattore ha a sua volta un divisore primo $p\leq\sqrt N$. Dunque l’assenza di tali divisori prova la primalità.

Per esempio, per $91$ basta provare $2,3,5,7$, poiché $\sqrt{91}<10$. I primi tre non dividono $91$, mentre $91=7\cdot13$. Il fattore $13$ è primo: nessuno dei primi $2,3\leq\sqrt{13}$ lo divide. Abbiamo quindi completato la fattorizzazione.

I primi sono infiniti. Se fossero soltanto $p_1,\ldots,p_t$, considereremmo $M=p_1\cdots p_t+1>1$. Per l’esistenza della fattorizzazione, $M$ ha un divisore primo $q$. Nessun $p_i$ divide $M$, perché dividerebbe anche la differenza $M-p_1\cdots p_t=1$. Quindi $q$ non è nella lista, contraddizione. Non abbiamo affermato che $M$ sia primo: ci basta un suo divisore primo.

## Le valutazioni: il prodotto diventa una somma

Dopo l'unicità, ogni numero è "un elenco di esponenti", uno per ogni primo. Ci serve un modo comodo per leggere un singolo esponente: la valutazione. Per un primo $p$ e un intero $a\neq0$, definiamo $v_p(a)$ come l’esponente di $p$ nella fattorizzazione di $|a|$. Se $p$ non compare, l’esponente è zero. Equivalentemente,

$$v_p(a)=\max\{k\in\mathbb N:p^k\mid a\}.$$

Per esempio, $-72=-2^3\cdot3^2$, quindi $v_2(-72)=3$, $v_3(-72)=2$ e $v_5(-72)=0$. Anche $v_p(1)=v_p(-1)=0$ per ogni primo.

> [!example] Esempi e controesempi — Valutazione $v_p$
> **Ben definita:** $v_3(54)=3$ perché $54=2\cdot3^3$; $v_5(12)=0$ perché $5\nmid12$; $v_2(-72)=3$.
> **Non definita:** $v_p(0)$, perché ogni potenza di $p$ divide $0$ e non c'è un massimo. **Non è additiva sulle somme:** $v_2(2)+v_2(6)=2$, ma $v_2(2+6)=v_2(8)=3$.

> [!abstract] Concetto chiave — Valutazioni: prodotto e divisibilità
> $v_p(ab)=v_p(a)+v_p(b)$ e $a\mid b$ se e solo se $v_p(a)\leq v_p(b)$ per ogni primo $p$.
> Trasforma moltiplicazioni e divisibilità in somme e disuguaglianze: è il linguaggio di MCD, mcm, divisori e Legendre in questo capitolo.

Per $a,b\neq0$ valgono

$$\boxed{v_p(ab)=v_p(a)+v_p(b)},\qquad
\boxed{a\mid b\ \Longleftrightarrow\ v_p(a)\leq v_p(b)\ \text{per ogni primo }p}.$$

La prima proprietà segue moltiplicando le fattorizzazioni: le copie di $p$ si sommano e l’unicità identifica l’esponente risultante. Per la seconda, se $b=ac$, l’additività dà $v_p(b)=v_p(a)+v_p(c)\geq v_p(a)$. Viceversa, se tutte le disuguaglianze valgono, sottraiamo gli esponenti della fattorizzazione di $|a|$ da quelli di $|b|$. Otteniamo un intero positivo $c$ con $|b|=|a|c$; scegliendo il segno opportuno del quoziente, segue $a\mid b$.

Il confronto va fatto per tutti i primi, ma nei calcoli bastano quelli che compaiono almeno in uno dei numeri. Per tutti gli altri i due esponenti sono zero. Se $a\mid b$ e $a,b\neq0$, otteniamo anche

$$v_p(b/a)=v_p(b)-v_p(a).$$

> [!warning] Attenzione — Zero e somme richiedono altre regole
> Qui $v_p(0)$ non è definito: ogni potenza di $p$ divide zero, quindi non esiste un massimo esponente finito. Inoltre l’additività riguarda il prodotto, non la somma. Per esempio, $v_2(2)+v_2(6)=2$, mentre $v_2(2+6)=3$.

Le valutazioni spiegano anche perché $\sqrt2$ non è razionale. Se fosse $\sqrt2=a/b$ con $a,b\in\mathbb Z$ e $b\ne0$, avremmo $a^2=2b^2$; in particolare anche $a\ne0$. Confrontando gli esponenti di $2$ otteniamo

$$2v_2(a)=1+2v_2(b).$$

Il primo membro è pari, il secondo dispari: impossibile. L'ostacolo non riguarda la grandezza dei numeri, ma la struttura dei loro fattori primi. Questo argomento completa didatticamente il richiamo all'irrazionalità di $\sqrt2$ presente nella lezione introduttiva.

## MCD e mcm: scegliere il minimo o il massimo

Oltre al massimo comun divisore ([[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|capitolo 08]]), serve il **minimo comune multiplo** ($\operatorname{mcm}$): il più piccolo intero positivo divisibile sia per $a$ sia per $b$. Gli esponenti permettono di calcolare entrambi senza elencare divisori o multipli.

Siano inizialmente $a,b\in\mathbb Z\setminus\{0\}$. Usiamo la stessa lista di primi nelle fattorizzazioni di $|a|$ e $|b|$, inserendo esponenti zero quando occorre:

$$|a|=\prod_{i=1}^t p_i^{\alpha_i},\qquad
|b|=\prod_{i=1}^t p_i^{\beta_i}.$$

Un divisore comune positivo deve avere, per ogni primo, un esponente non superiore sia ad $\alpha_i$ sia a $\beta_i$. Il prodotto con gli esponenti più grandi consentiti è quindi

$$\boxed{\gcd(a,b)=\prod_{i=1}^t p_i^{\min(\alpha_i,\beta_i)}}.$$

Questo prodotto divide entrambi i numeri; ogni divisore comune positivo lo divide a sua volta, quindi non può essere maggiore. Abbiamo così verificato la caratterizzazione del MCD.

Per il minimo comune multiplo cerchiamo invece un intero positivo divisibile sia per $a$ sia per $b$. Ogni suo esponente deve essere almeno $\alpha_i$ e almeno $\beta_i$. Pertanto

$$\boxed{\operatorname{mcm}(a,b)=\prod_{i=1}^t p_i^{\max(\alpha_i,\beta_i)}}.$$

Il prodotto scritto è un multiplo comune; inoltre divide ogni multiplo comune positivo, anche quelli che contengono ulteriori primi, ed è dunque il più piccolo.

Poiché $\min(\alpha,\beta)+\max(\alpha,\beta)=\alpha+\beta$, moltiplicando le due formule troviamo

$$\boxed{\gcd(a,b)\operatorname{mcm}(a,b)=|ab|}.$$

Per esempio, $72=2^3\cdot3^2$ e $|-120|=2^3\cdot3\cdot5$. Ne segue

$$\gcd(72,-120)=2^3\cdot3=24,$$
$$\operatorname{mcm}(72,-120)=2^3\cdot3^2\cdot5=360.$$

Il controllo $24\cdot360=8640=|72(-120)|$ conferma la coerenza dei calcoli.

La tabella seguente riassume la traduzione fra numeri ed esponenti: leggi ogni riga da sinistra a destra, per un primo $p$ fissato, con $\alpha=v_p(a)$ e $\beta=v_p(b)$.

| Operazione sui numeri | Operazione sugli esponenti di $p$ |
|---|---|
| prodotto $ab$ | somma $\alpha+\beta$ |
| quoziente $b/a$ (se $a\mid b$) | differenza $\beta-\alpha$ |
| divisibilità $a\mid b$ | disuguaglianza $\alpha\leq\beta$ per ogni $p$ |
| $\gcd(a,b)$ | minimo $\min(\alpha,\beta)$ |
| $\operatorname{mcm}(a,b)$ | massimo $\max(\alpha,\beta)$ |
| somma $a+b$ | nessuna regola semplice |

La catena logica del capitolo, da sinistra a destra:

```mermaid
flowchart LR
    A["Bézout"] --> B["Lemma del primo"]
    B --> C["Unicità della fattorizzazione"]
    C --> D["Valutazioni v_p"]
    D --> E["MCD, mcm, divisori, Legendre"]
```

Trattiamo separatamente lo zero, senza attribuirgli valutazioni: adottiamo $\gcd(a,0)=|a|$, anche per $a=0$, e $\operatorname{mcm}(a,0)=0$. Quest’ultima è una convenzione: quando un argomento è zero non esiste un multiplo comune positivo, perché l’unico multiplo di zero è zero. Con queste convenzioni l’identità del prodotto vale per tutti gli interi. La formula $\operatorname{mcm}(a,b)=|ab|/\gcd(a,b)$ si può usare quando $(a,b)\neq(0,0)$; per la coppia nulla produrrebbe $0/0$.

## Contare divisori e distribuire fattori primi

Sia $N>0$ con fattorizzazione $N=\prod_{i=1}^t p_i^{\alpha_i}$. Ogni suo divisore positivo è descritto in modo unico da

$$d=\prod_{i=1}^t p_i^{\beta_i},\qquad 0\leq\beta_i\leq\alpha_i.$$

Viceversa ogni scelta di questi esponenti produce un divisore. Abbiamo una biezione tra divisori e liste di esponenti: per la posizione $i$ ci sono $\alpha_i+1$ scelte e ogni scelta consente tutte quelle delle altre posizioni. Il numero dei divisori positivi è dunque

$$\boxed{\tau(N)=\prod_{i=1}^t(\alpha_i+1)}.$$

Per $N=1$ la lista è vuota e il prodotto vale $1$, come deve essere: l’unico divisore positivo di $1$ è $1$. Per $N=2000=2^4\cdot5^3$, i divisori sono $2^a5^b$ con $0\leq a\leq4$ e $0\leq b\leq3$, quindi

$$\tau(2000)=5\cdot4=20.$$

Passiamo dalle coppie di fattori alle **terne ordinate positive** $(x,y,z)$ con $xyz=2000$. Nessun fattore può contenere primi diversi da $2$ e $5$. Scriviamo

$$x=2^{a_1}5^{b_1},\quad y=2^{a_2}5^{b_2},\quad z=2^{a_3}5^{b_3}.$$

Per l’unicità della fattorizzazione, la condizione sul prodotto equivale esattamente a

$$a_1+a_2+a_3=4,\qquad b_1+b_2+b_3=3,$$

con tutti gli esponenti nonnegativi. Stelle e sbarre del [[Books/Aritmetica-I/05 - Distribuzioni e ripetizioni|capitolo 05]] conta la prima lista in $\binom62=15$ modi e la seconda in $\binom52=10$ modi. Ogni prima lista ammette tutte le dieci seconde liste; ogni coppia di liste determina una sola terna e viceversa. Quindi

$$\boxed{\#\{(x,y,z)\in\mathbb N_{>0}^3:xyz=2000\}=150}.$$

Per vedere la ricostruzione, le liste $(1,0,3)$ e $(0,2,1)$ producono $(2,25,40)$, e $2\cdot25\cdot40=2000$. Gli esponenti zero sono necessari: i fattori possono anche essere $1$. Non abbiamo richiesto né fattori distinti né un ordine crescente.

## I fattoriali e la formula di Legendre

Per calcolare $v_p(n!)$ potremmo sommare $v_p(1),\ldots,v_p(n)$. È più efficiente cambiare il modo di contare. Un numero divisibile per $p^3$ deve contribuire almeno tre copie di $p$: una al primo livello, una al secondo e una al terzo.

Al livello $j\geq1$ contiamo dunque i numeri $m$ con $1\leq m\leq n$ e $p^j\mid m$. Quando $p^j\leq n$, sono precisamente

$$p^j,2p^j,\ldots,\left\lfloor\frac{n}{p^j}\right\rfloor p^j,$$

quindi sono $\lfloor n/p^j\rfloor$; quando $p^j>n$ non ce ne sono, in accordo con la stessa formula. Un intero $m$ con $v_p(m)=k$ viene contato nei livelli $1,\ldots,k$, esattamente $k$ volte. Sommando per livelli contiamo pertanto tutte le copie di $p$ nel prodotto $n!$, senza perderne né aggiungerne. Otteniamo la **formula di Legendre**, per ogni $n\in\mathbb N$:

$$\boxed{v_p(n!)=\sum_{j\geq1}\left\lfloor\frac{n}{p^j}\right\rfloor}.$$

La somma è finita: appena $p^j>n$ tutti i termini successivi sono zero. Vale anche per $n=0$, perché $0!=1$ e tutti gli addendi sono nulli.

Per esempio,

$$v_2(19!)=\left\lfloor\frac{19}{2}\right\rfloor+
\left\lfloor\frac{19}{4}\right\rfloor+
\left\lfloor\frac{19}{8}\right\rfloor+
\left\lfloor\frac{19}{16}\right\rfloor
=9+4+2+1=16.$$

Ci fermiamo prima di $2^5=32$. Contare solo i nove numeri pari darebbe un risultato insufficiente: $4,8,12,16$ forniscono ulteriori copie, e alcuni ne forniscono ancora.

Quanti zeri finali ha $100!$ in base dieci? Avere almeno $k$ zeri finali equivale a essere divisibile per $10^k=2^k5^k$. Il massimo $k$ è quindi $\min(v_2(100!),v_5(100!))$. Legendre dà

$$v_2(100!)=50+25+12+6+3+1=97,$$
$$v_5(100!)=20+4=24.$$

Ci sono esattamente **24 zeri finali**. I multipli di $25$ contribuiscono un secondo fattore $5$, già accompagnato da uno dei molti fattori $2$ disponibili. Il metodo decide anche divisibilità di coefficienti binomiali: se $0\leq k\leq n$, dall’identità $n!=\binom nk k!(n-k)!$ e dall’additività segue

$$v_p\!\left(\binom nk\right)=v_p(n!)-v_p(k!)-v_p((n-k)!).$$

## Fonti

L’esistenza della fattorizzazione è richiamata dalla [[Notes/Aritmetica/Lectures/2026-09-23 - Numeri naturali, induzione e fattorizzazione|nota del 23 settembre]], verificata nel passo pertinente della [[_transcripts/Aritmetica/2026-09-23 - Numeri naturali, induzione e fattorizzazione|trascrizione del 23 settembre]]. Per l’unicità mediante induzione sulla lunghezza sono state consultate la [[Notes/Aritmetica/Lectures/2026-10-07 - Fattorizzazione unica, congruenze e sistemi modulari|nota del 7 ottobre]] e la relativa [[_transcripts/Aritmetica/2026-10-07 - Fattorizzazione unica, congruenze e sistemi modulari|trascrizione]].

MCD, mcm, divisori e terne di prodotto $2000$ provengono dalla [[Notes/Aritmetica/Lectures/2026-10-13 - Divisori, algoritmo di Euclide e conteggio combinatorio|nota del 13 ottobre]] e dai passi pertinenti della [[_transcripts/Aritmetica/2026-10-13 - Divisori, algoritmo di Euclide e conteggio combinatorio|trascrizione]]. Valutazioni, conteggio per livelli e l’esempio $19!$ sono nella [[Notes/Aritmetica/Lectures/2026-10-14 - Sviluppi decimali razionali e fattorizzazione dei denominatori|nota del 14 ottobre]] e nella [[_transcripts/Aritmetica/2026-10-14 - Sviluppi decimali razionali e fattorizzazione dei denominatori|trascrizione]], consultate nelle parti sui fattoriali. Qui la prima potenza di $2$ esclusa per $19!$ è correttamente $2^5=32$.

Sono integrazioni didattiche la prova esplicita del lemma tramite Bézout, il caso del prodotto vuoto nella dimostrazione, la gestione di unità, segni e zero, il criterio fino a $\sqrt N$, l’infinità dei primi, la formulazione generale delle proprietà delle valutazioni e le applicazioni a zeri finali e binomiali. Gli esercizi sono costruiti per questa esposizione.

## Esercizi per verificare la comprensione

Gli esercizi 1–6 sono fondamentali; 7–8 trasferiscono il metodo a nuovi conteggi e ai coefficienti binomiali.

1. Fattorizza $252$ in primi positivi. Indica la lunghezza della fattorizzazione e il numero di primi distinti presenti. Quanti divisori positivi ha?

> [!tip]- Riscontro 1
> $252=4\cdot63=2^2\cdot3^2\cdot7$. La lunghezza conta le ripetizioni: $2+2+1=5$; i primi distinti sono tre. I divisori sono $2^a3^b7^c$, con rispettivamente $3,3,2$ scelte: $\tau(252)=18$.

2. Una dimostrazione afferma: «Se $d>1$ divide $ab$, allora divide $a$ oppure $b$; perciò ogni scomposizione in fattori maggiori di $1$ è unica». Trova un controesempio alla prima affermazione e due scomposizioni di $12$ che smentiscano la conclusione. Quale ipotesi ripara il lemma?

> [!tip]- Riscontro 2
> $6\mid3\cdot4$, ma $6\nmid3$ e $6\nmid4$. Inoltre $12=2\cdot6=3\cdot4$ dà scomposizioni diverse in fattori maggiori di $1$. Il lemma vale se $d$ è primo. Per ottenere l’unicità della fattorizzazione bisogna anche richiedere che tutti i fattori della scomposizione siano primi, escludendo le unità.

3. Calcola $\gcd(-288,432)$ e $\operatorname{mcm}(-288,432)$ mediante gli esponenti. Verifica l’identità del prodotto. Indica poi MCD e mcm della coppia $(0,-288)$.

> [!tip]- Riscontro 3
> $288=2^5\cdot3^2$ e $432=2^4\cdot3^3$. I minimi danno $2^4\cdot3^2=144$; i massimi $2^5\cdot3^3=864$. Il prodotto è $144\cdot864=124416=288\cdot432$. Per $(0,-288)$ si ottengono $288$ e $0$ per le convenzioni sui casi nulli, senza usare $v_p(0)$.

4. Dimostra che un intero positivo è un quadrato se e solo se tutti gli esponenti della sua fattorizzazione prima sono pari. Usa il criterio per trovare tutti i divisori positivi di $2000$ che sono quadrati.

> [!tip]- Riscontro 4
> Se $N=c^2$, allora $v_p(N)=2v_p(c)$ è pari per ogni primo. Viceversa, dimezzando tutti gli esponenti pari si costruisce un intero $c>0$ con $c^2=N$. Tra i divisori $2^a5^b$ di $2000$, gli esponenti consentiti sono $a\in\{0,2,4\}$ e $b\in\{0,2\}$. I sei quadrati sono $1,4,16,25,100,400$; anche $1$ è incluso, con tutti gli esponenti nulli.

5. Si propone di dividere $150$ per $3!$ per contare le terne positive $x\leq y\leq z$ con $xyz=2000$. Spiega perché questo passaggio non è giustificato, confrontando i riordinamenti di $(1,1,2000)$ e $(1,2,1000)$. Non è richiesto il conteggio delle terne non decrescenti.

> [!tip]- Riscontro 5
> La prima terna ha tre riordinamenti distinti, perché i due $1$ sono uguali. La seconda ne ha sei. Il numero di terne ordinate che corrispondono a una stessa terna non decrescente non è costante: la divisione uniforme per $6$ non è applicabile.

6. Calcola $v_2(25!)$, $v_5(25!)$ e il numero di zeri finali di $25!$. Spiega il contributo aggiuntivo del fattore $25$.

> [!tip]- Riscontro 6
> Legendre dà $v_2(25!)=12+6+3+1=22$ e $v_5(25!)=5+1=6$. Gli zeri finali sono $\min(22,6)=6$. Il fattore $25$ compare già tra i cinque multipli di $5$, ma contiene un secondo $5$, contato nel livello successivo.

7. Quante quadruple ordinate $(x_1,x_2,x_3,x_4)\in\mathbb N_{>0}^4$ hanno prodotto $720$? Generalizza il procedimento a $r\geq1$ fattori positivi con prodotto $N=\prod_{i=1}^t p_i^{\alpha_i}$, includendo $N=1$.

> [!tip]- Riscontro 7
> $720=2^4\cdot3^2\cdot5$. Distribuisci gli esponenti di ciascun primo nelle quattro posizioni: ottieni $\binom73\binom53\binom43=35\cdot10\cdot4=1400$ quadruple. In generale il numero è $\prod_{i=1}^t\binom{\alpha_i+r-1}{r-1}$: ogni lista di distribuzioni determina una sola lista di fattori. Per $N=1$ il prodotto vuoto vale $1$, corrispondente alla sola lista $(1,\ldots,1)$.

8. Senza calcolare $\binom{20}{8}$ come intero, determina le sue valutazioni per $p=2,3,5$. È divisibile per $30$? Per $100$? Spiega perché si possono sottrarre le valutazioni dei fattoriali.

> [!tip]- Riscontro 8
> Dall’identità $20!=\binom{20}{8}8!12!$ segue la sottrazione. Per $2$: $v_2(20!)=18$, $v_2(8!)=7$, $v_2(12!)=10$, dunque il risultato è $1$. Per $3$: $8-2-5=1$. Per $5$: $4-1-2=1$. Il binomiale è divisibile per $30=2\cdot3\cdot5$, mentre non è divisibile per $100=2^2\cdot5^2$, perché entrambi gli esponenti richiesti sono insufficienti.

Il capitolo è acquisito quando sai ricostruire il passaggio da Bézout all’unicità e tradurre una domanda di divisibilità in condizioni sugli esponenti. Nei conteggi, controlla sempre che ogni scelta di esponenti produca esattamente uno degli oggetti richiesti.

---

[[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|← 08 · Divisione euclidea e identità di Bézout]] · [[Books/Aritmetica-I/00 - Indice e piano di studio|Indice]] · [[Books/Aritmetica-I/10 - Equazioni diofantee|10 · Equazioni diofantee →]]
