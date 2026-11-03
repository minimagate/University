# Anelli, campi e omomorfismi

Prerequisiti: [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|quozienti e buona definizione]], [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|gruppi]], [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|inversi modulari]] e [[Books/Aritmetica-I/12 - Sistemi e teorema cinese del resto|teorema cinese]]. Torna all'[[Books/Aritmetica-I/00 - Indice e piano di studio|indice]].

## Cambiare rappresentazione per calcolare meglio

Per calcolare modulo $6$ possiamo conservare un unico resto, oppure conservare due informazioni: la parità e il resto modulo $3$. Il teorema cinese assicura che queste due informazioni individuano una classe modulo $6$. Ma consentono anche di sommare e moltiplicare senza ricostruire ogni volta l'intero di partenza?

Sì: se conosciamo i due resti di $x$ e di $y$, possiamo calcolare separatamente quelli di $x+y$ e di $xy$. La corrispondenza fra le due rappresentazioni conserva i calcoli. Per descrivere questo fatto occorrono due idee: una **struttura**, che specifica quali operazioni sappiamo fare, e una **funzione che conserva le operazioni**, che permette di trasportare i calcoli.

Anelli e campi descrivono il primo aspetto; omomorfismi e isomorfismi descrivono il secondo. Non sono soltanto nuovi nomi per gli oggetti già incontrati: aiutano a riconoscere quali regole restano valide e quali richiedono un'ipotesi aggiuntiva.

## Due operazioni che collaborano: gli anelli

In questo capitolo per **anello** intendiamo sempre un anello commutativo con identità. È un insieme $R$ con due operazioni interne $+$ e $\cdot$ tali che:

1. $(R,+)$ è un gruppo abeliano, con neutro $0$ e opposto $-a$ di ogni $a$;
2. il prodotto è associativo e commutativo e ha un neutro $1$;
3. vale la distributività: $a(b+c)=ab+ac$ e $(a+b)c=ac+bc$.

Il prodotto non deve dare un gruppo su tutto $R$: non chiediamo un inverso moltiplicativo per ogni elemento. Questa distinzione permette di includere $\mathbb Z$, dove la somma si può sempre annullare con un opposto, mentre il prodotto per $2$ non si può annullare moltiplicando per un intero.

Dagli assiomi segue una regola familiare: $a0=0$. Infatti

$$
a0=a(0+0)=a0+a0,
$$

e cancellando $a0$ nel gruppo additivo si ottiene $0=a0$. Analogamente, $a(-b)=-(ab)$: la somma $ab+a(-b)=a(b-b)=0$ identifica l'opposto di $ab$.

Gli interi $\mathbb Z$ e i razionali $\mathbb Q$ sono anelli con le operazioni usuali. In $\mathbb Q$ le operazioni sono quelle sulle frazioni, la cui buona definizione è stata affrontata nel capitolo 13.

Anche $\mathbb Z/n\mathbb Z$, per $n\geq2$, è un anello con

$$
[a]_n+[b]_n=[a+b]_n,
\qquad [a]_n[b]_n=[ab]_n.
$$

La buona definizione è già stata verificata nel capitolo 13: sostituire i rappresentanti non cambia la classe del risultato. **Dopo** questa verifica, gli assiomi discendono dai calcoli sugli interi. Per esempio,

$$
([a]+[b])+[c]=[(a+b)+c]=[a+(b+c)]=[a]+([b]+[c]),
$$

e, per il prodotto e la distributività,

$$
([a][b])[c]=[(ab)c]=[a(bc)]=[a]([b][c]),
$$

$$
[a]([b]+[c])=[a(b+c)]=[ab+ac]=[a][b]+[a][c].
$$

Le commutatività si ereditano nello stesso modo. I neutri sono $[0]_n$ e $[1]_n$, mentre l'opposto di $[a]_n$ è $[-a]_n$. Sono così verificate tutte le proprietà richieste.

Useremo moduli almeno $2$, dunque $[0]_n\neq[1]_n$. L'anello con un solo elemento $\mathbb Z/1\mathbb Z$, detto anello zero, resta escluso dagli esempi di questo capitolo.

## Quando si può dividere: unità e campi

