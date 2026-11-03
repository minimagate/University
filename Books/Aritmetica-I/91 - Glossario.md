# Glossario

I termini tecnici del libro in ordine alfabetico, con una definizione breve e il link al capitolo in cui compaiono definiti (il primo link è il capitolo della definizione). Dove le convenzioni del libro sono particolari (per esempio «anello» = anello commutativo con unità) la voce lo dice.


## A

- **abeliano** — gruppo $G$ in cui l'operazione è commutativa: $xy=yx$ per ogni $x,y\in G$. Ogni gruppo ciclico è abeliano, ma non viceversa (esempio: $U(8)$). → [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|cap. 14]] [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|cap. 16]]
- **anagramma** — sequenza che usa tutte le lettere assegnate con le loro molteplicità (non si richiede che sia una parola); il loro numero è un coefficiente multinomiale. → [[Books/Aritmetica-I/05 - Distribuzioni e ripetizioni|cap. 05]]
- **anello** — nel cap. 15 (e nel resto del libro) significa sempre **anello commutativo con identità**: insieme $R$ con $+$ e $\cdot$ interne, $(R,+)$ gruppo abeliano, $\cdot$ associativa, commutativa, con neutro $1$ e distributiva rispetto a $+$. → [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]]
- **annullamento del prodotto** — proprietà $ab=0\Rightarrow a=0$ oppure $b=0$; vale in un anello senza divisori dello zero (dunque in ogni campo e dominio). → [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]]
- **antiperiodo** — in uno sviluppo eventualmente periodico, il tratto di cifre che precede il periodo. Per $a/b$ ridotta con $b=2^\alpha5^\beta c$, $\gcd(c,10)=1$, il minimo è $\max(\alpha,\beta)$. → [[Books/Aritmetica-I/19 - Frazioni e sviluppi decimali|cap. 19]]
- **antisimmetrica (relazione)** — relazione $R$ tale che $xRy$ e $yRx$ implicano $x=y$. → [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|cap. 08]] [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|cap. 13]]
- **associatività (della composizione)** — per funzioni concatenabili $(h\circ g)\circ f=h\circ(g\circ f)$; è ciò che rende associativa l'operazione nel gruppo delle permutazioni. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]] [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|cap. 14]]
- **assurdo (prova per)** — dimostrazione che assume la negazione della conclusione e ricava una contraddizione con le ipotesi o con un fatto noto. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]

## B

- **base (passo base)** — vedi *passo base*. → [[Books/Aritmetica-I/02 - Naturali e induzione|cap. 02]]
- **Bézout (identità di)** — per $a,b$ non entrambi nulli esistono $u,v\in\mathbb Z$ con $\gcd(a,b)=ua+vb$; il MCD è il minimo valore positivo delle combinazioni lineari intere di $a$ e $b$. → [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|cap. 08]]
- **biezione (biiezione, funzione biettiva)** — funzione $f:X\to Y$ sia iniettiva sia suriettiva; equivale ad avere una funzione inversa. Due insiemi finiti hanno la stessa cardinalità se e solo se esiste una biezione fra loro. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]] [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cap. 03]]
- **Binet (formula di)** — formula esplicita $F_n=\frac{\varphi^n-\psi^n}{\sqrt5}$ con $\varphi,\psi$ radici di $\lambda^2=\lambda+1$ (qui $\varphi$ indica la sezione aurea, non la funzione di Eulero). → [[Books/Aritmetica-I/07 - Ricorrenze e successioni|cap. 07]]
- **binomio di Newton** — formula $(a+b)^n=\sum_{k=0}^{n}\binom nk a^kb^{n-k}$, valida quando $ab=ba$. → [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|cap. 04]]
- **buona definizione (ben definita)** — una formula sulle classi (cioè sui rappresentanti) è ben definita se il risultato non dipende dal rappresentante scelto: $x\sim x'\Rightarrow h(x)=h(x')$. Solo allora la funzione passa al quoziente. → [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|cap. 13]] [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]]
- **buon ordinamento** — ogni sottoinsieme non vuoto di $\mathbb N$ ha un minimo; è equivalente al principio di induzione. → [[Books/Aritmetica-I/02 - Naturali e induzione|cap. 02]]

## C

