# Ricorrenze e successioni

Prerequisiti: [[Books/Aritmetica-I/02 - Naturali e induzione|induzione]], [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|conteggi e corrispondenze]], [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|coefficienti binomiali]]. Torna all'[[Books/Aritmetica-I/00 - Indice e piano di studio|indice]].

## Un rettangolo nasconde rettangoli più piccoli

Abbiamo una griglia di due righe e $n$ colonne. Vogliamo ricoprirla con domino rettangolari, ciascuno formato da due caselle adiacenti, senza sovrapposizioni e senza lasciare vuoti. Possiamo ruotare i domino. Quante tassellazioni esistono?

Disegnare tutte le possibilità funziona per poche colonne, ma diventa presto scomodo. Cerchiamo invece una scelta iniziale dopo la quale rimanga un problema dello stesso tipo, più piccolo. Indichiamo con $T_n$ il numero cercato.

Per $n\geq2$, guardiamo la casella in alto a sinistra. Il domino che la copre può essere verticale oppure orizzontale.

Se è **verticale**, occupa tutta la prima colonna. Togliendolo resta una griglia $2\times(n-1)$. La rimozione è una corrispondenza biunivoca: ogni tassellazione del rettangolo restante si completa in un solo modo aggiungendo il domino verticale. Questo caso conta dunque $T_{n-1}$ tassellazioni.

Se è **orizzontale**, occupa le prime due caselle della riga superiore. La casella in basso a sinistra non può essere coperta verticalmente, perché la casella sopra è già occupata. Deve quindi appartenere a un secondo domino orizzontale. Togliendo i due domino rimane una griglia $2\times(n-2)$, e anche questa rimozione è una biezione. Il secondo caso conta $T_{n-2}$ tassellazioni.

I casi sono disgiunti, perché il primo domino non può avere entrambe le orientazioni, ed esauriscono tutte le possibilità. Per la regola della somma,

$$
\boxed{T_n=T_{n-1}+T_{n-2}\qquad(n\geq2).}
$$

Per avviare il calcolo servono i valori iniziali:

$$
T_0=1,\qquad T_1=1.
$$

Il primo conta l'unica tassellazione del rettangolo vuoto: non mettere alcun domino. Il secondo conta l'unico domino verticale. Il valore $T_0=1$ consente alla ricorrenza di dare correttamente anche $T_2=2$.

### Esempio svolto: cinque colonne

Applichiamo la regola sempre allo stesso modo:

$$
\begin{aligned}
T_2&=T_1+T_0=2,\\
T_3&=T_2+T_1=3,\\
T_4&=T_3+T_2=5,\\
T_5&=T_4+T_3=8.
\end{aligned}
$$

Non abbiamo dovuto disegnare otto figure: abbiamo dimostrato una regola che costruisce e conta tutte le figure, senza ripetizioni. Questa è la funzione di una **ricorrenza** in un problema combinatorio.

## Una regola e i suoi dati iniziali

Una **successione reale** è una funzione

$$
a:\mathbb N\longrightarrow\mathbb R,\qquad n\longmapsto a_n,
$$

dove $\mathbb N=\{0,1,2,\ldots\}$. Il simbolo $a_n$ indica un termine; $(a_n)_{n\geq0}$ indica l'intera successione.

Una descrizione per ricorrenza spiega come ottenere nuovi termini da quelli già disponibili. Per esempio, assegnati $p,q,u,v\in\mathbb R$, consideriamo

$$
a_0=u,\qquad a_1=v,\qquad
a_{n+2}=p a_{n+1}+q a_n\quad(n\geq0).
$$

Queste istruzioni definiscono una successione: prima calcoliamo $a_2=pv+qu$, poi $a_3=pa_2+qv$, e continuiamo. Ogni calcolo richiede soltanto valori già definiti e produce un numero reale. Non ci sono scelte da compiere.

Dimostriamo precisamente l'**unicità**. Siano $(a_n)$ e $(b_n)$ due successioni con la stessa ricorrenza e gli stessi dati iniziali. Usiamo l'induzione sulla proprietà