Un elemento $a\in R$ è una **unità**, o elemento invertibile, se esiste $b\in R$ tale che $ab=ba=1$. L'inverso è unico: se $b$ e $c$ sono inversi di $a$, allora $b=b(ac)=(ba)c=c$. Lo indichiamo con $a^{-1}$.

Le unità formano un insieme indicato con $R^\times$. Questo insieme è un gruppo rispetto al prodotto. Per dimostrarlo, controlliamo ciò che non è automatico quando si passa a un sottoinsieme. Anzitutto $1\in R^\times$. Se $a,b\in R^\times$, allora

$$
(ab)(b^{-1}a^{-1})=a(bb^{-1})a^{-1}=1,
$$

e analogamente nell'altro ordine: dunque $ab$ è ancora invertibile. Inoltre $a^{-1}$ appartiene a $R^\times$, perché ha inverso $a$. L'associatività si eredita da $R$. Nel nostro caso il gruppo è anche abeliano.

Per esempio, $\mathbb Z^\times=\{1,-1\}$ e $\mathbb Q^\times=\mathbb Q\setminus\{0\}$. La somma non è l'operazione di questo gruppo: due unità possono sommare a zero.

Per gli anelli modulari, il [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|criterio degli inversi]] dà

$$
U(n):=(\mathbb Z/n\mathbb Z)^\times
=\{[a]_n:\gcd(a,n)=1\}.
$$

Il criterio si legge anche direttamente con Bézout: un'identità $ax+ny=1$ fornisce $[a]_n[x]_n=[1]_n$; viceversa un inverso fornisce un'identità di questo tipo, che obbliga il MCD a essere $1$.

### Esempio svolto: unità e divisione modulo $12$

Fra $0,1,\ldots,11$, i resti coprimi con $12$ sono $1,5,7,11$. Perciò

$$
U(12)=\{[1]_{12},[5]_{12},[7]_{12},[11]_{12}\}.
$$

Ognuno è inverso di sé stesso, perché $1^2,5^2,7^2,11^2$ danno tutti resto $1$ modulo $12$. Per risolvere $[5]_{12}x=[7]_{12}$ moltiplichiamo per $[5]_{12}$:

$$
x=[5]_{12}[7]_{12}=[35]_{12}=[11]_{12}.
$$

Invece $[2]_{12}$ non ha inverso. L'equazione $[2]_{12}x=[4]_{12}$ ha due soluzioni, $[2]_{12}$ e $[8]_{12}$, come si verifica moltiplicando. La possibilità di dividere per un elemento dipende dall'elemento scelto.

Un **campo** è un anello commutativo con $0\neq1$ in cui ogni elemento non nullo è invertibile. Dunque $\mathbb Q$ è un campo, mentre $\mathbb Z$ non lo è. L'ipotesi $0\neq1$ è parte della definizione: esclude l'anello zero.

**Teorema.** Per $n\geq2$, l'anello $\mathbb Z/n\mathbb Z$ è un campo se e solo se $n$ è primo.

Se $n=p$ è primo, una classe non nulla ha un rappresentante $a$ con $1\leq a<p$. Nessun divisore primo di $p$ divide $a$, dunque $\gcd(a,p)=1$ e la classe è invertibile.

Viceversa, se $n$ è composto, scriviamo $n=rs$ con $1<r,s<n$. Le classi $[r]_n$ e $[s]_n$ sono entrambe non nulle, ma

$$
[r]_n[s]_n=[n]_n=[0]_n.
$$

Se $[r]_n$ fosse invertibile, moltiplicando per il suo inverso otterremmo $[s]_n=[0]_n$, una contraddizione. Quindi l'anello non è un campo.

## Prodotti nulli e divisori dello zero

Un elemento non nullo $a\in R$ è un **divisore dello zero** se esiste $b\neq0$ con $ab=0$. In $\mathbb Z/12\mathbb Z$, per esempio, $[2]_{12}[6]_{12}=[0]_{12}$.

Una unità non può essere un divisore dello zero: da $ab=0$, moltiplicando per $a^{-1}$ si ottiene $b=0$. In particolare, in un campo vale l'**annullamento del prodotto**:

$$
ab=0\quad\Longrightarrow\quad a=0\ \text{oppure}\ b=0.
$$