- **campo** — anello commutativo con $0\ne1$ in cui ogni elemento non nullo è invertibile; ogni campo è un dominio d'integrità. Esempi: $\mathbb Q$, $\mathbb Z/p\mathbb Z$ con $p$ primo. → [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]]
- **cancellazione (legge di)** — in un gruppo, $ax=ay\Rightarrow x=y$ (moltiplicando per $a^{-1}$); in un anello vale per $a$ non divisore dello zero. → [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|cap. 14]] [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]]
- **cardinalità** — per un insieme finito $X$ in biezione con $[n]=\{1,\dots,n\}$, il numero $|X|=n$ dei suoi elementi. → [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cap. 03]]
- **cassetti (principio dei)** — se $|X|>|Y|$ ogni funzione $f:X\to Y$ non è iniettiva: almeno due oggetti finiscono nello stesso cassetto. → [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cap. 03]]
- **centro (di un gruppo)** — insieme $Z(G)=\{x\in G: xg=gx\ \forall g\in G\}$ degli elementi che commutano con tutti; è un sottogruppo abeliano di $G$. → [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|cap. 14]]
- **ciclico (gruppo)** — gruppo $G$ per cui esiste $g\in G$ con $G=\langle g\rangle$, cioè formato dalle potenze (multipli, in notazione additiva) di $g$. Esempio: $(\mathbb Z/n\mathbb Z,+)$; $U(pq)$ non è ciclico per i casi trattati. → [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|cap. 16]] [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|cap. 17]]
- **ciclo (di permutazione)** — permutazione $(a_1\ a_2\ \cdots\ a_r)$, con $a_i$ distinti, che manda ogni $a_i$ nel successivo, $a_r$ in $a_1$, e fissa gli altri punti; $r$ è la sua lunghezza. → [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|cap. 14]]
- **classe (di congruenza)** — la classe di $a$ modulo $n$ è $[a]_n=\{b\in\mathbb Z: b\equiv a\pmod n\}$; ci sono esattamente $n$ classi distinte, $[0]_n,\dots,[n-1]_n$. → [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|cap. 11]] [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|cap. 13]]
- **classe di equivalenza** — per una relazione di equivalenza $\sim$ su $X$, la classe di $x$ è $[x]=\{y\in X:y\sim x\}$; due classi sono uguali oppure disgiunte. → [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|cap. 13]]
- **classe laterale (sinistra)** — per $H\le G$ e $g\in G$, l'insieme $gH=\{gh:h\in H\}$; le classi laterali formano una partizione di $G$ e hanno tutte cardinalità $|H|$. → [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|cap. 17]]
- **codominio** — l'insieme $Y$ in cui una funzione $f:X\to Y$ prende valori (da non confondere con l'immagine $f(X)\subseteq Y$). → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **coefficiente binomiale** — $\binom nr$ è il numero dei sottoinsiemi di $r$ elementi di un insieme di $n$ elementi ($0\le r\le n$); vale $\frac{n!}{r!(n-r)!}$. → [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|cap. 04]]
- **coefficiente multinomiale** — $\frac{n!}{n_1!\cdots n_k!}$ con $n_1+\cdots+n_k=n$: numero di anagrammi con molteplicità $n_i$, e di distribuzioni di oggetti distinti in scatole etichettate con $n_i$ oggetti nella scatola $i$. → [[Books/Aritmetica-I/05 - Distribuzioni e ripetizioni|cap. 05]]
- **combinazione lineare intera** — espressione $ua+vb$ con $u,v\in\mathbb Z$; ogni divisore comune di $a,b$ divide ogni loro combinazione lineare intera. → [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|cap. 08]]
- **complementare** — rispetto a un insieme ambiente $U$, $A^c=U\setminus A$; vale $|A^c|=|U|-|A|$ per insiemi finiti. → [[Books/Aritmetica-I/06 - Inclusione ed esclusione|cap. 06]]
- **composizione** — date $f:X\to Y$ e $g:Y\to Z$, la funzione $g\circ f:X\to Z$, $x\mapsto g(f(x))$ (si applica prima $f$). In generale non è commutativa. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **composto (numero)** — naturale $n\ge2$ non primo; equivale a $n=ab$ con $1<a<n$ e $1<b<n$. → [[Books/Aritmetica-I/02 - Naturali e induzione|cap. 02]] [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|cap. 09]]
- **congruenza esponenziale** — equazione $a^x\equiv b\pmod n$ con $x$ incognito; con $\gcd(a,n)=1$ è risolvibile se e solo se $[b]_n$ sta nel sottogruppo generato da $[a]_n$, e le soluzioni formano una classe modulo $\operatorname{ord}_n(a)$. → [[Books/Aritmetica-I/18 - Congruenze esponenziali|cap. 18]]
- **congruenza (modulo $n$)** — $a\equiv b\pmod n$ se $n\mid(a-b)$, cioè se $a$ e $b$ hanno lo stesso resto nella divisione per $n$; è una relazione di equivalenza compatibile con somma, prodotto e potenze. → [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|cap. 11]]
- **contrapposizione (prova per)** — dimostra $P\Rightarrow Q$ provando l'implicazione equivalente $\neg Q\Rightarrow\neg P$. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **controesempio** — caso che rispetta tutte le ipotesi di un'affermazione universale e ne viola la conclusione; basta a confutarla. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **controimmagine** — per $f:X\to Y$ e $B\subseteq Y$, l'insieme $f^{-1}(B)=\{x\in X:f(x)\in B\}$; la controimmagine di $\{y\}$ è l'insieme delle preimmagini di $y$. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **coprimi** — due interi sono coprimi se $\gcd(a,b)=1$, cioè (Bézout) se esistono $u,v$ con $ua+vb=1$. Più interi sono a due a due coprimi se lo sono ogni coppia. → [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|cap. 08]] [[Books/Aritmetica-I/12 - Sistemi e teorema cinese del resto|cap. 12]]