$$
P(n):\quad a_n=b_n\ \text{e}\ a_{n+1}=b_{n+1}.
$$

La base $P(0)$ è data dalle condizioni iniziali. Se vale $P(n)$, allora

$$
a_{n+2}=pa_{n+1}+qa_n=pb_{n+1}+qb_n=b_{n+2}.
$$

Insieme ad $a_{n+1}=b_{n+1}$, questa uguaglianza dà $P(n+1)$. Dunque i termini coincidono per ogni indice.

La prova ci consegna un criterio molto utile: **per identificare una successione basta verificare la ricorrenza e i dati iniziali**. Non serve confrontare uno per uno infiniti termini.

Definiamo ora i numeri di Fibonacci con la convenzione

$$
F_0=0,\qquad F_1=1,\qquad F_{n+2}=F_{n+1}+F_n.
$$

La successione $G_n=F_{n+1}$ ha $G_0=F_1=1$, $G_1=F_2=1$ e soddisfa la stessa ricorrenza di $T_n$. Per unicità,

$$
\boxed{T_n=F_{n+1}\qquad(n\geq0).}
$$

> [!warning] Attenzione — Stessa legge, successioni diverse
> La relazione $a_{n+2}=a_{n+1}+a_n$ non identifica da sola Fibonacci. I dati $(0,1)$ producono $F_n$; i dati $(1,1)$ producono $T_n=F_{n+1}$. Controllare gli indici iniziali evita uno spostamento di tutta la risposta.

## Contare ancora, questa volta per blocchi

Possiamo descrivere ogni tassellazione leggendo da sinistra a destra due tipi di blocco: un domino verticale, di larghezza $1$, oppure una coppia di domino orizzontali, di larghezza $2$. Il ragionamento sulla prima colonna, ripetuto sul rettangolo restante, dimostra che questa scomposizione esiste ed è unica.

Fissiamo il numero $k$ dei blocchi di larghezza $2$. Questi occupano $2k$ colonne; rimangono $n-2k$ blocchi verticali. I blocchi complessivi sono quindi

$$
k+(n-2k)=n-k.
$$

Per ordinare i blocchi basta scegliere quali $k$ delle $n-k$ posizioni ospitino i blocchi doppi. Si ottengono $\binom{n-k}{k}$ tassellazioni. Il numero $k$ varia da $0$ a $\lfloor n/2\rfloor$, dove $\lfloor x\rfloor$ è il massimo intero non superiore a $x$. Le famiglie corrispondenti a valori diversi di $k$ sono disgiunte. Pertanto

$$
\boxed{T_n=\sum_{k=0}^{\lfloor n/2\rfloor}\binom{n-k}{k}=F_{n+1}.}
$$

Per $n=5$ ritroviamo

$$
T_5=\binom50+\binom41+\binom32=1+4+3=8.
$$

Per $n=0$ la somma contiene soltanto $\binom00=1$, dunque comprende anche il caso vuoto. L'identità non è una coincidenza algebrica: le due espressioni contano la stessa famiglia di oggetti, classificata in due modi diversi.

## Dalla ricorrenza a un'equazione quadratica

La relazione

$$
a_{n+2}=pa_{n+1}+qa_n
$$

è una **ricorrenza lineare omogenea del secondo ordine a coefficienti costanti**. È lineare perché i termini compaiono alla prima potenza e non sono moltiplicati tra loro; è omogenea perché non c'è un termine aggiuntivo indipendente dalla successione. I coefficienti $p,q$ non dipendono da $n$. Quando $q\ne0$, la regola coinvolge effettivamente entrambi i termini precedenti.

Per trovare una formula esplicita, osserviamo prima una proprietà. Se $(b_n)$ e $(c_n)$ soddisfano la ricorrenza, per ogni $A,B\in\mathbb R$ anche $d_n=Ab_n+Bc_n$ la soddisfa. Infatti