Infatti, se $a\neq0$, esiste $a^{-1}$ e il ragionamento precedente forza $b=0$. Più in generale, questa proprietà vale precisamente negli anelli senza divisori dello zero.

> [!warning] Attenzione — Non ogni elemento non nullo si può cancellare
> In un anello generico $ab=ac$ dà $a(b-c)=0$, ma da $a\neq0$ non segue necessariamente $b=c$. Modulo $6$, $[2][1]=[2][4]$ eppure $[1]\neq[4]$. Una unità si può sempre cancellare; in un anello senza divisori dello zero si può cancellare ogni elemento non nullo. Quest'ultima proprietà non basta a essere un campo: $\mathbb Z$ permette la cancellazione ma $2$ non è invertibile.

## Funzioni che conservano le operazioni

Siano $G,H$ gruppi, scritti moltiplicativamente. Un **omomorfismo di gruppi** è una funzione $f:G\to H$ tale che

$$
f(xy)=f(x)f(y)\qquad(x,y\in G).
$$

Questa sola richiesta assicura che neutri e inversi siano conservati. Infatti $f(e_G)=f(e_G)f(e_G)$ e la cancellazione nel gruppo $H$ dà $f(e_G)=e_H$. Poi

$$
f(x)f(x^{-1})=f(xx^{-1})=e_H,
$$

quindi $f(x^{-1})=f(x)^{-1}$. Per gruppi additivi le stesse conclusioni si scrivono $f(0)=0$ e $f(-x)=-f(x)$.

Per anelli $R,S$, un **omomorfismo di anelli** è una funzione $f:R\to S$ che, per ogni $a,b\in R$, soddisfa

$$
f(a+b)=f(a)+f(b),\qquad
f(ab)=f(a)f(b),\qquad f(1_R)=1_S.
$$

La conservazione di $1$ è una nostra convenzione esplicita. Le prime due proprietà, da sole, non la garantiscono: la funzione costante zero le soddisfa, ma fra anelli con $0\neq1$ non conserva $1$. Poiché un omomorfismo di anelli è anche un omomorfismo dei gruppi additivi, conserva $0$, opposti e differenze. Conserva inoltre le unità: se $aa^{-1}=1$, allora $f(a)f(a^{-1})=1$.

La proiezione $\pi_n:\mathbb Z\to\mathbb Z/n\mathbb Z$, $a\mapsto[a]_n$, è un omomorfismo suriettivo. Non è iniettivo: $0$ e $n$ hanno la stessa immagine. L'inclusione $\mathbb Z\to\mathbb Q$ è invece iniettiva, ma non suriettiva.

Un **isomorfismo** è un omomorfismo biiettivo. La sua inversa conserva anch'essa le operazioni: dati $u=f(a)$ e $v=f(b)$, che esistono univocamente per la biiettività,

$$
f^{-1}(u+v)=f^{-1}(f(a+b))=a+b=f^{-1}(u)+f^{-1}(v).
$$

Lo stesso argomento vale per il prodotto e $f^{-1}(1_S)=1_R$. Per gruppi si ripete l'argomento con la sola operazione del gruppo. Perciò un isomorfismo permette di calcolare in entrambi i sensi senza perdere informazioni.

> [!warning] Attenzione — Conservare i calcoli non significa conservare tutta l'informazione
> Un omomorfismo può identificare elementi diversi o non raggiungere tutto il codominio. Per chiamarlo isomorfismo bisogna provare anche iniettività e suriettività. Persino una biiezione fra gli insiemi sottostanti non basta, se non conserva le operazioni.

## Il teorema cinese come isomorfismo

Prima di costruire la mappa, specifichiamo i calcoli nel codominio. Per anelli $R,S$, il **prodotto diretto** $R\times S$ ha operazioni componente per componente:

$$
(a,b)+(c,d)=(a+c,b+d),\qquad
(a,b)(c,d)=(ac,bd).
$$

Il neutro additivo è $(0_R,0_S)$, quello moltiplicativo è $(1_R,1_S)$ e l'opposto di $(a,b)$ è $(-a,-b)$. Associatività, commutatività e distributività valgono in ciascuna componente, dunque valgono per le coppie. Analogamente il prodotto diretto di gruppi ha operazione componente per componente.

Siano ora $m,n\geq2$. Consideriamo