## D

- **derivata formale** — di $f(x)=a_0+a_1x+\dots+a_dx^d$ è $f'(x)=a_1+2a_2x+\cdots+da_dx^{d-1}$; governa il sollevamento delle radici: $f(x_0+p^kh)\equiv f(x_0)+p^khf'(x_0)\pmod{p^{k+1}}$. → [[Books/Aritmetica-I/20 - Congruenze polinomiali e sollevamento|cap. 20]]
- **dimostrazione** — passaggio verificabile dalle ipotesi alla conclusione. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **diofantea (equazione)** — equazione di cui si cercano soluzioni intere. La lineare $ax+by=c$ ($a,b$ non entrambi nulli) ha soluzioni se e solo se $\gcd(a,b)\mid c$. → [[Books/Aritmetica-I/10 - Equazioni diofantee|cap. 10]]
- **disgiunti** — insiemi $A,B$ con $A\cap B=\varnothing$; per insiemi finiti disgiunti $|A\cup B|=|A|+|B|$. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]] [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cap. 03]]
- **dividere (divisibilità)** — $a\mid b$ se esiste $k\in\mathbb Z$ con $b=ak$. Sui naturali è un ordine parziale (riflessiva, transitiva, antisimmetrica) ma non totale. → [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|cap. 08]]
- **divisione euclidea** — per $a,b\in\mathbb Z$ con $b\ne0$ esistono unici $q,r\in\mathbb Z$ con $a=bq+r$ e $0\le r<\lvert b\rvert$; $q$ è il quoziente, $r$ il resto. → [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|cap. 08]]
- **divisore dello zero** — in un anello, elemento $a\ne0$ per cui esiste $b\ne0$ con $ab=0$. Esempio: $[2]_{12}[6]_{12}=[0]_{12}$. Un'unità non è mai divisore dello zero. → [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|cap. 11]] [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]]
- **dominio d'integrità** — anello con $0\ne1$ e senza divisori dello zero. Ogni campo è un dominio; $\mathbb Z$ è un dominio non campo; un dominio finito è un campo. → [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]]
- **dominio (di una funzione)** — l'insieme $X$ degli elementi su cui è definita $f:X\to Y$. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **doppio conteggio** — dimostrazione di un'uguaglianza contando in due modi lo stesso insieme finito. → [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|cap. 04]] [[Books/Aritmetica-I/06 - Inclusione ed esclusione|cap. 06]]

## E

- **equazione caratteristica** — per la ricorrenza $a_{n+2}=pa_{n+1}+qa_n$, l'equazione $\lambda^2=p\lambda+q$; le sue radici non nulle danno soluzioni esponenziali $r^n$. → [[Books/Aritmetica-I/07 - Ricorrenze e successioni|cap. 07]]
- **equivalenza (relazione di)** — relazione $\sim$ su $X$ riflessiva, simmetrica e transitiva; equivale a dare una partizione di $X$. → [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|cap. 11]] [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|cap. 13]]
- **Euclide (algoritmo di)** — sequenza di divisioni con resto che calcola il MCD come ultimo resto non nullo e permette di risalire a $ua+vb$. → [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|cap. 08]]
- **Euclide (lemma di)** — se $a\mid bc$ e $\gcd(a,b)=1$, allora $a\mid c$. → [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|cap. 08]] [[Books/Aritmetica-I/10 - Equazioni diofantee|cap. 10]]
- **Eulero (funzione di)** — $\varphi(n)=\lvert U(n)\rvert$, numero dei resti $a\in\{0,\dots,n-1\}$ coprimi con $n$ (con $\varphi(1)=1$). Un gruppo ciclico di ordine $r$ ha $\varphi(r)$ generatori. → [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|cap. 17]] [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|cap. 16]]
- **Eulero (teorema di)** — se $\gcd(a,n)=1$ allora $a^{\varphi(n)}\equiv1\pmod n$; segue dal teorema di Lagrange applicato a $U(n)$. → [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|cap. 17]]

## F

