# Inclusione ed esclusione

Prerequisiti: [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|cardinalità e conteggio delle funzioni]] e [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|coefficienti binomiali e binomio di Newton]]. Torna all'[[Books/Aritmetica-I/00 - Indice e piano di studio|indice del libro]].

## Quando una somma conta troppo

Quanti interi da $1$ a $100$ sono divisibili per $3$ oppure per $5$? I multipli di $3$ sono $33$, quelli di $5$ sono $20$. Sommando otteniamo $53$, ma il numero $15$ compare in entrambi gli elenchi, come $30$, $45$, $60$, $75$ e $90$. Questi sei numeri sono stati contati due volte.

Per conservare una sola copia di ciascuno basta sottrarre una volta i numeri comuni:

$$
33+20-6=47.
$$

Il problema non dipende dalla divisibilità. Se due elenchi descrivono proprietà che possono verificarsi contemporaneamente, sommare le loro lunghezze produce ripetizioni. Il **principio di inclusione-esclusione** corregge queste ripetizioni, anche quando le proprietà sono molte.

Siano $A,B$ sottoinsiemi di un insieme finito $U$. Le tre regioni $A\setminus B$, $A\cap B$ e $B\setminus A$ sono disgiunte e ricoprono $A\cup B$. Nella somma $|A|+|B|$ la regione centrale compare due volte, mentre le altre compaiono una sola volta. Dunque

$$
\boxed{|A\cup B|=|A|+|B|-|A\cap B|.}
$$

Il **complementare** di $A$ rispetto a $U$ è $A^c=U\setminus A$. Poiché $A$ e $A^c$ sono disgiunti e ricoprono $U$,

$$
|A^c|=|U|-|A|.
$$

Nell'esempio iniziale, i numeri non divisibili né per $3$ né per $5$ sono quindi $100-47=53$. Abbiamo contato prima quelli con almeno una proprietà e poi li abbiamo tolti dal totale. È una strategia utile quando il vincolo desiderato dice «nessuno», «mai» o «tutti i valori devono comparire».

> [!warning] Attenzione — «Oppure» comprende anche il caso comune
> Nell'unione $A\cup B$, un elemento che appartiene a entrambi gli insiemi viene incluso. Se vogliamo gli elementi che appartengono a **uno solo** dei due insiemi, dobbiamo invece contare $|A|+|B|-2|A\cap B|$. Nell'esempio i numeri divisibili per esattamente uno fra $3$ e $5$ sono $33+20-12=41$.

Con tre insiemi la prima correzione non basta:

$$
\begin{aligned}
|A\cup B\cup C|
={}&|A|+|B|+|C|\\
&-|A\cap B|-|A\cap C|-|B\cap C|\\
&+|A\cap B\cap C|.
\end{aligned}
$$

Perché aggiungere l'intersezione tripla? Un suo elemento è stato sommato tre volte e sottratto tre volte: il suo contributo provvisorio è zero. Bisogna ripristinarlo. Un elemento che sta esattamente in due insiemi contribuisce invece $2-1=1$; uno che sta in un solo insieme contribuisce già $1$.

**Esempio svolto: tre attività.** Fra $30$ studenti, $18$ seguono teatro, $14$ musica e $10$ fotografia. Seguono teatro e musica in $8$, teatro e fotografia in $5$, musica e fotografia in $4$; in $2$ seguono tutte e tre le attività. Le intersezioni a due comprendono anche questi ultimi due studenti. Il numero di studenti con almeno un'attività è

$$
18+14+10-8-5-4+2=27.
$$

Ne restano $30-27=3$ senza attività. Per controllare il ragionamento, gli studenti con esattamente due attività sono $(8-2)+(5-2)+(4-2)=11$; quelli con una sola sono $(18-8-5+2)+(14-8-4+2)+(10-5-4+2)=14$. Ritroviamo $14+11+2=27$.

## Trasformare l'appartenenza in un numero

Per $A\subseteq U$, la **funzione caratteristica** di $A$ è

$$
\chi_A:U\longrightarrow\{0,1\},\qquad
\chi_A(x)=
\begin{cases}
1,&x\in A,\\
0,&x\notin A.
\end{cases}
$$

Essa registra se una proprietà è vera. Se $U$ è finito, sommare questi segnali conta gli elementi:

$$
|A|=\sum_{x\in U}\chi_A(x).
$$

Le operazioni fra insiemi diventano operazioni fra numeri. Per ogni $x\in U$ valgono