$$
F:\mathbb Z/mn\mathbb Z\longrightarrow
\mathbb Z/m\mathbb Z\times\mathbb Z/n\mathbb Z,
\qquad F([x]_{mn})=([x]_m,[x]_n).
$$

La mappa è **ben definita senza ipotesi di coprimalità**: se $mn\mid x-y$, allora $m\mid x-y$ e $n\mid x-y$, perciò entrambi i resti sono indipendenti dal rappresentante.

È anche un omomorfismo, sempre. Infatti

$$
F([x]_{mn}+[y]_{mn})=([x+y]_m,[x+y]_n)
=F([x]_{mn})+F([y]_{mn}),
$$

$$
F([x]_{mn}[y]_{mn})=([xy]_m,[xy]_n)
=F([x]_{mn})F([y]_{mn}),
$$

e $F([1]_{mn})=([1]_m,[1]_n)$, il neutro moltiplicativo del prodotto.

**Teorema cinese, forma strutturale.** La mappa $F$ è un isomorfismo se e solo se $\gcd(m,n)=1$.

Se i moduli sono coprimi, il [[Books/Aritmetica-I/12 - Sistemi e teorema cinese del resto|teorema cinese del capitolo 12]] dice che, per ogni coppia $([a]_m,[b]_n)$, il sistema

$$
x\equiv a\pmod m,\qquad x\equiv b\pmod n
$$

ha una soluzione unica modulo $mn$. L'esistenza dice che $F$ è suriettiva; l'unicità dice che è iniettiva. Essendo già un omomorfismo, è un isomorfismo.

Per la necessità basta la suriettività. Se $F$ è suriettiva, la coppia $([0]_m,[1]_n)$ ha una preimmagine $[x]_{mn}$. Quindi $m\mid x$ e $n\mid x-1$. Posto $d=\gcd(m,n)$, si ha $d\mid x$ e $d\mid x-1$, dunque $d\mid1$ e $d=1$.

### Esempio svolto: la tabella modulo $6$

Per $m=2$, $n=3$, la corrispondenza completa è:

| Classe modulo $6$ | Immagine modulo $2$ e modulo $3$ |
|---|---|
| $[0]_6$ | $([0]_2,[0]_3)$ |
| $[1]_6$ | $([1]_2,[1]_3)$ |
| $[2]_6$ | $([0]_2,[2]_3)$ |
| $[3]_6$ | $([1]_2,[0]_3)$ |
| $[4]_6$ | $([0]_2,[1]_3)$ |
| $[5]_6$ | $([1]_2,[2]_3)$ |

Calcoliamo $[4]_6[5]_6+[3]_6$ usando le coppie. Il prodotto dà

$$
([0]_2,[1]_3)([1]_2,[2]_3)=([0]_2,[2]_3).
$$

Aggiungendo l'immagine di $[3]_6$ otteniamo $([1]_2,[2]_3)$, che la tabella riconduce a $[5]_6$. Il controllo diretto è $4\cdot5+3=23\equiv5\pmod6$.

Se i moduli non sono coprimi, la mappa resta un omomorfismo ma può perdere informazione e non raggiungere tutte le coppie. Per $m=2,n=4$, per esempio, $[0]_8$ e $[4]_8$ hanno la stessa immagine, mentre $([0]_2,[1]_4)$ non ha preimmagini.

## Il trasporto delle unità

Supponiamo $\gcd(m,n)=1$. La mappa precedente induce

$$
F^\times:U(mn)\longrightarrow U(m)\times U(n),
\qquad [x]_{mn}\longmapsto([x]_m,[x]_n).
$$

Perché l'immagine appartiene al codominio dichiarato? Un'unità viene mandata in un'unità dall'omomorfismo $F$, e una coppia è invertibile esattamente quando lo sono entrambe le componenti: l'inverso è la coppia degli inversi. Equivalentemente, $\gcd(x,mn)=1$ implica $\gcd(x,m)=\gcd(x,n)=1$.

La restrizione conserva il prodotto ed è iniettiva, poiché lo è $F$. **La suriettività richiede un controllo ulteriore.** Data una coppia di unità $([a]_m,[b]_n)$, il teorema cinese fornisce una classe $[x]_{mn}$ con quei resti. Dobbiamo mostrare che questa classe è un'unità. Dalle congruenze segue