$$
\begin{aligned}
d_{n+2}
&=A(pb_{n+1}+qb_n)+B(pc_{n+1}+qc_n)\\
&=p(Ab_{n+1}+Bc_{n+1})+q(Ab_n+Bc_n)\\
&=pd_{n+1}+qd_n.
\end{aligned}
$$

Cerchiamo dunque alcune soluzioni semplici da combinare. Proviamo con $b_n=\lambda^n$, dove $\lambda\ne0$. La scelta è naturale perché spostare l'indice di una potenza equivale a moltiplicarla per una costante. Sostituendo,

$$
\lambda^{n+2}=p\lambda^{n+1}+q\lambda^n.
$$

Dividendo per $\lambda^n$, otteniamo una condizione che non dipende più dall'indice:

$$
\boxed{\lambda^2-p\lambda-q=0.}
$$

È l'**equazione caratteristica**. Ogni sua radice non nulla fornisce una soluzione esponenziale della ricorrenza.

Supponiamo ora che l'equazione abbia **due radici reali distinte e non nulle** $r,s$. Allora ogni successione della forma

$$
a_n=Ar^n+Bs^n
$$

soddisfa la ricorrenza. Ma abbiamo trovato davvero tutte le soluzioni? Questa domanda richiede un argomento: produrre molte soluzioni non dimostra che non ne esistano altre.

Prendiamo una soluzione qualunque, con $a_0=u$ e $a_1=v$. Cerchiamo $A,B$ in modo che la formula proposta abbia gli stessi primi termini:

$$
\begin{cases}
A+B=u,\\
Ar+Bs=v.
\end{cases}
$$

Sostituendo $B=u-A$ nella seconda equazione si trova

$$
A=\frac{v-su}{r-s},\qquad B=\frac{ru-v}{r-s}.
$$

I denominatori sono diversi da zero perché $r\ne s$. La successione costruita soddisfa sia la ricorrenza sia i dati iniziali della soluzione scelta. Per l'unicità già provata, coincide con essa a ogni indice. Abbiamo così dimostrato la **completezza della formula**, senza richiedere il linguaggio degli spazi vettoriali.

> [!warning] Attenzione — Una soluzione della legge può fallire i dati
> Per Fibonacci, $\varphi^n$ con $\varphi=(1+\sqrt5)/2$ soddisfa la ricorrenza, ma al posto zero vale $1$, mentre $F_0=0$. L'equazione caratteristica risolve la legge ricorrente; le costanti vanno poi scelte usando tutti i dati iniziali.

## Due formule esplicite, con verifica

### Esempio svolto: una differenza di potenze

Risolviamo

$$
a_{n+1}=3a_n-2a_{n-1}\quad(n\geq1),\qquad a_0=0,\quad a_1=1.
$$

È la stessa forma studiata sopra, riscritta con gli indici spostati. L'equazione caratteristica è

$$
\lambda^2-3\lambda+2=(\lambda-1)(\lambda-2)=0.
$$

Le radici sono distinte e non nulle, quindi scriviamo $a_n=A+B2^n$. Le condizioni iniziali diventano

$$
A+B=0,\qquad A+2B=1.
$$

Sottraendo la prima equazione dalla seconda otteniamo $B=1$, poi $A=-1$. Dunque

$$
\boxed{a_n=2^n-1.}
$$

Controlliamo: $a_0=0$, $a_1=1$ e, per $n\geq1$,

$$
3(2^n-1)-2(2^{n-1}-1)=2^{n+1}-1=a_{n+1}.
$$

I primi termini sono $0,1,3,7,15$. I controlli sui primi termini sono utili per scoprire un errore; la verifica simbolica e l'unicità giustificano la formula per ogni $n$.

### Esempio svolto: la formula di Binet

Per Fibonacci l'equazione caratteristica è

$$
\lambda^2-\lambda-1=0,
$$

con radici reali distinte e non nulle

$$
\varphi=\frac{1+\sqrt5}{2},\qquad
\psi=\frac{1-\sqrt5}{2}.
$$