- **fattorizzazione unica (teorema fondamentale dell'aritmetica)** — ogni intero positivo si scrive in modo unico come prodotto di primi positivi, a meno dell'ordine (esistenza in cap. 02, unicità in cap. 09). → [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|cap. 09]] [[Books/Aritmetica-I/02 - Naturali e induzione|cap. 02]]
- **Fermat (piccolo teorema di)** — se $p$ è primo e $p\nmid a$, allora $a^{p-1}\equiv1\pmod p$; per ogni $a$ vale $a^p\equiv a\pmod p$. → [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|cap. 17]]
- **fibra** — per $f:E\to F$ e $y\in F$, l'insieme $f^{-1}(\{y\})$ degli elementi mandati in $y$; $f$ è suriettiva se e solo se tutte le fibre sono non vuote. → [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cap. 03]] [[Books/Aritmetica-I/05 - Distribuzioni e ripetizioni|cap. 05]] [[Books/Aritmetica-I/06 - Inclusione ed esclusione|cap. 06]]
- **finito (insieme)** — insieme $X$ per cui esiste una biezione $[n]\to X$ per qualche $n\in\mathbb N$. → [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cap. 03]]
- **forma forte dell'induzione** — se $P(n_0)$ vale e, per ogni $n\ge n_0$, da $P(n_0),\dots,P(n)$ segue $P(n+1)$, allora $P(n)$ vale per ogni $n\ge n_0$. → [[Books/Aritmetica-I/02 - Naturali e induzione|cap. 02]]
- **funzione** — $f:X\to Y$ assegna a ogni $x$ del dominio un unico $f(x)$ del codominio. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **funzione caratteristica** — per $A\subseteq U$, $\chi_A:U\to\{0,1\}$ con $\chi_A(x)=1$ se $x\in A$ e $0$ altrimenti; realizza la biezione fra $\mathcal P(U)$ e le funzioni $U\to\{0,1\}$. → [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|cap. 04]] [[Books/Aritmetica-I/06 - Inclusione ed esclusione|cap. 06]]

## G

- **generatore** — elemento $g$ di un gruppo con $G=\langle g\rangle$. → [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|cap. 16]]
- **gruppo** — insieme $G$ con operazione interna (chiusura) associativa, con neutro e con inverso per ogni elemento. → [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|cap. 14]]
- **gruppo additivo (di un anello)** — $(R,+)$: sempre abeliano e contiene tutti gli elementi, zero compreso. → [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]]
- **gruppo delle unità** — $R^\times$ (o $U(n)$ per $R=\mathbb Z/n\mathbb Z$): elementi invertibili di $R$ con il prodotto; $\lvert U(n)\rvert=\varphi(n)$. → [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]] [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|cap. 17]]

## I