$$
\gcd(x,m)=\gcd(a,m)=1,\qquad
\gcd(x,n)=\gcd(b,n)=1.
$$

Se un primo dividesse sia $x$ sia $mn$, dividerebbe $m$ oppure $n$, contraddicendo una delle due uguaglianze. Dunque $\gcd(x,mn)=1$: la preimmagine cercata appartiene davvero a $U(mn)$.

Abbiamo così un isomorfismo di gruppi

$$
U(mn)\cong U(m)\times U(n)\qquad\text{se }\gcd(m,n)=1.
$$

Per esempio $U(6)=\{[1]_6,[5]_6\}$ corrisponde a $\{[1]_2\}\times\{[1]_3,[2]_3\}$. Nel [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|capitolo 17]] questa corrispondenza servirà anche a contare le unità e a spiegare la moltiplicatività della funzione di Eulero.

## Fonti

Il percorso su anelli, campi e unità segue [[Notes/Aritmetica/Lectures/2026-10-21 - Relazioni di equivalenza e strutture quoziente|la nota del 21 ottobre]] e la relativa [[_transcripts/Aritmetica/2026-10-22 - Relazioni di equivalenza e strutture quoziente|trascrizione del 22 ottobre]]. Omomorfismi, prodotto diretto e forma strutturale del teorema cinese sono trattati nella [[Notes/Aritmetica/Lectures/2026-10-22 - Omomorfismi tra anelli e teorema cinese|nota sugli omomorfismi]] e nella [[_transcripts/Aritmetica/2026-10-22 - Omomorfismi tra anelli e teorema cinese|trascrizione corrispondente]]. Per il raccordo aritmetico sono state consultate le note [[Notes/Aritmetica/Lectures/2026-10-19 - Dimostrazione del teorema cinese del resto|del 19 ottobre sul teorema cinese]] e [[Notes/Aritmetica/Lectures/2026-10-07 - Fattorizzazione unica, congruenze e sistemi modulari|del 7 ottobre su congruenze e sistemi]].

Le prove sono riscritte e completate; esempi ed esercizi sono elaborazioni didattiche. In particolare sono esplicitate la convenzione sugli omomorfismi unitari, l'esclusione dell'anello zero dai campi, la conservazione di neutri e inversi e la prova che l'inversa di un isomorfismo conserva le operazioni. Le trascrizioni, rumorose, sono state usate senza riprodurne gli errori di riconoscimento.

## Esercizi per verificare la comprensione

Gli esercizi 1–6 consolidano i concetti fondamentali; 7–8 li collegano a nuove domande.

1. Determina tutte le unità di $\mathbb Z/10\mathbb Z$ e l'inverso di ciascuna.

> [!tip]- Riscontro 1
> I resti coprimi con $10$ sono $1,3,7,9$. Gli inversi sono rispettivamente $[1]_{10},[7]_{10},[3]_{10},[9]_{10}$, perché $1\cdot1\equiv3\cdot7\equiv9\cdot9\equiv1\pmod{10}$. Quindi $U(10)=\{[1],[3],[7],[9]\}$.

2. Trova tutti i divisori dello zero di $\mathbb Z/8\mathbb Z$. Per ogni classe trovata indica una classe non nulla che la annulli.

> [!tip]- Riscontro 2
> Sono $[2]_8,[4]_8,[6]_8$: si ha $[2][4]=[4][2]=[6][4]=[0]$. Gli altri elementi non nulli sono $[1],[3],[5],[7]$, tutti unità perché coprimi con $8$; una unità non può annullare un elemento non nullo. L'elenco è quindi completo; $[0]$ è escluso dalla definizione.

3. In $\mathbb Z/7\mathbb Z$ risolvi $[3]_7x=[5]_7$. Spiega perché la soluzione è unica e perché lo stesso ragionamento non permette di dividere per $[3]_9$ in $\mathbb Z/9\mathbb Z$.

> [!tip]- Riscontro 3
> Poiché $3\cdot5\equiv1\pmod7$, l'inverso di $[3]_7$ è $[5]_7$. Dunque $x=[25]_7=[4]_7$, e moltiplicare per l'inverso prova l'unicità. Modulo $9$ si ha $\gcd(3,9)=3$, quindi $[3]_9$ non è invertibile; inoltre $[3]_9[3]_9=[0]_9$.