$$
\chi_{A\cap B}(x)=\chi_A(x)\chi_B(x),
\qquad
\chi_{A^c}(x)=1-\chi_A(x).
$$

Il prodotto vale $1$ esattamente quando entrambi i fattori valgono $1$; ripetendo il ragionamento, il prodotto di più caratteristiche descrive l'intersezione di tutti gli insiemi corrispondenti. La sottrazione da $1$ scambia appartenenza e non appartenenza. Per l'unione otteniamo

$$
\chi_{A\cup B}(x)
=\chi_A(x)+\chi_B(x)-\chi_A(x)\chi_B(x).
$$

Se entrambi i segnali sono $1$, il membro destro vale $1+1-1=1$; se uno solo vale $1$, vale ancora $1$; se entrambi sono zero, vale zero. Sommando questa identità su $U$ ritroviamo la formula per due insiemi.

Queste identità valgono anche su un insieme ambiente infinito: sono uguaglianze verificate in ogni punto. La finitezza entra quando usiamo la somma per ottenere una cardinalità numerica.

## La formula generale e il contributo di un elemento

Siano $r\geq1$ e $A_1,\ldots,A_r\subseteq U$, con $U$ finito. Scriviamo $[r]=\{1,\ldots,r\}$. Per ogni sottoinsieme non vuoto $I\subseteq[r]$, l'intersezione $\bigcap_{i\in I}A_i$ contiene gli elementi che hanno tutte le proprietà indicate da $I$.

Il principio di inclusione-esclusione afferma che

$$
\boxed{
\left|\bigcup_{i=1}^r A_i\right|
=\sum_{\varnothing\ne I\subseteq[r]}
(-1)^{|I|+1}\left|\bigcap_{i\in I}A_i\right|.
}
$$

In parole: sommiamo i singoli insiemi, sottraiamo tutte le intersezioni a due, aggiungiamo quelle a tre e continuiamo alternando i segni. Ogni gruppo di indici compare una sola volta: $A_1\cap A_2$ e $A_2\cap A_1$ sono lo stesso termine.

**Dimostrazione.** Fissiamo un elemento $x\in U$ e supponiamo che appartenga esattamente a $m$ degli insiemi dati. Se $m=0$, non appartiene a nessuno degli insiemi e quindi a nessuna intersezione presente nella somma: dà contributo zero a entrambi i membri.

Se $m\geq1$, in quante intersezioni di $k$ insiemi compare? Dobbiamo scegliere $k$ fra i suoi $m$ insiemi: sono $\binom{m}{k}$ possibilità. Il contributo totale di $x$ al membro destro è quindi

$$
\sum_{k=1}^{m}(-1)^{k+1}\binom{m}{k}.
$$

Per il binomio di Newton, già dimostrato nel [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|capitolo 04]],

$$
0=(1-1)^m=1+\sum_{k=1}^{m}(-1)^k\binom{m}{k}.
$$

Spostando la somma e cambiando segno otteniamo proprio

$$
\sum_{k=1}^{m}(-1)^{k+1}\binom{m}{k}=1.
$$

Ogni elemento dell'unione viene dunque contato una volta, qualunque sia il numero di proprietà che soddisfa; ogni elemento esterno viene contato zero volte. Questo prova la formula.

Possiamo vedere la stessa struttura direttamente nelle funzioni caratteristiche. Non appartenere all'unione significa non appartenere a nessuno degli insiemi: è la legge di De Morgan

$$
\left(\bigcup_{i=1}^r A_i\right)^c=\bigcap_{i=1}^r A_i^c.
$$

Applicando le identità per complementare e intersezione,

$$
\chi_{\cup_i A_i}(x)=1-\prod_{i=1}^r\bigl(1-\chi_{A_i}(x)\bigr).
$$

Nello sviluppo del prodotto scegliamo, da ciascuna parentesi, $1$ oppure $-\chi_{A_i}(x)$. Scegliere il secondo termine esattamente per gli indici di $I$ produce $(-1)^{|I|}\prod_{i\in I}\chi_{A_i}(x)$. Il termine ottenuto scegliendo sempre $1$ si cancella con l'$1$ esterno; gli altri cambiano segno. Poiché il prodotto delle caratteristiche è la caratteristica dell'intersezione, otteniamo

$$
\chi_{\cup_i A_i}(x)
=\sum_{\varnothing\ne I\subseteq[r]}
(-1)^{|I|+1}\chi_{\cap_{i\in I}A_i}(x).
$$