Scriviamo $F_n=A\varphi^n+B\psi^n$. Da $F_0=0$ segue $B=-A$, mentre $F_1=1$ dà

$$
1=A(\varphi-\psi)=A\sqrt5.
$$

Ne segue la **formula di Binet**:

$$
\boxed{F_n=\frac{\varphi^n-\psi^n}{\sqrt5}\qquad(n\geq0).}
$$

La ricorrenza è soddisfatta perché $\varphi^2=\varphi+1$ e $\psi^2=\psi+1$; i dati iniziali sono stati imposti nel sistema. L'unicità conclude la dimostrazione. In particolare,

$$
\boxed{T_n=\frac{\varphi^{n+1}-\psi^{n+1}}{\sqrt5}.}
$$

La presenza di numeri irrazionali non impedisce al risultato di essere intero: la formula rappresenta la stessa successione costruita sommando interi. Non occorre dimostrare separatamente una cancellazione dei radicali per ogni esponente.

### Se le radici sono complesse

Se conosci i numeri complessi, puoi usare lo stesso metodo anche quando il polinomio non ha radici reali. La verifica delle potenze, il sistema per $A,B$ e la prova di unicità funzionano senza cambiamenti in $\mathbb C$, purché le radici siano distinte e non nulle. Questo è il motivo del richiamo ai complessi nella lezione: permettono di trattare anche equazioni caratteristiche come $\lambda^2+1=0$.

Per esempio, per $a_{n+2}=-a_n$, $a_0=1$, $a_1=0$, le radici sono $i$ e $-i$, dove $i^2=-1$. La formula

$$
a_n=\frac{i^n+(-i)^n}{2}
$$

ha i dati iniziali richiesti e soddisfa la ricorrenza, perché entrambe le basi hanno quadrato $-1$. È dunque la successione $1,0,-1,0,1,0,\ldots$. Benché la scrittura usi numeri complessi, i valori sono reali: lo garantisce anche la costruzione ricorrente a partire da dati e coefficienti reali. Questo esempio è un completamento didattico; il resto del capitolo si può leggere lavorando soltanto nei reali.

## Approfondimento: quando le radici coincidono

Questo paragrafo è un'integrazione didattica. Il teorema precedente richiede due radici distinte; se la radice è doppia, ripetere la stessa potenza non fornisce due soluzioni diverse.

Supponiamo che il polinomio caratteristico sia $(\lambda-r)^2$ con $r\ne0$. La ricorrenza è allora

$$
a_{n+2}=2r a_{n+1}-r^2a_n.
$$

Oltre a $r^n$, proviamo $nr^n$. Sostituendo e portando tutto a sinistra, otteniamo

$$
(n+2)r^{n+2}-2r(n+1)r^{n+1}+r^2nr^n
=r^{n+2}\bigl[(n+2)-2(n+1)+n\bigr]=0.
$$

Le combinazioni hanno quindi forma $(A+Bn)r^n$. Esse rappresentano tutte le soluzioni: dati $a_0=u,a_1=v$, basta porre $A=u$ e $B=v/r-u$, poi applicare l'unicità. Per esempio, $a_{n+2}=2a_{n+1}-a_n$, $a_0=0,a_1=1$, ha soluzione $a_n=n$.

> [!warning] Attenzione — Non applicare una formula fuori dalle ipotesi
> Con radice doppia $r$, la scrittura $Ar^n+Br^n=(A+B)r^n$ non permette di assegnare due dati iniziali arbitrari. La dimostrazione per radici distinte divide per $r-s$: quando $r=s$ quel passaggio non è lecito. Anche i casi con radice nulla richiedono un trattamento specifico; non sono compresi negli enunciati sulle formule risolutive qui dimostrati.

## Fonti