- **idempotente modulo $M$** — elemento $e$ con $e^2\equiv e\pmod M$; i coefficienti $e_i$ della formula del teorema cinese sono idempotenti (valgono $1$ modulo $m_i$ e $0$ modulo gli altri moduli). → [[Books/Aritmetica-I/12 - Sistemi e teorema cinese del resto|cap. 12]]
- **identità (funzione)** — $\operatorname{id}_X:X\to X$, $x\mapsto x$; neutro della composizione. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **immagine** — per $f:X\to Y$, $f(X)=\{f(x):x\in X\}\subseteq Y$; $f$ è suriettiva se e solo se $f(X)=Y$. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **inclusione** — $A\subseteq B$: ogni elemento di $A$ sta in $B$ (ammette $A=B$; $A\subsetneq B$ lo esclude). L'uguaglianza fra insiemi si prova con la doppia inclusione. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **inclusione-esclusione (principio di)** — per insiemi finiti $A_1,\dots,A_n\subseteq U$, $\lvert A_1\cup\cdots\cup A_n\rvert=\sum_{\emptyset\ne I}(-1)^{\lvert I\rvert+1}\lvert\bigcap_{i\in I}A_i\rvert$; per due insiemi $\lvert A\cup B\rvert=\lvert A\rvert+\lvert B\rvert-\lvert A\cap B\rvert$. → [[Books/Aritmetica-I/06 - Inclusione ed esclusione|cap. 06]]
- **incomparabili** — in un ordine parziale, due elementi $x,y$ con né $xRy$ né $yRx$ (es. $2$ e $3$ per la divisibilità). → [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|cap. 08]]
- **indice (di un sottogruppo)** — per $H\le G$ finito, il numero $[G:H]=\lvert G\rvert/\lvert H\rvert$ delle classi laterali di $H$. → [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|cap. 17]]
- **induzione (principio di, debole)** — se $P(n_0)$ è vera (passo base) e per ogni $n\ge n_0$ $P(n)\Rightarrow P(n+1)$ (passo induttivo), allora $P(n)$ è vera per ogni $n\ge n_0$. → [[Books/Aritmetica-I/02 - Naturali e induzione|cap. 02]]
- **iniettiva** — $f:X\to Y$ è iniettiva se $f(x)=f(x')\Rightarrow x=x'$: elementi distinti hanno immagini distinte. Le iniezioni da $n$ a $m$ elementi sono $m!/(m-n)!$. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]] [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cap. 03]]
- **insieme** — raccolta di oggetti (elementi); ordine e ripetizioni non contano. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **insieme ambiente** — insieme finito $U$ fissato che contiene tutto ciò che si considera; rispetto a esso si definisce il complementare. → [[Books/Aritmetica-I/06 - Inclusione ed esclusione|cap. 06]]
- **insieme delle parti** — $\mathcal P(X)$, insieme di tutti i sottoinsiemi di $X$; ha $2^{\lvert X\rvert}$ elementi se $X$ è finito. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]] [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|cap. 04]]
- **insieme quoziente** — insieme $X/{\sim}$ delle classi di equivalenza di una relazione di equivalenza su $X$. Esempio: $\mathbb Z/n\mathbb Z$. → [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|cap. 13]]
- **insieme vuoto** — $\varnothing$, l'insieme senza elementi (diverso da $\{\varnothing\}$). → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **inversa (funzione)** — $g:Y\to X$ è inversa di $f:X\to Y$ se $g\circ f=\operatorname{id}_X$ e $f\circ g=\operatorname{id}_Y$; esiste se e solo se $f$ è biettiva. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **inverso modulare** — inverso di $a$ modulo $n$: intero $u$ con $au\equiv1\pmod n$; esiste se e solo se $\gcd(a,n)=1$, ed è unico modulo $n$ (si calcola con Bézout). → [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|cap. 11]]
- **invertibile (unità)** — elemento che ha un inverso; modulo $n$, la classe $[a]_n$ è invertibile se e solo se $\gcd(a,n)=1$. → [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|cap. 11]] [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]]
- **isomorfismo** — omomorfismo biiettivo; la sua inversa è ancora un omomorfismo. Esempio: $\mathbb Z/mn\mathbb Z\cong\mathbb Z/m\mathbb Z\times\mathbb Z/n\mathbb Z$ se $\gcd(m,n)=1$. → [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]] [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|cap. 17]]

## L

- **Lagrange (teorema di)** — se $H$ è sottogruppo di un gruppo finito $G$, allora $\lvert H\rvert$ divide $\lvert G\rvert$; in particolare l'ordine di ogni elemento divide $\lvert G\rvert$. → [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|cap. 17]]
- **Legendre (formula di)** — $v_p(n!)=\sum_{j\ge1}\lfloor n/p^j\rfloor$ per $p$ primo. → [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|cap. 09]]
- **leggi di De Morgan** — $(A\cup B)^c=A^c\cap B^c$ e $(A\cap B)^c=A^c\cup B^c$. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **lista** — sequenza in cui l'ordine conta (a differenza di un sottoinsieme). → [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|cap. 04]]
- **logaritmo discreto** — il problema di trovare l'esponente $x_0$ con $g^{x_0}=[b]_n$ per $[b]_n\in\langle g\rangle$; non ha formula risolutiva generale. → [[Books/Aritmetica-I/18 - Congruenze esponenziali|cap. 18]]

## M

- **massimo comun divisore (MCD)** — per $a,b$ non entrambi nulli, il massimo dei divisori comuni positivi, $\gcd(a,b)$. È anche il minimo valore positivo di $ua+vb$ e vale $\gcd(a,b)=\gcd(b,r)$ se $a=bq+r$. → [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|cap. 08]]
- **metodo dei quadrati successivi** — calcolo di $a^k\bmod n$ ottenendo $a^{1},a^{2},a^{4},a^{8},\dots$ con riduzione modulo $n$ a ogni passo e combinando le potenze necessarie. → [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|cap. 11]]
- **minimo comune multiplo (mcm)** — il più piccolo intero positivo divisibile per $a$ e per $b$; vale $\gcd(a,b)\operatorname{mcm}(a,b)=\lvert ab\rvert$ e, dagli esponenti, $\operatorname{mcm}=\prod p_i^{\max(\alpha_i,\beta_i)}$. → [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|cap. 09]] [[Books/Aritmetica-I/12 - Sistemi e teorema cinese del resto|cap. 12]]
- **minimo controesempio** — metodo che, assumendo falsa una proprietà, considera il più piccolo caso falso e ne ricava una contraddizione. → [[Books/Aritmetica-I/02 - Naturali e induzione|cap. 02]]
- **minimo (di un sottoinsieme di $\mathbb N$)** — elemento $m\in A$ con $m\le a$ per ogni $a\in A$. → [[Books/Aritmetica-I/02 - Naturali e induzione|cap. 02]]
- **modulo** — il numero $n\ge2$ rispetto al quale si considerano le congruenze $a\equiv b\pmod n$. → [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|cap. 11]]

