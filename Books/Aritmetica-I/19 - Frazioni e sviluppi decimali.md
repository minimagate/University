# Frazioni e sviluppi decimali

Prerequisiti: [[Books/Aritmetica-I/08 - Divisione euclidea e identita di Bezout|divisione con resto]], [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|fattorizzazione]], [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|numeri razionali]], [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|ordine]] e [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|teorema di Eulero]]. Torna all’[[Books/Aritmetica-I/00 - Indice e piano di studio|indice]].

## Perché una divisione ricomincia da capo?

Calcolando $1/12$ otteniamo $0,083333\ldots$; calcolando $1/28$ compare invece $0,03571428571428\ldots$. Perché le cifre finiscono per ripetersi? E possiamo prevedere quante cifre precederanno la ripetizione, senza eseguire tutta la divisione?

La prima risposta sta nei resti: una divisione può produrre infinite cifre, ma dispone soltanto di un numero finito di resti. La seconda collega quei resti alle potenze di $10$. Scopriremo che la fattorizzazione del denominatore determina l’inizio della ripetizione, mentre un ordine moltiplicativo ne determina la lunghezza.

Cominciamo da un razionale non negativo. Separando la parte intera e riducendo la frazione restante, scriviamo

$$
x=a_0+\frac ab,
\qquad a_0\in\mathbb N,\quad 0\le a<b,\quad b>0,
\quad \gcd(a,b)=1.
$$

Se $a=0$, la riduzione impone $b=1$: abbiamo un intero. Per un numero negativo studiamo prima il valore assoluto, poi anteponiamo il segno meno. In questo modo il segno non interferisce con l’algoritmo delle cifre.

## La divisione vista attraverso i resti

Poniamo $r_0=a$. Per ogni $j\ge1$ dividiamo $10r_{j-1}$ per $b$:

$$
\boxed{10r_{j-1}=bc_j+r_j,\qquad 0\le r_j<b.}
$$

Il quoziente $c_j$ è una cifra: poiché $0\le10r_{j-1}<10b$, abbiamo $0\le c_j\le9$. È precisamente la $j$-esima cifra decimale. Ripetendo la relazione ricaviamo

$$
\frac ab=\frac{c_1}{10}+\cdots+\frac{c_n}{10^n}
+\frac{r_n}{b10^n}.
$$

L’ultimo termine è compreso fra $0$ e $10^{-n}$: le cifre calcolate approssimano dunque la frazione con un errore che tende a zero. Questa identità giustifica l’algoritmo, oltre a descriverlo.

Se un resto è zero, tutti i resti e tutte le cifre successive sono zero: lo sviluppo è **finito**. Altrimenti i resti appartengono al solo insieme $\{1,\ldots,b-1\}$. Prima o poi due resti coincidono. Se $r_i=r_j$, con $i<j$, l’unicità della divisione euclidea obbliga ad avere la stessa cifra successiva e lo stesso nuovo resto. Il ragionamento si ripete a ogni passo: da quel punto le cifre si riproducono in blocchi di lunghezza $j-i$.

Abbiamo dimostrato che ogni razionale ha sviluppo **eventualmente periodico**, cioè periodico da un certo punto in poi. Uno sviluppo finito rientra in questa descrizione proseguendolo con zeri. Il motivo generale è utile anche altrove: un processo deterministico con un numero finito di stati, se continua, deve entrare in un ciclo. Qui lo stato è il resto; una cifra da sola non contiene abbastanza informazioni sul seguito.

### Divisione svolta: $1/12$

I passaggi iniziali sono

$$
10=12\cdot0+10,\qquad
100=12\cdot8+4,\qquad
40=12\cdot3+4.
$$

Il resto $4$ ritorna immediatamente dopo aver prodotto la cifra $3$. Quindi

$$
\frac1{12}=0,08\overline3.
$$

Le due cifre $08$ precedono il ciclo. Si chiamano **antiperiodo**; il blocco $3$ è un **periodo**. Scrivere $0,08\overline{33}$ dà lo stesso numero: quando parliamo della lunghezza del periodo senza altre precisazioni, cerchiamo la lunghezza positiva minima. Analogamente cerchiamo il numero minimo di cifre da lasciare prima della parte periodica.

## Da un periodo a una frazione

Prendiamo un blocco di $t\ge1$ cifre e indichiamo con $B$ il suo valore intero. La lunghezza $t$ è un dato distinto da $B$: il blocco $003$ ha valore $3$ e lunghezza $3$.

Se $y=0,\overline{\text{blocco}}$, spostare la virgola di $t$ posti lascia la stessa coda dopo la virgola:

$$
10^ty=B+y.
$$

Sottraendo $y$ otteniamo

$$
\boxed{y=\frac{B}{10^t-1}.}
$$

Per esempio,

$$
0,\overline{003}=\frac3{999}=\frac1{333}.
$$

Usare $3/9$ significherebbe ripetere il blocco $3$, perdendo i due zeri iniziali.

Supponiamo ora che prima del periodo ci siano $s\ge0$ cifre, di valore intero $A$, eventualmente con zeri iniziali. Se $s=0$, poniamo $A=0$. Con parte intera $a_0$ si ha

$$
\boxed{
x=a_0+\frac{A}{10^s}
+\frac{B}{10^s(10^t-1)}.
}
$$

Il fattore $10^{-s}$ colloca la coda periodica nella posizione giusta. Ogni addendo è razionale: questa è la direzione inversa del teorema precedente. Possiamo quindi affermare

$$
\boxed{x\in\mathbb Q\iff
\text{il suo sviluppo decimale è eventualmente periodico}.}
$$

### Conversione svolta: $0,12\overline{34}$

Qui $s=2$, $A=12$, $t=2$, $B=34$. Pertanto

$$
0,12\overline{34}
=\frac{12}{100}+\frac{34}{100\cdot99}
=\frac{1222}{9900}=\frac{611}{4950}.
$$

Lo stesso calcolo si può organizzare con due spostamenti. Posto $x=0,12\overline{34}$,

$$
100x=12,\overline{34},\qquad
10000x=1234,\overline{34}.
$$

Sottraendo si ottiene $9900x=1234-12=1222$. Le code si cancellano perché sono identiche, non perché possiamo ignorare una parte infinita del numero.

## Una convenzione necessaria: le code di 9

La scrittura decimale non è sempre unica. Infatti le somme finite

$$
\frac9{10}+\frac9{10^2}+\cdots+\frac9{10^n}=1-10^{-n}
$$

tendono a $1$, dunque

$$
0,\overline9=1.
$$

Spostando e sommando questa identità otteniamo, per esempio, $0,24999\ldots=0,25$. Nel capitolo adottiamo lo **sviluppo canonico**, che esclude le code infinite tutte di $9$. Un numero con sviluppo finito viene quindi scritto con una coda di zeri.

Questa convenzione rende unica la scrittura. Per vederne il punto essenziale, se due sviluppi della stessa parte intera differiscono per la prima volta nella posizione $k$, una differenza di almeno $10^{-k}$ deve essere compensata dalle cifre successive. Il massimo compenso possibile è

$$
\sum_{j>k}\frac9{10^j}=10^{-k}.
$$

L’uguaglianza forza una differenza di una sola unità nella cifra $k$ e poi una coda tutta di $9$ da una parte e tutta di $0$ dall’altra. È proprio il caso escluso. Lo stesso fenomeno al passaggio fra parti intere è $0,\overline9=1$.

> [!warning] Attenzione — Infinito non significa irrazionale
> $0,\overline9$ è esattamente $1$, e $0,\overline3$ è $1/3$. La caratterizzazione dei razionali riguarda la periodicità eventuale. La convenzione sulle code di $9$ serve anche a parlare senza ambiguità di sviluppo finito e antiperiodo minimo.

## Leggere il denominatore

Per la frazione **ridotta** $a/b$ scriviamo

$$
b=2^\alpha5^\beta c,
\qquad \alpha,\beta\ge0,\quad c\ge1,\quad \gcd(c,10)=1.
$$

Separiamo $2$ e $5$ perché sono i soli primi che dividono la base $10$. Le potenze di $10$ possono assorbire questi fattori; non possono assorbire nessun fattore di $c$.

### Quando lo sviluppo termina

Terminare entro $s$ cifre significa che $10^sa/b$ è intero. Grazie a $\gcd(a,b)=1$, ciò equivale a $b\mid10^s$. Questa divisibilità è possibile esattamente quando $c=1$; in quel caso equivale ad avere $s\ge\alpha$ e $s\ge\beta$. Quindi

$$
\boxed{
\text{sviluppo finito}\iff c=1;
\qquad\text{numero minimo di cifre}=\max(\alpha,\beta).
}
$$

Per esempio $3/40=0,075$: da $40=2^3\cdot5$ prevediamo esattamente tre cifre. Per un intero $b=1$, abbiamo $\alpha=\beta=0$ e servono zero cifre dopo la virgola.

### Quando rimane un periodo

