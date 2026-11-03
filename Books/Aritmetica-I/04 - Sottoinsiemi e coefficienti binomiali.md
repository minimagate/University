# Sottoinsiemi e coefficienti binomiali

Prerequisiti: [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cardinalità, prodotto e permutazioni]] e [[Books/Aritmetica-I/02 - Naturali e induzione|induzione]]. Torna all'[[Books/Aritmetica-I/00 - Indice e piano di studio|indice del libro]].

## Scegliere un gruppo, senza assegnare posti

Fra sei studenti vogliamo scegliere una commissione di tre persone. Se scriviamo prima Anna, poi Bruno, poi Carla, abbiamo scelto la stessa commissione che otterremmo scrivendo Carla, Anna, Bruno. Il risultato è un sottoinsieme: l'ordine con cui lo abbiamo costruito non ne fa parte.

Possiamo comunque cominciare contando le liste ordinate, perché sappiamo farlo: ci sono $6\cdot5\cdot4=120$ liste di tre studenti distinti. Ogni commissione compare però in $3!=6$ liste, una per ogni ordine dei suoi tre membri. Le commissioni sono quindi

$$
\frac{120}{6}=20.
$$

Questo esempio contiene il passaggio centrale del capitolo: una descrizione può avere più informazioni dell'oggetto che vogliamo contare. Possiamo dimenticare l'informazione superflua, purché controlliamo quante descrizioni corrispondano a ogni risultato.

## Tutti i sottoinsiemi come risposte sì o no

L'**insieme delle parti** di un insieme $X$ è

$$
\mathcal P(X)=\{A:A\subseteq X\}.
$$

Se $X=\{a,b\}$, allora $\mathcal P(X)=\{\varnothing,\{a\},\{b\},X\}$. I suoi elementi sono insiemi. In particolare il vuoto è un elemento di $\mathcal P(X)$, perché è un sottoinsieme di $X$.

Per specificare $A\subseteq X$, basta rispondere per ogni $x\in X$ alla domanda «$x$ appartiene ad $A$?». Registriamo le risposte mediante la **funzione caratteristica**

$$
\chi_A:X\longrightarrow\{0,1\},\qquad
\chi_A(x)=
\begin{cases}
1,&x\in A,\\
0,&x\notin A.
\end{cases}
$$

La corrispondenza $A\mapsto\chi_A$ è una biezione fra $\mathcal P(X)$ e l'insieme $\{0,1\}^X$ delle funzioni da $X$ a $\{0,1\}$. Per provarlo, costruiamo l'inversa: a una funzione $f:X\to\{0,1\}$ associamo

$$
A_f=\{x\in X:f(x)=1\}.
$$

Partendo da $A$, questa operazione restituisce $A$, perché raccoglie esattamente gli elementi sui quali $\chi_A$ vale $1$. Partendo da $f$, restituisce $f$: la caratteristica di $A_f$ vale $1$ proprio dove $f$ vale $1$, e altrove entrambe valgono $0$.

Se $|X|=n$, il conteggio delle funzioni del capitolo precedente dà dunque

$$
\boxed{|\mathcal P(X)|=2^n.}
$$

Per $n=0$ la formula dice $|\mathcal P(\varnothing)|=1$: infatti $\mathcal P(\varnothing)=\{\varnothing\}$. C'è un solo modo di non scegliere alcun elemento.

## Togliere l'ordine: i coefficienti binomiali

Fissiamo $n\in\mathbb N$ e un insieme $X$ di $n$ elementi. Per $0\leq r\leq n$, chiamiamo **coefficiente binomiale**

$$
\binom nr=\bigl|\{A\subseteq X:|A|=r\}\bigr|.
$$

Il numero dipende soltanto da $n$ e $r$: una biezione fra due insiemi di $n$ elementi trasferisce, tramite le immagini, i sottoinsiemi di cardinalità $r$ dell'uno in quelli dell'altro.

Per calcolarlo consideriamo le iniezioni $f:[r]\to X$, dove $[r]=\{1,\ldots,r\}$ e $[0]=\varnothing$. Esse descrivono liste di $r$ elementi distinti. Il loro numero è