Il percorso sulle ricorrenze, l'esempio $a_{n+1}=3a_n-2a_{n-1}$ e il richiamo a Fibonacci provengono dalla [[Notes/Aritmetica/Lectures/2026-09-30 - Successioni ricorrenti e formule combinatorie|nota del 30 settembre]] e dai passaggi pertinenti della [[_transcripts/Aritmetica/2026-09-30 - Successioni ricorrenti e formule combinatorie|trascrizione del 30 settembre]]. Le tassellazioni e il conteggio per blocchi sono sviluppati nella [[Notes/Aritmetica/Lectures/2026-10-06 - Conteggio combinatorio e principio di inclusione-esclusione|nota combinatoria del 6 ottobre]] e nella [[_transcripts/Aritmetica/2026-10-06 - Conteggio combinatorio e principio di inclusione-esclusione|trascrizione combinatoria del 6 ottobre]].

La prova dettagliata di unicità, la completezza tramite il sistema iniziale, la derivazione completa di Binet, l'approfondimento sulla radice doppia e gli esercizi sono integrazioni dell'esposizione. Le formule sono ricostruite e verificate matematicamente nei punti in cui l'ASR è rumoroso.

## Esercizi per verificare la comprensione

Gli esercizi 1–6 sono fondamentali; 7–8 collegano la ricorrenza a nuove famiglie combinatorie.

1. Calcola $T_n$ per $0\leq n\leq7$ e $F_n$ per $0\leq n\leq8$. Spiega perché $T_0=1$ è compatibile con il conteggio.

> [!tip]- Riscontro 1
> Si ottengono $T_0,\ldots,T_7=1,1,2,3,5,8,13,21$ e $F_0,\ldots,F_8=0,1,1,2,3,5,8,13,21$. A ogni passo sommi i due termini precedenti. La tassellazione vuota è un unico oggetto: la scelta di non collocare tessere. Si verifica così anche $T_n=F_{n+1}$ negli indici richiesti.

2. Conta le tassellazioni di una griglia $2\times6$ dividendole per numero $k$ di coppie orizzontali. Quante hanno esattamente due coppie?

> [!tip]- Riscontro 2
> I contributi per $k=0,1,2,3$ sono $\binom60=1$, $\binom51=5$, $\binom42=6$, $\binom33=1$. Il totale è $13$; quelle con due coppie sono $6$. Per $k=2$ ordini due blocchi doppi e due verticali, quindi scegli due posizioni su quattro.

3. Risolvi $a_{n+2}=5a_{n+1}-6a_n$ per $n\geq0$, con $a_0=2$ e $a_1=5$. Calcola anche $a_4$.

> [!tip]- Riscontro 3
> Il polinomio $(\lambda-2)(\lambda-3)$ suggerisce $a_n=A2^n+B3^n$. Il sistema $A+B=2$, $2A+3B=5$ dà $A=B=1$. Dunque $a_n=2^n+3^n$ e $a_4=16+81=97$. La formula soddisfa la ricorrenza e i dati, quindi l'unicità la identifica con la successione cercata.

4. Siano $(a_n)$ e $(b_n)$ successioni reali che soddisfano entrambe $x_{n+2}=px_{n+1}+qx_n$, con $p,q$ fissati. Dimostra che, se $a_0=b_0$ e $a_1=b_1$, allora $a_n=b_n$ per ogni $n$. Occorre supporre $q\ne0$?

> [!tip]- Riscontro 4
> Poni $d_n=a_n-b_n$. Hai $d_0=d_1=0$ e $d_{n+2}=pd_{n+1}+qd_n$. Per induzione sulla coppia di termini consecutivi, da $d_n=d_{n+1}=0$ segue $d_{n+2}=0$. Dunque $d_n=0$ sempre. Non occorre $q\ne0$: non abbiamo diviso per $q$.

5. Uno studente risolve $a_{n+2}=2a_{n+1}-a_n$ per $n\geq0$, con $a_0=0,a_1=1$, scrivendo $a_n=A1^n+B1^n$; il sistema iniziale risulta impossibile. Conclude che la successione non esiste. Individua l'errore e trova la successione.