Supponiamo $c>1$. Poiché $10$ è invertibile modulo $c$, esiste una potenza positiva congrua a $1$. Ricordiamo brevemente perché: fra $1,10,10^2,\ldots,10^c$ due potenze hanno lo stesso resto modulo $c$; cancellando la potenza minore, che è invertibile, otteniamo $10^m\equiv1\pmod c$ per qualche $m>0$. È l’argomento dei resti della lezione del 14 ottobre, reinterpretato nel [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|capitolo 16]].

Il minimo esponente positivo con questa proprietà è $\operatorname{ord}_c(10)$. Dimostriamo che

$$
\boxed{
s_{\min}=\max(\alpha,\beta),\qquad
t_{\min}=\operatorname{ord}_c(10).
}
$$

Il passaggio centrale è il seguente criterio, valido per ogni $s\ge0$ e $t\ge1$:

$$
\begin{aligned}
&\text{le cifre si ripetono dopo $s$ posti con un blocco di $t$ cifre}\\
&\hspace{25mm}\iff b\mid10^s(10^t-1).
\end{aligned}
$$

**Necessità.** La formula di conversione mostra che $10^s(10^t-1)a/b$ è intero. Quindi $b\mid a10^s(10^t-1)$ e, poiché la frazione è ridotta, possiamo cancellare $a$ nella divisibilità.

**Sufficienza.** Dall’algoritmo dei resti segue per induzione

$$
r_j\equiv10^ja\pmod b.
$$

Se $b\mid10^s(10^t-1)$, allora $r_{s+t}\equiv r_s\pmod b$. Entrambi sono fra $0$ e $b-1$, quindi sono uguali. L’algoritmo riparte dallo stesso resto: le cifre successive si ripetono con un blocco di lunghezza $t$.

Ora $10^t-1$ è coprimo sia con $2$ sia con $5$, mentre $10^s$ è coprimo con $c$. Perciò il criterio equivale esattamente a

$$
s\ge\alpha,\qquad s\ge\beta,
\qquad 10^t\equiv1\pmod c.
$$

Nessun inizio della periodicità può precedere $s=\max(\alpha,\beta)$; nessun periodo positivo può avere lunghezza minore di $\operatorname{ord}_c(10)$. Viceversa questi due valori soddisfano il criterio: sono quindi i minimi cercati, non soltanto limiti superiori.

Dal [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|teorema di Eulero]] e dalla proprietà dell’ordine segue inoltre

$$
\operatorname{ord}_c(10)\mid\varphi(c).
$$

La lunghezza minima del periodo divide $\varphi(c)$; può essere più piccola. Per esempio $10\equiv1\pmod3$, quindi l’ordine è $1$, mentre $\varphi(3)=2$. Se $c=1$ usiamo il criterio dello sviluppo finito: non occorre introdurre un ordine modulo $1$.

## Un esempio che mette insieme i due meccanismi

Per $1/28$, da $28=2^2\cdot7$ otteniamo $s_{\min}=2$. Per il periodo calcoliamo modulo $7$:

$$
10\equiv3,\quad10^2\equiv2,\quad10^3\equiv6\equiv-1,
\quad10^6\equiv1.
$$

L’ordine divide $6$. I divisori propri $1,2,3$ sono esclusi dai tre calcoli precedenti, dunque $\operatorname{ord}_7(10)=6$. La divisione conferma anche le cifre:

| Resto iniziale | Divisione | Cifra | Nuovo resto |
|---|---|---|---|
| $1$ | $10=28\cdot0+10$ | $0$ | $10$ |
| $10$ | $100=28\cdot3+16$ | $3$ | $16$ |
| $16$ | $160=28\cdot5+20$ | $5$ | $20$ |
| $20$ | $200=28\cdot7+4$ | $7$ | $4$ |
| $4$ | $40=28\cdot1+12$ | $1$ | $12$ |
| $12$ | $120=28\cdot4+8$ | $4$ | $8$ |
| $8$ | $80=28\cdot2+24$ | $2$ | $24$ |
| $24$ | $240=28\cdot8+16$ | $8$ | $16$ |

Il resto $16$ ricompare dopo il blocco $571428$. Abbiamo

$$
\boxed{\frac1{28}=0,03\overline{571428}.}
$$

Confrontiamo $7/28=1/4=0,25$. Il denominatore scritto è ancora $28$, ma quello ridotto è $4$: la parte coprima con $10$ è diventata $1$, quindi non rimane alcun periodo non nullo.

> [!warning] Attenzione — Prima ridurre, poi prevedere
> Le formule sulle lunghezze usano il denominatore ridotto. Il numeratore può cancellare fattori decisivi: $1/28$ ha periodo minimo $6$, mentre $7/28$ termina. Nella prova la riduzione è ciò che autorizza il passaggio da $b\mid a10^s(10^t-1)$ a $b\mid10^s(10^t-1)$.