$$
\frac{n!}{(n-r)!}.
$$

Mandiamo ogni iniezione nella sua immagine $f([r])$. Quali iniezioni producono un sottoinsieme fissato $A$ di $r$ elementi? Precisamente le biezioni $[r]\to A$, cioè i suoi $r!$ ordinamenti. Dividendo le iniezioni in famiglie secondo l'immagine, otteniamo $\binom nr$ famiglie disgiunte, tutte di cardinalità $r!$. Pertanto

$$
\frac{n!}{(n-r)!}=r!\binom nr,
\qquad
\boxed{\binom nr=\frac{n!}{r!(n-r)!}}.
$$

La divisione è giustificata dall'uniformità: ogni sottoinsieme ha esattamente lo stesso numero di descrizioni ordinate. Il ragionamento comprende $r=0$, perché esiste una sola iniezione vuota e $0!=1$.

I casi estremi hanno anche una lettura immediata:

$$
\binom n0=\binom nn=1,\qquad
\binom n1=n\quad(n\geq1).
$$

Per ogni intero $r$ fuori dall'intervallo $0\leq r\leq n$ poniamo inoltre $\binom nr=0$. Un sottoinsieme non può avere cardinalità negativa o maggiore di $n$. La formula con i fattoriali si usa soltanto nell'intervallo consentito: qui non definiamo fattoriali negativi.

> [!warning] Attenzione — Dividere richiede una molteplicità uniforme
> «Ho contato troppo» non basta a giustificare una divisione. Bisogna spiegare quante volte compare **ciascun** risultato. Nella scelta della commissione il divisore è $3!$, perché ogni commissione ha sei ordinamenti. Se assegniamo invece tre cariche diverse, quegli ordinamenti sono risultati diversi e il numero resta $120$.

Il complementare dà una prima identità senza calcoli. Se $|A|=r$, allora $|X\setminus A|=n-r$. L'operazione $A\mapsto X\setminus A$ è la propria inversa, quindi è una biezione e dimostra la **simmetria**

$$
\boxed{\binom nr=\binom n{n-r}}\qquad(0\leq r\leq n).
$$

Scegliere chi entra equivale a scegliere chi rimane fuori. Per esempio, scegliere sette persone fra nove richiede lo stesso numero di scelte che escluderne due: $\binom97=\binom92=9\cdot8/2=36$.

## Pascal: distinguere un elemento

Prendiamo un insieme $X$ con $n+1$ elementi e fissiamo $x\in X$. Per contare i suoi sottoinsiemi di $r$ elementi, separiamoli secondo la presenza di $x$.

Quelli che non contengono $x$ sono i sottoinsiemi di $r$ elementi di $X\setminus\{x\}$: sono $\binom nr$. Per quelli che contengono $x$, togliere $x$ dà una biezione con i sottoinsiemi di $r-1$ elementi di $X\setminus\{x\}$: sono $\binom n{r-1}$. I casi sono disgiunti ed esauriscono le possibilità. Abbiamo dimostrato l'**identità di Pascal**:

$$
\boxed{\binom{n+1}r=\binom nr+\binom n{r-1}}
\qquad(n\geq0,\ 0\leq r\leq n+1).
$$

Ai bordi la convenzione dei coefficienti nulli esprime il caso impossibile: per $r=0$ nessun sottoinsieme contiene $x$; per $r=n+1$ nessuno lo esclude.

Partendo da $\binom00=1$, Pascal permette di costruire tutte le righe successive:

$$
\begin{array}{c|rrrrr}
n=0&1\\
n=1&1&1\\
n=2&1&2&1\\
n=3&1&3&3&1\\
n=4&1&4&6&4&1
\end{array}
$$

Ogni numero interno è la somma dei due numeri della riga precedente che hanno indice inferiore uguale o diminuito di uno. La tabella, chiamata triangolo di Pascal o di Tartaglia, conserva così la memoria di una scelta: prendere oppure escludere l'elemento fissato.

## Newton: scegliere un termine da ogni parentesi

Perché gli stessi numeri compaiono nello sviluppo di una potenza? Consideriamo $n$ parentesi, distinguendole con le etichette $1,\ldots,n$:

$$
(a+b)^n=\underbrace{(a+b)\cdots(a+b)}_{n\text{ fattori}}.
$$

La distributività costruisce ogni termine scegliendo $a$ oppure $b$ da ciascuna parentesi. Per ottenere $a^k b^{n-k}$ dobbiamo scegliere le $k$ parentesi dalle quali prendere $a$. Le scelte sono i sottoinsiemi di $k$ elementi di $[n]$, quindi sono $\binom nk$. Raggruppando tutti i termini uguali troviamo il **binomio di Newton**:

$$
\boxed{(a+b)^n=\sum_{k=0}^n\binom nk a^k b^{n-k}}.
$$

È un'identità fra polinomi e vale, in particolare, per ogni $a,b\in\mathbb R$ e $n\in\mathbb N$. I fattori con esponente zero si interpretano come il polinomio costante $1$, anche nelle successive sostituzioni numeriche. Per $n=0$ entrambi i membri sono il prodotto vuoto $1$.

Possiamo anche dimostrarla per induzione, usando Pascal. Il caso $n=0$ è appena verificato. Supponiamo vera la formula per $n$. Moltiplicando per $a+b$ otteniamo

$$
(a+b)^{n+1}
=\sum_{i=0}^n\binom ni a^{i+1}b^{n-i}
+\sum_{i=0}^n\binom ni a^i b^{n+1-i}.
$$

Vogliamo riunire i monomi con la stessa potenza di $a$. Nella prima somma poniamo $j=i+1$: quando $i$ va da $0$ a $n$, $j$ va da $1$ a $n+1$, e $n-i=n+1-j$. Nella seconda basta rinominare $i$ in $j$. Dunque

$$
(a+b)^{n+1}
=\sum_{j=1}^{n+1}\binom n{j-1}a^j b^{n+1-j}
+\sum_{j=0}^n\binom nj a^j b^{n+1-j}.
$$

La prima somma può includere $j=0$ perché $\binom n{-1}=0$; la seconda può includere $j=n+1$ perché $\binom n{n+1}=0$. Ora gli estremi coincidono e possiamo raccogliere:

$$
\begin{aligned}
(a+b)^{n+1}
&=\sum_{j=0}^{n+1}
\left(\binom n{j-1}+\binom nj\right)a^j b^{n+1-j}\\
&=\sum_{j=0}^{n+1}\binom{n+1}j a^j b^{n+1-j}.
\end{aligned}
$$

L'ultima uguaglianza è Pascal. È proprio la formula richiesta per $n+1$, quindi l'induzione è conclusa.

**Esempio svolto: un coefficiente senza sviluppare tutto.** Cerchiamo il coefficiente di $x^2$ in $(2x-1)^4$. In Newton poniamo $a=2x$, $b=-1$. Il termine di indice $k$ è $\binom4k 2^k x^k(-1)^{4-k}$; soltanto $k=2$ produce $x^2$. Il coefficiente è

$$
\binom42 2^2(-1)^2=6\cdot4=24.
$$

Il controllo completo dà $(2x-1)^4=16x^4-32x^3+24x^2-8x+1$. Il segno dipende da quante volte abbiamo scelto $-1$, non dall'esponente di $x$ preso isolatamente.

## Somme binomiali e parità

Dividiamo $\mathcal P(X)$ in famiglie secondo la cardinalità dei sottoinsiemi. Sono famiglie disgiunte, con cardinalità $\binom n0,\ldots,\binom nn$. Siccome $|\mathcal P(X)|=2^n$,

$$
\boxed{\sum_{k=0}^n\binom nk=2^n}\qquad(n\geq0).
$$

È anche Newton con $a=b=1$. Più in generale, mettendo $a=t$, $b=1$, otteniamo $\sum_{k=0}^n\binom nk t^k=(1+t)^n$: scegliere una sostituzione può trasformare una somma in una potenza.

Che cosa succede con $t=-1$? Per $n\geq1$ troviamo

$$
\sum_{k=0}^n(-1)^k\binom nk=0.
$$