## N

- **necessaria (condizione)** — $Q$ è condizione necessaria per $P$ se $P\Rightarrow Q$; $P$ è sufficiente per $Q$. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **neutro** — elemento $e$ con $eg=ge=g$ per ogni $g$; è unico. → [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|cap. 14]]
- **numero complesso** — numero $x+yi$ con $x,y$ reali e $i^2=-1$; permette di trattare radici non reali dell'equazione caratteristica. → [[Books/Aritmetica-I/07 - Ricorrenze e successioni|cap. 07]]

## O

- **omogenea (equazione)** — associata a $ax+by=c$, l'equazione $ax+by=0$: le sue soluzioni sono le differenze di soluzioni dell'originale, e sono i multipli interi di un vettore primitivo. → [[Books/Aritmetica-I/10 - Equazioni diofantee|cap. 10]]
- **omomorfismo di anelli** — funzione $f:R\to S$ con $f(a+b)=f(a)+f(b)$, $f(ab)=f(a)f(b)$ e $f(1_R)=1_S$. → [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]]
- **omomorfismo di gruppi** — funzione $f:G\to H$ con $f(ab)=f(a)f(b)$ per ogni $a,b\in G$. → [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]]
- **orbita** — per una permutazione $\pi$, traiettoria $x,\pi(x),\pi^2(x),\dots$ di un punto; le orbite determinano i cicli disgiunti della decomposizione. → [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|cap. 14]]
- **ordine di $10$ modulo $c$** — con $\gcd(c,10)=1$, il minimo $m>0$ con $10^m\equiv1\pmod c$, indicato $\operatorname{ord}_c(10)$; è la lunghezza minima del periodo. → [[Books/Aritmetica-I/19 - Frazioni e sviluppi decimali|cap. 19]]
- **ordine (di una permutazione)** — minimo $k>0$ con $\pi^k=\operatorname{id}$; è il mcm delle lunghezze dei cicli disgiunti. → [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|cap. 14]]
- **ordine (di un elemento)** — $\operatorname{ord}(g)$ è il minimo intero $r>0$ con $g^r=e$ (infinito se non esiste); in un gruppo finito vale $\operatorname{ord}(g)=\lvert\langle g\rangle\rvert$ e divide $\lvert G\rvert$. → [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|cap. 16]] [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|cap. 17]] [[Books/Aritmetica-I/18 - Congruenze esponenziali|cap. 18]]
- **ordine parziale** — relazione riflessiva, antisimmetrica e transitiva; non è detto che due elementi siano confrontabili. → [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|cap. 08]] [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|cap. 13]]

## P