## Cambiare base

L’argomento non dipende dalla scelta del dieci. In una base intera $q\ge2$, le cifre sono $0,\ldots,q-1$ e l’algoritmo usa $qr_{j-1}=bc_j+r_j$. Resti finiti e determinismo dimostrano ancora che razionale equivale a eventualmente periodico. La convenzione canonica esclude le code infinite di cifre $q-1$.

Per una frazione ridotta separiamo $b=dc$, dove tutti i primi di $d$ dividono $q$ e $\gcd(c,q)=1$. L’antiperiodo minimo è il minimo $s\ge0$ per cui $d\mid q^s$; se $d=1$ è zero. In termini di fattorizzazione, è il massimo dei numeri $\lceil v_p(b)/v_p(q)\rceil$ per i primi $p\mid d$. Se $c=1$ lo sviluppo termina dopo quel numero minimo di cifre; se $c>1$ il periodo minimo è $\operatorname{ord}_c(q)$. La prova resta il criterio $b\mid q^s(q^t-1)$, con i fattori del denominatore ripartiti fra le due componenti.

## Fonti

Il nucleo del capitolo segue la [[Notes/Aritmetica/Lectures/2026-10-14 - Sviluppi decimali razionali e fattorizzazione dei denominatori|nota del 14 ottobre]] e la [[_transcripts/Aritmetica/2026-10-14 - Sviluppi decimali razionali e fattorizzazione dei denominatori|trascrizione del 14 ottobre]]: algoritmo dei resti, conversione dei periodi, lemma delle potenze e separazione dei fattori $2$ e $5$. L’introduzione ai razionali e l’esempio con blocchi crescenti di zeri riprendono la [[Notes/Aritmetica/Lectures/2026-09-23 - Numeri naturali, induzione e fattorizzazione|nota del 23 settembre]] e il passaggio introduttivo della [[_transcripts/Aritmetica/2026-09-23 - Numeri naturali, induzione e fattorizzazione|trascrizione del 23 settembre]]. Per ordine ed Eulero sono stati consultati la [[Notes/Aritmetica/Lectures/2026-11-01 - Gruppi ciclici, ordini e sottogruppi modulari|nota del 1° novembre]] e i passaggi pertinenti della [[_transcripts/Aritmetica/2026-11-01 - Gruppi ciclici, ordini e sottogruppi modulari|trascrizione del 1° novembre]].

Sono integrazioni didattiche la formalizzazione dell’algoritmo, la convenzione canonica, le prove delle lunghezze minime, il raccordo esplicito con l’ordine moltiplicativo, la formulazione in base generale e gli esercizi. Gli esempi numerici sono ricostruiti e verificati; non sono presentati come citazioni del docente.

## Esercizi per verificare la comprensione

Gli esercizi 1–6 sono fondamentali; 7–8 richiedono di trasferire il metodo o collegare più idee.

1. Calcola gli sviluppi canonici di $3/40$, $7/25$ e $-13/8$. Determina per ciascuno il numero minimo di cifre dopo la virgola, motivandolo sul denominatore ridotto.

> [!tip]- Riscontro 1
> Si ottengono $0,075$, $0,28$ e $-1,625$. I denominatori sono rispettivamente $2^3\cdot5$, $5^2$ e $2^3$: le lunghezze minime sono $3,2,3$. Per il negativo si applica il criterio al valore assoluto; $13/8=1+5/8$ e il denominatore della parte frazionaria è ancora $8$.

2. Trasforma in frazioni ridotte $2,4\overline{09}$ e $0,\overline{007}$. Specifica la lunghezza di ogni blocco prima di applicare la formula.

> [!tip]- Riscontro 2
> Nel primo caso $s=1$, $t=2$ e il valore del periodo è $9$: $2+4/10+9/(10\cdot99)=2+2/5+1/110=53/22$. Nel secondo caso $t=3$, quindi la frazione è $7/999$, già ridotta. Gli zeri iniziali determinano le potenze del dieci pur non modificando il valore intero del blocco.

3. Per $5/24$ e $11/18$, prevedi antiperiodo e periodo minimi, poi calcola le cifre con la divisione.

> [!tip]- Riscontro 3
> $24=2^3\cdot3$ dà $s=3$ e $t=\operatorname{ord}_3(10)=1$: $5/24=0,208\overline3$. I resti successivi da $5$ sono $2,20,8,8$. Per $18=2\cdot3^2$ si ha $s=1$, $t=\operatorname{ord}_9(10)=1$: $11/18=0,6\overline1$, con resti successivi $2,2$. Le cifre si ottengono dividendo ogni volta dieci volte il resto precedente.