Gli indici pari contribuiscono positivamente, quelli dispari negativamente. Se $E$ e $O$ sono rispettivamente il numero di sottoinsiemi di cardinalità pari e dispari, le due identità dicono $E+O=2^n$ ed $E-O=0$. Pertanto

$$
\boxed{E=O=2^{n-1}}\qquad(n\geq1).
$$

Una biezione spiega direttamente questa uguaglianza. Fissiamo $x\in X$ e cambiamo soltanto la sua presenza:

$$
T(A)=
\begin{cases}
A\cup\{x\},&x\notin A,\\
A\setminus\{x\},&x\in A.
\end{cases}
$$

La cardinalità cambia di $1$ o di $-1$, quindi la parità si inverte. Inoltre $T(T(A))=A$: la seconda applicazione annulla la prima. La restrizione di $T$ è dunque una biezione fra sottoinsiemi di cardinalità pari e dispari. In termini di funzioni caratteristiche, abbiamo invertito una sola risposta sì/no.

> [!warning] Attenzione — Complementare e cambio di parità
> Il complementare ha cardinalità $n-|A|$: inverte la parità soltanto quando $n$ è dispari. Se $n=4$, il complementare di un sottoinsieme di due elementi ha ancora due elementi. Cambiare la presenza di **un solo elemento** funziona invece per ogni $n\geq1$. Per $n=0$ non possiamo fissare quell'elemento: c'è un sottoinsieme pari e nessuno dispari, e la somma alternata vale $1$.

## Contare sottoinsiemi con un elemento segnato

Il **doppio conteggio** consiste nel descrivere uno stesso insieme finito in due modi. La parte decisiva è scegliere che cosa contare. Consideriamo, per $|X|=n\geq1$,

$$
\mathcal D=\{(A,a):A\subseteq X,\ a\in A\}.
$$

Un suo elemento è un sottoinsieme con un membro segnato. Se scegliamo prima $|A|=k$, ci sono $\binom nk$ sottoinsiemi e $k$ modi di segnare un elemento. Sommando sui valori possibili,

$$
|\mathcal D|=\sum_{k=0}^n k\binom nk.
$$

Se scegliamo prima $a$, abbiamo $n$ possibilità. Poi $a$ deve appartenere ad $A$, mentre ciascuno degli altri $n-1$ elementi può essere inserito oppure escluso. Equivalentemente, scegliamo un sottoinsieme qualsiasi di $X\setminus\{a\}$ e aggiungiamo $a$. Le possibilità sono $2^{n-1}$ per ogni $a$. Perciò

$$
\boxed{\sum_{k=0}^n k\binom nk=n2^{n-1}}\qquad(n\geq1).
$$

**Esempio svolto: commissione con portavoce.** Da quattro studenti scegliamo una commissione non vuota e un suo portavoce. Classificando per dimensione otteniamo

$$
1\binom41+2\binom42+3\binom43+4\binom44
=4+12+12+4=32.
$$

Scegliendo prima il portavoce, ci sono $4$ possibilità, poi $2^3=8$ modi di decidere quali altri studenti partecipino: $4\cdot8=32$. Il portavoce può anche restare solo. Per $n=0$ l'insieme delle coppie è vuoto e la somma vale $0$; teniamo quel caso separato dalla formula con $2^{n-1}$.

Quando una somma contiene un coefficiente binomiale moltiplicato per un indice, prova quindi a dare all'indice un ruolo: scegliere un membro, un posto, un elemento speciale. Una formula diventa più comprensibile quando entrambi i membri hanno lo stesso oggetto da contare.

## Fonti