Sommando su $x\in U$ segue nuovamente la formula generale. Il primo argomento spiega perché ogni elemento conserva peso $1$; il prodotto spiega come costruire sistematicamente tutti i termini e i loro segni.

> [!warning] Attenzione — Le intersezioni dello stesso ordine possono avere dimensioni diverse
> In generale non possiamo sostituire la somma delle intersezioni a due con $\binom{r}{2}|A_1\cap A_2|$. Il coefficiente conta quante intersezioni ci sono, ma possiamo moltiplicarlo per una sola cardinalità soltanto dopo aver provato che tutte quelle intersezioni hanno la stessa cardinalità.

## Suriezioni: vietare che manchi un valore

Siano $X,Y$ finiti, con $|X|=n\geq1$ e $|Y|=m\geq1$. Una funzione $f:X\to Y$ è suriettiva quando ogni elemento di $Y$ viene raggiunto. Il conteggio diretto richiederebbe controllare insieme molte fibre non vuote. Proviamo a contare il complementare.

L'insieme ambiente è ora $\Omega=Y^X$, l'insieme di **tutte le funzioni** da $X$ a $Y$, e ha cardinalità $m^n$. Numeriamo $Y=\{y_1,\ldots,y_m\}$ e poniamo

$$
F_i=\{f\in\Omega:y_i\notin f(X)\}.
$$

$F_i$ contiene le funzioni che omettono il particolare valore $y_i$. Una funzione non è suriettiva se e solo se omette almeno un valore; dunque le funzioni non suriettive formano $\bigcup_{i=1}^m F_i$.

Qui gli elementi di $F_i$ sono funzioni. Non stiamo facendo l'unione delle loro immagini nel codominio: stiamo unendo famiglie di possibili assegnazioni. Una funzione costante, per esempio, appartiene a tutti gli $F_i$ tranne quello corrispondente al suo unico valore, quando $m\geq2$.

Fissiamo ora $I\subseteq[m]$ con $|I|=k\geq1$. Una funzione appartiene a $\bigcap_{i\in I}F_i$ se evita tutti i $k$ valori indicati. Per ognuno dei suoi $n$ argomenti restano $m-k$ valori possibili; pertanto

$$
\left|\bigcap_{i\in I}F_i\right|=(m-k)^n.
$$

Questa volta la cardinalità dipende soltanto da $k$: abbiamo giustificato il raggruppamento delle $\binom{m}{k}$ intersezioni dello stesso ordine. Sottraendo dal totale la loro unione otteniamo il numero $S(n,m)$ di suriezioni:

$$
\boxed{
S(n,m)=\sum_{k=0}^{m}(-1)^k\binom{m}{k}(m-k)^n
\qquad(n,m\geq1).
}
$$

Il termine $k=0$ è il totale $m^n$; il termine $k=m$ è zero perché $n\geq1$. Se $n<m$, la somma vale zero: una funzione non può raggiungere più di $n$ valori distinti. Se $n=m$, le suriezioni sono biezioni, perciò la somma vale $n!$.

**Esempio svolto: cinque persone, tre laboratori.** Cinque persone riconoscibili scelgono ciascuna uno di tre laboratori etichettati. Vogliamo che ogni laboratorio riceva almeno una persona. Le assegnazioni sono le suriezioni da un insieme di cinque elementi a uno di tre:

$$
S(5,3)=3^5-\binom31 2^5+\binom32 1^5-\binom33 0^5
=243-96+3=150.
$$

Sottrarre soltanto $3\cdot2^5$ darebbe $147$: ogni assegnazione in cui tutti scelgono lo stesso laboratorio sarebbe stata sottratta due volte, perché lascia vuoti gli altri due. Le tre intersezioni a due ripristinano queste tre assegnazioni una volta ciascuna.

I casi vuoti si leggono dalla definizione, senza usare potenze ambigue:

- $S(0,0)=1$: la funzione vuota dal vuoto al vuoto è suriettiva;
- $S(0,m)=0$ per $m\geq1$: la funzione vuota non raggiunge alcun elemento del codominio;
- $S(n,0)=0$ per $n\geq1$: non esiste una funzione da un insieme non vuoto al vuoto.

Con la convenzione combinatoria $0^0=1$ la formula si può estendere anche ai bordi, ma la giustificazione dei tre casi precedenti resta la definizione di funzione e di suriettività.

## Un caso leggibile senza una somma alternata