- **pari** — intero $n$ con $n=2k$ per qualche $k\in\mathbb Z$. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **partizione** — famiglia di sottoinsiemi (blocchi) non vuoti, a due a due disgiunti, la cui unione è $X$; le classi di una relazione di equivalenza ne formano una e viceversa. → [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|cap. 13]] [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|cap. 17]]
- **Pascal (identità di)** — $\binom{n}{r}=\binom{n-1}{r}+\binom{n-1}{r-1}$, per $1\le r\le n-1$ (sottoinsiemi che non contengono / contengono un elemento fissato). → [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|cap. 04]]
- **passo base / passo induttivo** — nell'induzione, rispettivamente la verifica di $P(n_0)$ e la dimostrazione di $P(n)\Rightarrow P(n+1)$ per $n$ arbitrario. → [[Books/Aritmetica-I/02 - Naturali e induzione|cap. 02]]
- **periodico (eventualmente)** — sviluppo le cui cifre si ripetono in blocchi da un certo punto in poi; ogni razionale ha sviluppo eventualmente periodico (finito = periodo di zeri). → [[Books/Aritmetica-I/19 - Frazioni e sviluppi decimali|cap. 19]]
- **periodo** — nello sviluppo eventualmente periodico, il blocco di cifre che si ripete; il minimo ha lunghezza $\operatorname{ord}_c(10)$ (se $c>1$). → [[Books/Aritmetica-I/19 - Frazioni e sviluppi decimali|cap. 19]]
- **permutazione** — biezione $X\to X$; le permutazioni di $n$ elementi sono $n!$ e, con la composizione, formano un gruppo $\operatorname{Sym}(X)$ non abeliano per $n\ge3$. → [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cap. 03]] [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|cap. 14]]
- **primitivo (vettore)** — vettore intero le cui coordinate sono coprime; genera tutte le soluzioni dell'equazione omogenea. → [[Books/Aritmetica-I/10 - Equazioni diofantee|cap. 10]]
- **primo** — naturale $p\ge2$ i cui soli divisori positivi sono $1$ e $p$; vale il lemma: se $p\mid ab$ allora $p\mid a$ oppure $p\mid b$. Il numero $1$ non è né primo né composto. → [[Books/Aritmetica-I/02 - Naturali e induzione|cap. 02]] [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|cap. 09]]
- **principio della somma** — se $A,B$ sono finiti e disgiunti, $\lvert A\cup B\rvert=\lvert A\rvert+\lvert B\rvert$. → [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cap. 03]]
- **principio del prodotto** — se a ogni passo ogni storia ha lo stesso numero $r_i$ di proseguimenti, le storie complete sono $r_1\cdots r_k$. → [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cap. 03]]
- **principio di corrispondenza** — $\lvert X\rvert=\lvert Y\rvert$ se e solo se esiste una biezione $X\to Y$. → [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cap. 03]]
- **prodotto cartesiano** — $A\times B$, insieme delle coppie ordinate $(a,b)$ con $a\in A$, $b\in B$; $\lvert A\times B\rvert=\lvert A\rvert\lvert B\rvert$. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]] [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cap. 03]]
- **prodotto diretto (di anelli)** — $R\times S$ con operazioni componente per componente. → [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]]
- **prodotto vuoto** — prodotto senza fattori, di valore $1$; è la fattorizzazione di $1$. Analoga la somma vuota (valore $0$). → [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|cap. 09]] [[Books/Aritmetica-I/02 - Naturali e induzione|cap. 02]]
- **proiezione canonica** — la funzione suriettiva $\pi:X\to X/{\sim}$, $x\mapsto[x]$. → [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|cap. 13]]
- **proposizione** — affermazione a cui si attribuisce un valore di verità. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]

## Q

- **quadrato modulo $p$** — classe $[a]_p$ della forma $[x]_p^2$ (nel capitolo si include anche $0$). → [[Books/Aritmetica-I/20 - Congruenze polinomiali e sollevamento|cap. 20]]
- **quantificatori (negazione dei)** — $\neg(\forall x\,P)\equiv\exists x\,\neg P$ e $\neg(\exists x\,P)\equiv\forall x\,\neg P$; l'ordine dei quantificatori cambia il significato. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]

## R

- **radice (modulo $n$)** — classe $[x]_n$ che annulla il polinomio $f$ a coefficienti interi: $f(x)\equiv0\pmod n$. → [[Books/Aritmetica-I/20 - Congruenze polinomiali e sollevamento|cap. 20]]
- **radice semplice** — radice $x_0$ modulo $p$ con $f'(x_0)\not\equiv0\pmod p$: si solleva in modo unico a ogni potenza $p^k$ (sollevamento di Hensel). → [[Books/Aritmetica-I/20 - Congruenze polinomiali e sollevamento|cap. 20]]
- **radice singolare** — radice $x_0$ modulo $p$ con $f'(x_0)\equiv0\pmod p$: con $\gamma=f(x_0)/p^k\not\equiv0$ non ha sollevamenti, con $\gamma\equiv0$ ne ha $p$. → [[Books/Aritmetica-I/20 - Congruenze polinomiali e sollevamento|cap. 20]]
- **rappresentante** — elemento scelto per nominare una classe (di congruenza o di equivalenza). → [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|cap. 11]] [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|cap. 13]]
- **reciproca** — di $P\Rightarrow Q$ è $Q\Rightarrow P$; richiede una dimostrazione propria. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **reticolo ($\mathbb Z^2$)** — insieme delle coppie di interi, in cui si cercano i punti interi di una retta. → [[Books/Aritmetica-I/10 - Equazioni diofantee|cap. 10]]
- **ricorrenza** — regola che esprime ogni termine di una successione mediante i precedenti; con i dati iniziali determina la successione in modo unico. → [[Books/Aritmetica-I/07 - Ricorrenze e successioni|cap. 07]]
- **ricorrenza lineare omogenea (del secondo ordine a coefficienti costanti)** — ricorrenza $a_{n+2}=pa_{n+1}+qa_n$ con $p,q$ costanti; con radici distinte $r,s$ la soluzione generale è $Ar^n+Bs^n$. → [[Books/Aritmetica-I/07 - Ricorrenze e successioni|cap. 07]]
- **riflessiva (relazione)** — relazione con $xRx$ per ogni $x$. → [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|cap. 08]] [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|cap. 13]]

## S