La costruzione dell'insieme delle parti, le funzioni caratteristiche e il conteggio uniforme degli ordinamenti seguono [[Notes/Aritmetica/Lectures/2026-09-29 - Cardinalità e tecniche fondamentali del calcolo combinatorio|la nota del 29 settembre]], confrontata nelle parti pertinenti con [[_transcripts/Aritmetica/2026-09-29 - Cardinalità e tecniche fondamentali del calcolo combinatorio|la trascrizione del 29 settembre]]. Newton, il cambio d'indice e le somme binomiali sono sviluppati a partire da [[Notes/Aritmetica/Lectures/2026-09-30 - Successioni ricorrenti e formule combinatorie|la nota del 30 settembre]] e [[_transcripts/Aritmetica/2026-09-30 - Successioni ricorrenti e formule combinatorie|la relativa trascrizione]]. Il metodo del doppio conteggio e l'esercizio sulle intersezioni riprendono [[Notes/Aritmetica/Lectures/2026-10-06 - Conteggio combinatorio e principio di inclusione-esclusione|la nota del 6 ottobre]], confrontata con [[_transcripts/Aritmetica/2026-10-06 - Conteggio combinatorio e principio di inclusione-esclusione|la trascrizione del 6 ottobre]].

Le dimostrazioni sono ricostruite con ipotesi e casi limite espliciti. Per l'identità $\sum_{k=0}^n k\binom nk=n2^{n-1}$, proposta nella lezione del 6 ottobre, viene esplicitata la dimostrazione mediante sottoinsiemi con un membro segnato. La distinzione fra complementare e cambio della presenza di un elemento, gli esempi e i riscontri sono sviluppi didattici di questa esposizione. L'identità di Vandermonde dell'ultimo esercizio estende il metodo dei casi disgiunti a due gruppi di oggetti.

## Esercizi per verificare la comprensione

Gli esercizi 1–6 sono fondamentali; 7–8 propongono collegamenti e trasferimenti.

1. Per $X=\{a,b,c\}$, elenca i sottoinsiemi di cardinalità $2$ e scrivi per ciascuno la terna $(\chi_A(a),\chi_A(b),\chi_A(c))$. Quanti elementi ha $\mathcal P(X)$? Quanti ne ha $\mathcal P(\varnothing)$?

> [!tip]- Riscontro 1
> I sottoinsiemi sono $\{a,b\}$, $\{a,c\}$, $\{b,c\}$; le terne corrispondenti sono $(1,1,0)$, $(1,0,1)$, $(0,1,1)$. Ogni terna di zeri e uni identifica un unico sottoinsieme, quindi $|\mathcal P(X)|=2^3=8$. L'insieme delle parti del vuoto ha un elemento, il vuoto stesso: la sua cardinalità è $1$.

2. Fra otto studenti distinti, di cui due fissati sono Anna e Bruno, scegli una commissione di tre persone che contenga Anna ed escluda Bruno. Quante commissioni esistono? Quante assegnazioni ottieni se devi anche designare un portavoce nella commissione?

> [!tip]- Riscontro 2
> Anna occupa già un posto e Bruno non è disponibile. Scegli gli altri due membri fra i sei studenti rimasti: $\binom62=15$. Ogni commissione ammette tre portavoce, quindi le assegnazioni sono $15\cdot3=45$. La scelta del portavoce distingue risultati con gli stessi membri.

3. Ricostruisci la prova combinatoria di Pascal per $n\geq0$ e $0\leq r\leq n+1$. Usala per calcolare $\binom53$, partendo dalla riga $1,4,6,4,1$ del triangolo.

> [!tip]- Riscontro 3
> Fissa un elemento in un insieme di $n+1$ elementi. I sottoinsiemi che lo escludono sono $\binom nr$; quelli che lo includono corrispondono, togliendolo, ai sottoinsiemi di $r-1$ elementi degli altri $n$. I casi sono disgiunti. Per il calcolo, $\binom53=\binom43+\binom42=4+6=10$. Ai bordi il caso impossibile ha coefficiente zero.

4. Trova il coefficiente di $x^3$ in $(2x-1)^5$ senza sviluppare l'intero polinomio. Calcola inoltre $\sum_{k=0}^5\binom5k$ e $\sum_{k=0}^5(-1)^k\binom5k$.

> [!tip]- Riscontro 4
> Il termine che contiene $x^3$ ha indice $k=3$: il coefficiente è $\binom53 2^3(-1)^2=10\cdot8=80$. Le due somme sono rispettivamente $(1+1)^5=32$ e $(1-1)^5=0$, per Newton. Il segno positivo del coefficiente nasce dai due fattori $-1$.