> [!tip]- Riscontro 5
> La radice $1$ è doppia: la famiglia proposta contiene soltanto successioni costanti e non comprende tutte le soluzioni. La costruzione ricorrente assicura invece l'esistenza. La formula corretta è $a_n=n$: parte da $0,1$ e verifica $n+2=2(n+1)-n$.

6. Dimostra per induzione l'identità di Cassini
   $$F_{n+1}F_{n-1}-F_n^2=(-1)^n\qquad(n\geq1).$$

> [!tip]- Riscontro 6
> Per $n=1$ il lato sinistro è $1\cdot0-1=-1$. Poni $D_n=F_{n+1}F_{n-1}-F_n^2$. Usando $F_{n+2}=F_{n+1}+F_n$ e $F_{n-1}=F_{n+1}-F_n$, trovi
> $$D_{n+1}=F_{n+1}F_n+F_n^2-F_{n+1}^2=-D_n.$$
> Da $D_1=-1$, il segno cambia a ogni passo: $D_n=(-1)^n$.

7. Per $n\geq0$, conta i sottoinsiemi di $\{1,\ldots,n\}$ che non contengono due interi consecutivi. Per $n=0$ l'insieme è vuoto. Trova una ricorrenza e il numero per $n=5$; poi conta quelli di cardinalità fissata $k\in\mathbb N$ e ricava una somma binomiale.

> [!tip]- Riscontro 7
> Se $n\geq2$, separa i sottoinsiemi che non contengono $n$, contati da $C_{n-1}$, da quelli che lo contengono e quindi escludono $n-1$, contati da $C_{n-2}$. Hai $C_0=1,C_1=2$, dunque $C_n=F_{n+2}$ e $C_5=13$. Per $1\leq k\leq\lfloor(n+1)/2\rfloor$, scrivi gli elementi come $x_1<\cdots<x_k$, con $x_{i+1}\geq x_i+2$. La trasformazione $y_i=x_i-(i-1)$ dà una successione strettamente crescente di $k$ elementi in $\{1,\ldots,n-k+1\}$, ed è reversibile. Il numero è $\binom{n-k+1}{k}$; per $k=0$ è $1$, per $k>\lfloor(n+1)/2\rfloor$ è $0$. Quindi
> $$F_{n+2}=\sum_{k=0}^{\lfloor(n+1)/2\rfloor}\binom{n-k+1}{k}.$$

8. Modifica il problema delle tassellazioni: ogni domino verticale può essere rosso o blu, mentre quelli orizzontali hanno un unico colore. Tutti i colori distinguono le tassellazioni. Per $n\in\mathbb N$, trova dati iniziali, ricorrenza e formula esplicita del numero $P_n$ di tassellazioni colorate di una griglia $2\times n$. Calcola $P_4$.

> [!tip]- Riscontro 8
> Il caso verticale ha due colori e lascia $P_{n-1}$ completamenti per ciascuno; il caso orizzontale lascia $P_{n-2}$ completamenti. Dunque $P_0=1,P_1=2$ e $P_n=2P_{n-1}+P_{n-2}$ per $n\geq2$. Le radici sono $r=1+\sqrt2$, $s=1-\sqrt2$. La formula
> $$P_n=\frac{r^{n+1}-s^{n+1}}{2\sqrt2}$$
> soddisfa la ricorrenza e dà $P_0=1$, $P_1=r+s=2$; l'unicità conclude. I primi termini sono $1,2,5,12,29$, quindi $P_4=29$.

Il capitolo è acquisito quando sai giustificare i casi che producono una ricorrenza, fissare correttamente i dati iniziali e dimostrare che una formula trovata descrive tutti i termini. Nei problemi nuovi, prova a spiegare quale parte puoi rimuovere e perché il completamento non introduce omissioni o ripetizioni.


---

[[Books/Aritmetica-I/06 - Inclusione ed esclusione|← 06 · Inclusione ed esclusione]] · [[Books/Aritmetica-I/00 - Indice e piano di studio|Indice]] · [[Books/Aritmetica-I/08 - Divisione euclidea e identita di Bezout|08 · Divisione euclidea e identità di Bézout →]]