Se $|X|=n\geq2$ e $|Y|=n-1$, una suriezione ha una struttura molto rigida. Le sue $n-1$ fibre sono non vuote e contengono in totale $n$ elementi. Dopo aver riservato un elemento a ogni fibra, rimane un solo elemento da collocare: una fibra ha cardinalità $2$ e tutte le altre cardinalità $1$.

Scegliamo la coppia di elementi di $X$ con immagine comune, in $\binom n2$ modi. Trattiamo questa coppia come un blocco e gli altri $n-2$ elementi come blocchi singoli: abbiamo $n-1$ blocchi distinti. Assegnarli biiettivamente ai valori di $Y$ si può fare in $(n-1)!$ modi. La costruzione è reversibile: dalla funzione recuperiamo la sua unica coppia e l'assegnazione dei blocchi. Quindi

$$
\boxed{S(n,n-1)=\binom n2(n-1)!=\frac{n!(n-1)}2\qquad(n\geq2).}
$$

Per $n=4$ otteniamo $\binom42 3!=36$, mentre inclusione-esclusione dà $3^4-3\cdot2^4+3=36$. In generale i due conteggi dimostrano l'identità

$$
\sum_{k=0}^{n-1}(-1)^k\binom{n-1}{k}(n-1-k)^n
=\binom n2(n-1)!.
$$

Non serve trasformare algebricamente un membro nell'altro: abbiamo provato che entrambi contano la stessa famiglia. Questo è il **doppio conteggio**.

## Fonti

Il capitolo rielabora [[Notes/Aritmetica/Lectures/2026-09-30 - Successioni ricorrenti e formule combinatorie|la nota del 30 settembre]] e [[_transcripts/Aritmetica/2026-09-30 - Successioni ricorrenti e formule combinatorie|la relativa trascrizione]], nelle parti su funzioni caratteristiche, complementari e le due dimostrazioni di inclusione-esclusione. Il conteggio delle suriezioni, il caso $n\to n-1$ e il collegamento con il doppio conteggio provengono da [[Notes/Aritmetica/Lectures/2026-10-06 - Conteggio combinatorio e principio di inclusione-esclusione|la nota del 6 ottobre]] e [[_transcripts/Aritmetica/2026-10-06 - Conteggio combinatorio e principio di inclusione-esclusione|la relativa trascrizione]].

Le dimostrazioni sono ricostruite con notazione uniforme. I casi vuoti, le spiegazioni sui diversi insiemi ambiente, gli esempi numerici e gli esercizi sono integrazioni didattiche; non riproducono alla lettera l'esposizione orale.

## Esercizi per verificare la comprensione

Gli esercizi 1–6 sono fondamentali; 7–8 collegano i conteggi e trasferiscono il metodo a vincoli nuovi.

1. Fra gli interi di $\{1,\ldots,60\}$, quanti sono divisibili per $3$ oppure per $5$? Quanti non sono divisibili per nessuno dei due? Quanti sono divisibili per esattamente uno dei due?

> [!tip]- Riscontro 1
> I multipli di $3$ sono $20$, quelli di $5$ sono $12$, quelli comuni sono i $4$ multipli di $15$. L'unione ha $20+12-4=28$ elementi; il complementare ne ha $60-28=32$. Per esattamente una proprietà togli entrambe le copie dei multipli comuni dalla somma iniziale: $20+12-2\cdot4=24$.

2. In un insieme $U$ di $36$ persone, tre sottoinsiemi $A,B,C$ hanno cardinalità $20,18,12$. Si sa che $|A\cap B|=9$, $|A\cap C|=6$, $|B\cap C|=5$ e $|A\cap B\cap C|=3$. Quante persone appartengono ad almeno uno dei tre insiemi? Quante a nessuno?

> [!tip]- Riscontro 2
> Inclusione-esclusione dà $20+18+12-9-6-5+3=33$. Il complementare ha $36-33=3$ elementi. Le intersezioni a due includono le persone dell'intersezione tripla, perciò occorre l'ultimo $+3$.

3. Siano $A,B\subseteq U$ con $U$ finito. Dimostra l'identità $\chi_{A\setminus B}=\chi_A(1-\chi_B)$ e ricavane una formula per $|A\setminus B|$.

> [!tip]- Riscontro 3
> Il prodotto vale $1$ esattamente quando $x\in A$ e $x\notin B$, cioè quando $x\in A\setminus B$; in ogni altro caso vale zero. Sviluppando e sommando su $U$ ottieni $|A\setminus B|=|A|-|A\cap B|$.