5. Un lettore sostiene: «Il complementare mette sempre in biezione i sottoinsiemi pari con quelli dispari». Trova un controesempio con $|X|=4$, correggi la dimostrazione per ogni insieme finito non vuoto e spiega il caso $X=\varnothing$.

> [!tip]- Riscontro 5
> Per $X=\{1,2,3,4\}$, $\{1,2\}$ e il suo complementare $\{3,4\}$ hanno entrambi cardinalità pari. Fissa invece $x\in X$ e inseriscilo se manca, oppure toglilo se è presente. L'operazione inverte la parità ed è la propria inversa: dà la biezione cercata. Nel vuoto c'è un solo sottoinsieme, pari, e nessuno dispari; l'uguaglianza non vale.

6. Siano $n\geq1$ e $1\leq k\leq n$. Conta in due modi le coppie $(A,a)$ con $A\subseteq[n]$, $|A|=k$ e $a\in A$, per dimostrare $k\binom nk=n\binom{n-1}{k-1}$. Verifica per $n=6$, $k=3$.

> [!tip]- Riscontro 6
> Scegliendo prima $A$ ottieni $\binom nk$ possibilità e poi $k$ scelte per $a$. Scegliendo prima $a$ ottieni $n$ possibilità; gli altri $k-1$ membri di $A$ si scelgono fra i restanti $n-1$, in $\binom{n-1}{k-1}$ modi. I due conteggi descrivono le stesse coppie. Numericamente, $3\binom63=3\cdot20=60$ e $6\binom52=6\cdot10=60$.

7. Sia $X$ un insieme di sei elementi. Quante coppie **ordinate** $(A,B)$ di sottoinsiemi di $X$ soddisfano $|A\cap B|=2$? Non sono imposti altri vincoli sulle cardinalità di $A$ e $B$.

> [!tip]- Riscontro 7
> Scegli prima $I=A\cap B$: ci sono $\binom62=15$ possibilità. Ogni elemento dei quattro rimanenti appartiene soltanto ad $A$, soltanto a $B$, oppure a nessuno dei due: tre possibilità. Non può appartenere a entrambi. Ottieni $\binom62 3^4=15\cdot81=1215$. Ogni coppia determina univocamente $I$ e le quattro scelte, quindi non c'è sovraconteggio. Scambiare $A$ e $B$ è consentito e, in generale, cambia la coppia.

8. Due gruppi disgiunti hanno rispettivamente $m$ e $n$ persone, con $m,n\in\mathbb N$. Per $0\leq r\leq m+n$, conta le commissioni di $r$ persone classificandole per il numero di membri del primo gruppo e dimostra l'**identità di Vandermonde**
   $$
   \binom{m+n}r=\sum_{k=0}^r\binom mk\binom n{r-k}.
   $$
   Verifica il conteggio per $m=4$, $n=3$, $r=3$. Usa i coefficienti nulli per le scelte impossibili.

> [!tip]- Riscontro 8
> Il conteggio diretto sceglie $r$ persone dall'unione: $\binom{m+n}r$. Fissato $k$, scegli $k$ persone dal primo gruppo e $r-k$ dal secondo, ottenendo $\binom mk\binom n{r-k}$ commissioni. Ogni commissione ha un unico valore di $k$, perciò i casi sono disgiunti ed esaustivi. Nell'esempio, la somma è $1\cdot1+4\cdot3+6\cdot3+4\cdot1=1+12+18+4=35=\binom73$. Per $r=0$ entrambi i membri valgono $1$, anche se uno o entrambi i gruppi sono vuoti.

Sai usare queste idee quando distingui una lista da un sottoinsieme e giustifichi ogni divisione contando le descrizioni di ciascun risultato. Per le identità, prova a nominare gli oggetti contati e a ricostruire entrambi i conteggi: è questo che permette di trasferire il metodo a una somma nuova.


---

[[Books/Aritmetica-I/03 - Contare attraverso le funzioni|← 03 · Contare attraverso le funzioni]] · [[Books/Aritmetica-I/00 - Indice e piano di studio|Indice]] · [[Books/Aritmetica-I/05 - Distribuzioni e ripetizioni|05 · Distribuzioni e ripetizioni →]]