4. Determina il periodo minimo di $1/27$ e il suo sviluppo. Spiega perché verificare soltanto $10^3\equiv1\pmod{27}$ non basterebbe, da solo, a concludere che il periodo minimo è $3$.

> [!tip]- Riscontro 4
> $27$ è coprimo con $10$, quindi l’antiperiodo è vuoto. Poiché $10^3=1000\equiv1\pmod{27}$, l’ordine divide $3$; escludiamo $1$ perché $10\not\equiv1$. L’ordine è dunque $3$. Inoltre $37/999=1/27$, perciò lo sviluppo è $0,\overline{037}$. Un esponente che dà $1$ potrebbe essere un multiplo del minimo: serve escludere i divisori propri.

5. Diagnostica l’errore: «$14/60$ ha antiperiodo minimo $2$, perché $60=2^2\cdot3\cdot5$». Calcola invece lo sviluppo canonico e le lunghezze minime corrette.

> [!tip]- Riscontro 5
> La frazione non è ridotta: $14/60=7/30$, con $30=2\cdot3\cdot5$. Quindi $s=1$ e $t=1$. La divisione dà $70=30\cdot2+10$ e $100=30\cdot3+10$, da cui $0,2\overline3$. Due cifre iniziali sono possibili nella scrittura $0,23\overline3$, ma non sono il minimo.

6. Sia $b\ge2$ coprimo con $10$. Dimostra che per tutti gli interi $a$ con $1\le a<b$ e $\gcd(a,b)=1$, la frazione $a/b$ ha antiperiodo vuoto e lo stesso periodo minimo. Le cifre del periodo devono essere uguali?

> [!tip]- Riscontro 6
> Nel criterio $b\mid a(10^t-1)$ si cancella $a$, quindi il minimo $t$ è sempre $\operatorname{ord}_b(10)$, mentre $s=0$ è già ammesso. Le cifre dipendono dal numeratore: $1/3=0,\overline3$ e $2/3=0,\overline6$ hanno entrambe periodo minimo $1$.

7. In base $2$, determina lo sviluppo di $1/12$ e le lunghezze minime. In base $12$, determina invece lo sviluppo finito di $1/18$ e mostra che non può terminare dopo una sola cifra. Usa un pedice per distinguere le basi.

> [!tip]- Riscontro 7
> In base $2$, $12=4\cdot3$: servono due cifre iniziali e $\operatorname{ord}_3(2)=2$, perché $2\equiv-1\pmod3$. Si ha $(0,00\overline{01})_2=1/[2^2(2^2-1)]=1/12$. In base $12$, $18\mid12^2$ ma $18\nmid12$: il minimo è due cifre e $1/18=8/144=(0,08)_{12}$. Qui tutti i fattori del denominatore dividono la base, quindi non rimane una componente periodica non nulla.

8. Definisci $x=0,101001000100001\ldots$ imponendo che fra il $k$-esimo e il $(k+1)$-esimo $1$ ci siano esattamente $k$ zeri, per ogni $k\ge1$. Dimostra che $x$ è irrazionale. Perché dire soltanto «i blocchi crescono» non completa la prova?

> [!tip]- Riscontro 8
> Se la coda fosse periodica di lunghezza $t$, il periodo dovrebbe contenere un $1$, perché nello sviluppo compaiono infiniti $1$. Ogni blocco di $t$ cifre abbastanza avanzato conterrebbe allora almeno un $1$: non potrebbero esistere $t$ zeri consecutivi nella coda. Ma la costruzione produce blocchi di zeri arbitrariamente lunghi, anche dopo qualunque posizione fissata. È una contraddizione; lo sviluppo non è eventualmente periodico e quindi $x\notin\mathbb Q$. Il confronto con una lunghezza ipotetica $t$ rende precisa l’intuizione dei blocchi crescenti.

Il capitolo è acquisito quando sai passare dalle cifre a una frazione e dal denominatore ridotto alle due lunghezze minime, giustificando le cancellazioni. Prova anche a spiegare con parole tue perché ripetere un resto obbliga a ripetere tutto il seguito.


---

[[Books/Aritmetica-I/18 - Congruenze esponenziali|← 18 · Congruenze esponenziali]] · [[Books/Aritmetica-I/00 - Indice e piano di studio|Indice]] · [[Books/Aritmetica-I/20 - Congruenze polinomiali e sollevamento|20 · Congruenze polinomiali e sollevamento →]]