4. Un lettore propone la formula $|A\cup B\cup C|=|A|+|B|+|C|-|A\cap B|-|A\cap C|-|B\cap C|$. Trova un controesempio con un insieme ambiente di un solo elemento e spiega quale contributo è sbagliato.

> [!tip]- Riscontro 4
> Prendi $U=\{x\}$ e $A=B=C=U$. L'unione ha cardinalità $1$, mentre il membro proposto vale $3-3=0$. L'elemento comune è stato cancellato del tutto: manca $+|A\cap B\cap C|$.

5. Conta le suriezioni da un insieme di $4$ elementi a uno di $2$, e da un insieme di $2$ elementi a uno di $4$. Determina inoltre i numeri di suriezioni $\varnothing\to\{a\}$, $\{a\}\to\varnothing$ e $\varnothing\to\varnothing$.

> [!tip]- Riscontro 5
> Nel primo caso $2^4-2\cdot1^4=14$: si eliminano le due funzioni costanti. Nel secondo $4^2-4\cdot3^2+6\cdot2^2-4\cdot1^2=16-36+24-4=0$, coerentemente con l'impossibilità di raggiungere quattro valori con due argomenti. Nei tre casi vuoti le risposte sono rispettivamente $0,0,1$: esiste una funzione vuota nel primo e nel terzo caso, ma soltanto la seconda di queste è suriettiva.

6. Conta le suriezioni $[6]\to[5]$. Uno studente sceglie la coppia con immagine comune in $6\cdot5$ modi e moltiplica per $5!$. Perché il suo risultato è doppio di quello corretto?

> [!tip]- Riscontro 6
> Il numero corretto è $\binom62 5!=15\cdot120=1800$. La coppia è un sottoinsieme di due elementi: scambiarli non cambia la funzione. Le $6\cdot5=30$ coppie ordinate contano due volte ogni scelta della coppia; il suo procedimento darebbe erroneamente $3600$.

7. Per ogni $n\geq1$, dimostra con un doppio conteggio che $\sum_{k=0}^n(-1)^k\binom nk(n-k)^n=n!$. Specifica la famiglia contata e perché il conteggio diretto dà proprio un fattoriale.

> [!tip]- Riscontro 7
> Conta le suriezioni $[n]\to[n]$. Inclusione-esclusione dà il membro sinistro. Una suriezione fra insiemi finiti della stessa cardinalità è una biezione: le sue $n$ fibre non vuote contengono in totale $n$ elementi, quindi hanno tutte cardinalità $1$. Le biezioni si contano scegliendo immagini successive in $n,n-1,\ldots,1$ modi, per un totale di $n!$.

8. Cinque persone riconoscibili devono sedere su cinque sedie numerate, una per sedia. La persona $i$ non può occupare la sedia $i$, per $i\in[5]$. Conta le sistemazioni consentite usando inclusione-esclusione. Qual è l'insieme ambiente? Per $0\leq k\leq5$, quante sistemazioni violano simultaneamente un gruppo fissato di $k$ divieti?

> [!tip]- Riscontro 8
> L'ambiente è l'insieme delle $5!$ biezioni $[5]\to[5]$. Poni $A_i=\{\sigma:\sigma(i)=i\}$. Se imponi queste uguaglianze per un insieme fissato di $k$ persone, rimane una biezione fra le $5-k$ persone e le $5-k$ sedie restanti: $(5-k)!$ possibilità. Le sistemazioni consentite sono il complementare di $\bigcup_i A_i$, dunque $\sum_{k=0}^5(-1)^k\binom5k(5-k)!=120-120+60-20+5-1=44$. Anche il termine $k=5$ conta una sistemazione: l'identità, che lascia fissate tutte le persone; qui $0!=1$.

Sai usare il capitolo quando, prima della somma alternata, definisci l'insieme ambiente, i casi da escludere e il significato delle loro intersezioni. Per controllare una formula, segui il contributo di un singolo oggetto e verifica che alla fine valga esattamente zero oppure uno, secondo il vincolo richiesto.


---

[[Books/Aritmetica-I/05 - Distribuzioni e ripetizioni|← 05 · Distribuzioni e ripetizioni]] · [[Books/Aritmetica-I/00 - Indice e piano di studio|Indice]] · [[Books/Aritmetica-I/07 - Ricorrenze e successioni|07 · Ricorrenze e successioni →]]