- **simmetria (dei binomiali)** — $\binom nr=\binom n{n-r}$, per la biezione $A\mapsto X\setminus A$. → [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|cap. 04]]
- **simmetrica (relazione)** — relazione per cui $xRy\Rightarrow yRx$. → [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|cap. 11]] [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|cap. 13]]
- **sistema di congruenze** — più congruenze $x\equiv a_i\pmod{m_i}$ sulla stessa incognita. → [[Books/Aritmetica-I/12 - Sistemi e teorema cinese del resto|cap. 12]]
- **sollevamento** — passaggio da una radice modulo $p^k$ a una modulo $p^{k+1}$ cercando $x=x_0+p^kh$; si riduce alla congruenza lineare $\gamma+hf'(x_0)\equiv0\pmod p$. → [[Books/Aritmetica-I/20 - Congruenze polinomiali e sollevamento|cap. 20]]
- **sottogruppo** — sottoinsieme $H\le G$ che è un gruppo con la stessa operazione; si verifica che contenga il neutro e sia chiuso rispetto a prodotto e inversi. → [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|cap. 14]]
- **sottogruppo generato** — $\langle g\rangle=\{g^k:k\in\mathbb Z\}$: il più piccolo sottogruppo contenente $g$. I sottogruppi di $(\mathbb Z,+)$ sono i $d\mathbb Z$ con $d\ge0$. → [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|cap. 16]]
- **stelle e sbarre** — le soluzioni in $\mathbb N$ di $x_1+\cdots+x_r=N$ sono $\binom{N+r-1}{r-1}$ (oggetti uguali in scatole etichettate, anche vuote). → [[Books/Aritmetica-I/05 - Distribuzioni e ripetizioni|cap. 05]]
- **successione reale** — funzione $\mathbb N\to\mathbb R$, $n\mapsto a_n$. → [[Books/Aritmetica-I/07 - Ricorrenze e successioni|cap. 07]]
- **successore** — di $n$ è $S(n)=n+1$. → [[Books/Aritmetica-I/02 - Naturali e induzione|cap. 02]]
- **sufficiente (condizione)** — vedi *necessaria*. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]]
- **suriettiva** — $f:X\to Y$ con $f(X)=Y$: ogni $y$ ha almeno una preimmagine. Le suriezioni da $n$ a $m$ elementi sono $\sum_{k=0}^m(-1)^k\binom mk(m-k)^n$. → [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|cap. 01]] [[Books/Aritmetica-I/06 - Inclusione ed esclusione|cap. 06]]

## T

- **teorema cinese del resto** — se $m_1,\dots,m_r\ge2$ sono a due a due coprimi, il sistema $x\equiv a_i\pmod{m_i}$ ha soluzione per ogni scelta dei resti, unica modulo $M=m_1\cdots m_r$. → [[Books/Aritmetica-I/12 - Sistemi e teorema cinese del resto|cap. 12]]
- **teorema cinese (forma strutturale)** — $\mathbb Z/mn\mathbb Z\to\mathbb Z/m\mathbb Z\times\mathbb Z/n\mathbb Z$, $[x]\mapsto([x]_m,[x]_n)$ è sempre un omomorfismo, ed è un isomorfismo se e solo se $\gcd(m,n)=1$. → [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]] [[Books/Aritmetica-I/12 - Sistemi e teorema cinese del resto|cap. 12]]
- **transitiva (relazione)** — relazione per cui $xRy$ e $yRz$ implicano $xRz$. → [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|cap. 08]] [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|cap. 11]] [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|cap. 13]]
- **trasposizione** — ciclo di lunghezza due. → [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|cap. 14]]

## U

- **unicità (da ricorrenza e dati iniziali)** — due successioni con la stessa ricorrenza e gli stessi dati iniziali coincidono (induzione). → [[Books/Aritmetica-I/07 - Ricorrenze e successioni|cap. 07]]
- **unità** — elemento $a$ di un anello con $b$ tale che $ab=ba=1$ (invertibile); in $\mathbb Z$ le unità sono $\pm1$. → [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|cap. 15]] [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|cap. 09]] [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|cap. 11]]

## V

- **valutazione $p$-adica** — $v_p(a)=\max\{k\in\mathbb N:p^k\mid a\}$ per $a\ne0$, esponente di $p$ nella fattorizzazione di $\lvert a\rvert$; trasforma prodotti in somme ($v_p(ab)=v_p(a)+v_p(b)$) e divisibilità in disuguaglianze; non definita per $0$. → [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|cap. 09]]
- **Vandermonde (identità di)** — $\binom{m+n}{r}=\sum_k\binom mk\binom n{r-k}$, contando commissioni di $r$ persone in due gruppi disgiunti. → [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|cap. 04]]

---

[[Books/Aritmetica-I/00 - Indice e piano di studio|Torna all’indice]]