4. Sia $f:G\to H$ un omomorfismo di gruppi. Dimostra che, per ogni $x,y\in G$, $f(xy^{-1})=f(x)f(y)^{-1}$. Se $f(x)=f(y)$, dimostra che $f(xy^{-1})=e_H$.

> [!tip]- Riscontro 4
> La conservazione dell'operazione dà $f(xy^{-1})=f(x)f(y^{-1})$; la conservazione degli inversi trasforma il secondo fattore in $f(y)^{-1}$. Se le due immagini coincidono, il prodotto è $f(y)f(y)^{-1}=e_H$. Non è lecito concludere $x=y$ senza l'iniettività di $f$.

5. Uno studente sostiene che $g:\mathbb Z\to\mathbb Z$, $g(a)=2a$, sia un omomorfismo di anelli perché conserva la somma. Individua tutte le condizioni della definizione che falliscono. È un omomorfismo dei gruppi additivi?

> [!tip]- Riscontro 5
> La somma è conservata: $2(a+b)=2a+2b$. Il prodotto non lo è, perché $g(1\cdot1)=2$, mentre $g(1)g(1)=4$. Inoltre $g(1)=2\neq1$. Quindi non è un omomorfismo di anelli secondo la nostra convenzione, ma è un omomorfismo dei gruppi additivi.

6. Usa l'isomorfismo $\mathbb Z/15\mathbb Z\cong\mathbb Z/3\mathbb Z\times\mathbb Z/5\mathbb Z$ per trovare la classe che corrisponde a $([2]_3,[4]_5)$ e calcolare il suo quadrato.

> [!tip]- Riscontro 6
> I rappresentanti con resto $4$ modulo $5$ sono $4,9,14$ fra $0$ e $14$; solo $14$ ha resto $2$ modulo $3$. La classe è $[14]_{15}$. Il quadrato della coppia è $([1]_3,[1]_5)$, che corrisponde a $[1]_{15}$. Infatti $14^2=196\equiv1\pmod{15}$.

7. Siano $n,d\geq2$. Dimostra che la formula $\rho([a]_n)=[a]_d$ definisce una funzione $\mathbb Z/n\mathbb Z\to\mathbb Z/d\mathbb Z$ se e solo se $d\mid n$. Quando è definita, dimostra che è un omomorfismo suriettivo.

> [!tip]- Riscontro 7
> Se la funzione è ben definita, $[0]_n=[n]_n$ obbliga $[0]_d=[n]_d$, cioè $d\mid n$. Viceversa, da $n\mid a-b$ e $d\mid n$ segue $d\mid a-b$: quindi la formula è indipendente dal rappresentante. Conserva somma, prodotto e $1$ applicando le definizioni delle operazioni sulle classi. È suriettiva perché ogni $[b]_d$ è immagine di $[b]_n$. La prova della buona definizione precede quella dell'omomorfismo.

8. Siano $K,L$ campi con $0\neq1$. Nel prodotto diretto $K\times L$, determina tutte le unità e dimostra che il prodotto non è un campo, sebbene entrambi i fattori lo siano.

> [!tip]- Riscontro 8
> La coppia $(a,b)$ è invertibile se e solo se $a\neq0_K$ e $b\neq0_L$: in tal caso l'inverso è $(a^{-1},b^{-1})$. Se una componente fosse zero, nessun prodotto potrebbe avere $1$ in quella componente. Inoltre $(1_K,0_L)$ e $(0_K,1_L)$ sono non nulli e il loro prodotto è $(0_K,0_L)$. Sono divisori dello zero, dunque $K\times L$ non è un campo.

Il capitolo è acquisito quando sai distinguere opposti e inversi, individuare le ipotesi che consentono la cancellazione e verificare separatamente buona definizione, conservazione delle operazioni e biiettività. Prova anche a ricostruire il teorema cinese strutturale spiegando quale parte del risultato aritmetico fornisce ciascuna proprietà della mappa.

---

[[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|← 14 · Gruppi, sottogruppi e permutazioni]] · [[Books/Aritmetica-I/00 - Indice e piano di studio|Indice]] · [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|16 · Gruppi ciclici e ordine →]]
