# Gruppi, sottogruppi e permutazioni

Prerequisiti: [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|funzioni e dimostrazioni]], [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|divisibilità e mcm]], [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|inversi modulari]]. Torna all’[[Books/Aritmetica-I/00 - Indice e piano di studio|indice]].

## Comporre azioni che si possono annullare

Ruota un triangolo equilatero di un terzo di giro, poi di un altro terzo: ottieni una rotazione di due terzi. Tre rotazioni riportano ogni vertice al punto iniziale. Puoi anche riflettere il triangolo rispetto a un suo asse: ripetere la riflessione annulla il primo movimento.

Qui gli oggetti da studiare sono le trasformazioni. L’operazione consiste nell’eseguirne una dopo l’altra. Comporre due simmetrie produce ancora una simmetria; esiste il movimento che lascia tutto fermo; ogni movimento ammesso può essere annullato. Queste proprietà ricordano la somma degli interi: due spostamenti di $a$ e $b$ passi equivalgono a uno spostamento di $a+b$ passi, zero lascia fermi, $-a$ annulla $a$.

La nozione di **gruppo** isola questo schema comune. Permette di dimostrare una sola volta regole che valgono per numeri, resti e trasformazioni. Occorre però conservare l’ordine delle azioni: riflettere e poi ruotare può dare un risultato diverso da ruotare e poi riflettere.

## Le regole di un gruppo

Un’operazione binaria interna su un insieme $G$ è una funzione $G\times G\to G$: a ogni coppia $x,y$ associa un elemento $xy$ dello stesso insieme. La parola *interna* esprime la **chiusura**.

L’insieme con questa operazione è un gruppo se valgono tre ulteriori condizioni:

1. **Associatività:** $(xy)z=x(yz)$ per ogni $x,y,z\in G$.
2. **Neutro:** esiste $e\in G$ tale che $ex=xe=x$ per ogni $x\in G$.
3. **Inversi:** per ogni $x\in G$ esiste $y\in G$ tale che $xy=yx=e$.

L’associatività consente di spostare le parentesi, mantenendo l’ordine dei fattori. Se inoltre $xy=yx$ per ogni coppia, il gruppo si dice **abeliano**. Questa è una proprietà aggiuntiva.

In notazione moltiplicativa scriviamo $e$, $x^{-1}$, $xy$. In notazione additiva scriviamo $0$, $-x$, $x+y$: l’inverso diventa l’opposto. Cambiano i simboli, non gli assiomi.

Gli esempi familiari chiariscono perché bisogna specificare insieme e operazione:

- $(\mathbb Z,+)$ è abeliano: il neutro è $0$ e l’inverso di $a$ è $-a$. Invece $(\mathbb N,+)$ manca degli opposti dei naturali positivi.
- $(\mathbb Z/n\mathbb Z,+)$, per $n\geq2$, è abeliano: $[a]_n+[b]_n=[a+b]_n$, il neutro è $[0]_n$ e l’opposto è $[-a]_n$. La buona definizione delle operazioni è stata verificata nel capitolo sulle congruenze.
- $\mathbb R^\times=\mathbb R\setminus\{0\}$ è un gruppo abeliano per il prodotto: l’inverso di $x$ è $1/x$. Includere zero impedirebbe l’esistenza del suo inverso. Anche $\mathbb C^\times$ ha questa struttura.
- Per $n\geq2$, le classi invertibili formano il gruppo moltiplicativo
  $$
  U(n)=(\mathbb Z/n\mathbb Z)^\times
  =\{[a]_n:\gcd(a,n)=1\}.
  $$
  Il [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|capitolo 11]] garantisce gli inversi. Se $u,v$ sono invertibili, $v^{-1}u^{-1}$ è un inverso di $uv$, perciò il prodotto rimane in $U(n)$; inoltre l’inverso di $u$ è invertibile, avendo inverso $u$. Neutro e associatività sono quelli del prodotto modulare.

Per esempio,
$$
U(10)=\{[1],[3],[7],[9]\}.
$$
Poiché $3\cdot7=21\equiv1\pmod{10}$, $[3]^{-1}=[7]$; inoltre $[9]^{-1}=[9]$. La classe $[2]$ non appartiene a questo gruppo, pur appartenendo all’insieme delle classi modulo $10$.

## Le prime dimostrazioni: annullare senza cambiare l’ordine

Il neutro è unico. Se $e,f$ sono entrambi neutri, allora $e=ef=f$: la prima uguaglianza usa $f$, la seconda $e$.

Anche l’inverso è unico. Se $u,v$ sono inversi di $x$, usando soltanto associatività e definizioni otteniamo
$$
u=ue=u(xv)=(ux)v=ev=v.
$$
Possiamo dunque indicarlo senza ambiguità con $x^{-1}$. Poiché $x$ annulla $x^{-1}$ da entrambi i lati, $(x^{-1})^{-1}=x$.

Come si annulla un prodotto $xy$? Bisogna disfare prima l’ultima azione, poi la prima. Infatti
$$
(xy)(y^{-1}x^{-1})=x(yy^{-1})x^{-1}=e,
$$
$$
(y^{-1}x^{-1})(xy)=y^{-1}(x^{-1}x)y=e.
$$
Per unicità,
$$
\boxed{(xy)^{-1}=y^{-1}x^{-1}.}
$$

La **cancellazione** deriva dall’esistenza degli inversi. Se $ax=ay$, moltiplichiamo a sinistra per $a^{-1}$:
$$
a^{-1}(ax)=a^{-1}(ay)\quad\Longrightarrow\quad x=y.
$$
Da $xa=ya$ si ottiene lo stesso risultato moltiplicando a destra per $a^{-1}$. Il lato della moltiplicazione conta.

> [!warning] Attenzione — Associativo non significa commutativo
> Puoi sostituire $(xy)z$ con $x(yz)$, ma non scambiare $x$ e $y$ senza una ragione. Per questo l’inverso del prodotto richiede l’ordine rovesciato. Anche da $ax=b$ segue $x=a^{-1}b$, mentre $ba^{-1}$ può essere diverso.

## Sottogruppi: restringere l’insieme conservando le regole

Un sottoinsieme $H\subseteq G$ è un **sottogruppo**, scritto $H\leq G$, quando è un gruppo con la stessa operazione di $G$. Per esempio i numeri pari sono un sottogruppo di $(\mathbb Z,+)$: somma e opposto di pari rimangono pari.

Prima di formulare un criterio pratico, controlliamo che il neutro di un sottogruppo sia proprio quello del gruppo ambiente. Indichiamo con $e_H$ il neutro di $H$ e scegliamo $h\in H$. In $G$ valgono
$$
e_Hh=h=eh.
$$
Cancellando $h$ a destra **in $G$**, otteniamo $e_H=e$. Ora l’inverso di $h$ calcolato in $H$ soddisfa anche in $G$ le equazioni dell’inverso rispetto a $e$; per unicità coincide con $h^{-1}$ in $G$.

La cancellazione evita un passaggio ingiustificato: all’inizio sappiamo che $e_H$ è neutro sugli elementi di $H$, non su tutti quelli di $G$.

**Criterio del sottogruppo.** Per $H\subseteq G$ vale
$$
H\leq G
\quad\Longleftrightarrow\quad
H\neq\varnothing\ \text{ e }\ xy^{-1}\in H\ \text{per ogni }x,y\in H.
$$

Se $H$ è un sottogruppo, quanto appena dimostrato garantisce inversi e prodotti in $H$, quindi la condizione è necessaria. Viceversa, scegliamo $a\in H$. Applicando la condizione a $a,a$ troviamo $e=aa^{-1}\in H$. Applicandola a $e,y$ troviamo $y^{-1}\in H$. Infine, poiché $y^{-1}\in H$, applicandola a $x,y^{-1}$ otteniamo
$$
x(y^{-1})^{-1}=xy\in H.
$$
L’associatività è ereditata da $G$; neutro e inversi sono presenti. Dunque $H$ è un gruppo.

In notazione additiva il criterio diventa: insieme non vuoto e chiusura rispetto a $x-y$. Per ogni $d\in\mathbb Z$,
$$
d\mathbb Z=\{dk:k\in\mathbb Z\}\leq(\mathbb Z,+),
$$
perché contiene zero e $dr-ds=d(r-s)$. Sono compresi $0\mathbb Z=\{0\}$ e $1\mathbb Z=\mathbb Z$.

Per interi positivi $d,m$,
$$
d\mathbb Z\subseteq m\mathbb Z\quad\Longleftrightarrow\quad m\mid d.
$$
Se vale l’inclusione, $d\in m\mathbb Z$, quindi $m\mid d$. Se $d=mq$, ogni $dk=m(qk)$ appartiene a $m\mathbb Z$. Il verso dell’inclusione è così spiegato: $6\mathbb Z\subseteq2\mathbb Z$, perché essere multiplo di $6$ è un requisito più restrittivo.

### Intersezioni e unioni

Se $H,K\leq G$, allora $H\cap K\leq G$: contiene $e$, e per $x,y\in H\cap K$ l’elemento $xy^{-1}$ appartiene a entrambi. Lo stesso argomento funziona per ogni famiglia non vuota di sottogruppi.

Negli interi, per $d,m>0$, l’intersezione contiene esattamente i multipli comuni:
$$
d\mathbb Z\cap m\mathbb Z=\operatorname{mcm}(d,m)\mathbb Z.
$$
Infatti ogni multiplo comune è multiplo del mcm, e viceversa, come dimostrato nel [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|capitolo 09]]. Per esempio $6\mathbb Z\cap10\mathbb Z=30\mathbb Z$. Se uno dei due parametri è zero, l’intersezione è $\{0\}$.

L’unione si comporta diversamente:
$$
H\cup K\leq G\quad\Longleftrightarrow\quad H\subseteq K\ \text{oppure}\ K\subseteq H.
$$
Se uno è contenuto nell’altro, l’unione coincide con il maggiore. Per il viceversa supponiamo che l’unione sia un sottogruppo, ma nessuna inclusione valga. Scegliamo $h\in H\setminus K$ e $k\in K\setminus H$. Il prodotto $hk$ deve stare nell’unione. Se sta in $H$, anche $h^{-1}(hk)=k$ sta in $H$, assurdo. Se sta in $K$, anche $(hk)k^{-1}=h$ sta in $K$, ancora assurdo.

> [!warning] Attenzione — La chiusura non passa automaticamente ai sottoinsiemi
> Associatività passa da $G$ a un suo sottoinsieme; chiusura e inversi richiedono una verifica. I naturali sono chiusi per somma ma non per opposti. E $2\mathbb Z\cup3\mathbb Z$ non è chiuso per somma: contiene $2$ e $3$, ma non $5$. Nel criterio del sottogruppo anche l’ipotesi «non vuoto» è essenziale.

## Il centro: chi commuta con tutti?

In un gruppo non abeliano alcuni elementi possono comunque commutare con ogni elemento. Il loro insieme è il **centro**:
$$
Z(G)=\{z\in G:zg=gz\text{ per ogni }g\in G\}.
$$
Dimostriamo che è un sottogruppo senza supporre anticipatamente ciò che vogliamo provare. Il neutro è centrale. Se $x,y\in Z(G)$, per ogni $g\in G$ abbiamo
$$
(xy)g=x(yg)=x(gy)=(xg)y=(gx)y=g(xy).
$$
Dunque $xy$ è centrale. Se $x\in Z(G)$, l’inverso $x^{-1}$ esiste già **in $G$**. Dall’uguaglianza $xg=gx$, moltiplicando a sinistra e a destra per $x^{-1}$, ricaviamo
$$
gx^{-1}=x^{-1}g.
$$
Quindi $x^{-1}$ è centrale: abbiamo verificato appartenenza, non assunto un inverso nel centro. Chiusura e inversi concludono la prova. Infine $Z(G)=G$ equivale precisamente a dire che $G$ è abeliano.

## Le permutazioni come gruppo

Una **permutazione** di un insieme $X$ è una biiezione $X\to X$. Le permutazioni formano il gruppo $\operatorname{Sym}(X)$ per composizione. Il composto di due biiezioni è biiettivo; la composizione è associativa, perché entrambi i raggruppamenti mandano $x$ in $\sigma(\tau(\rho(x)))$. Il neutro è $\operatorname{id}_X$ e l’inverso è la funzione inversa.

Per $X=\{1,\ldots,n\}$, con $n\geq1$, il gruppo si indica con $S_n$. Fissiamo la convenzione
$$
\sigma\tau=\sigma\circ\tau,
\qquad (\sigma\tau)(x)=\sigma(\tau(x)):
$$
**si applica prima la permutazione a destra**.

Una scrittura a due righe elenca dominio e immagini:
$$
\sigma=\begin{pmatrix}1&2&3&4&5\\3&5&1&4&2\end{pmatrix}.
$$
Qui $1\mapsto3\mapsto1$, $2\mapsto5\mapsto2$ e $4$ rimane fisso. La scrittura in cicli è dunque $\sigma=(1\ 3)(2\ 5)$.

Un **ciclo** $(a_1\ a_2\ \cdots\ a_r)$, dove gli $a_i$ sono distinti, manda ogni elemento al successivo e $a_r$ ad $a_1$, fissando gli altri. Un ciclo di lunghezza due è una **trasposizione**. I punti fissi sono cicli di lunghezza uno, normalmente omessi. Si può cambiare il punto iniziale, per esempio $(1\ 2\ 3)=(2\ 3\ 1)$; invertire il verso produce il ciclo inverso, che può essere diverso.

### Un calcolo completo in $S_3$

Prendiamo $\sigma=(1\ 2\ 3)$ e $\tau=(1\ 2)$. Per $\sigma\tau$ seguiamo prima $\tau$:
$$
1\mapsto2\mapsto3,\qquad
2\mapsto1\mapsto2,\qquad
3\mapsto3\mapsto1.
$$
Quindi $\sigma\tau=(1\ 3)$. Cambiando l’ordine otteniamo
$$
1\mapsto2\mapsto1,\qquad
2\mapsto3\mapsto3,\qquad
3\mapsto1\mapsto2,
$$
perciò $\tau\sigma=(2\ 3)$. I risultati sono diversi: $S_3$ non è abeliano. Gli stessi due cicli, fissando gli ulteriori punti, mostrano che $S_n$ non è abeliano per ogni $n\geq3$.

Quante permutazioni contiene $S_n$? L’immagine di $1$ ha $n$ possibilità, quella di $2$ ne ha $n-1$, e così via: le immagini devono essere tutte diverse, e ogni scelta completa produce una biiezione. Pertanto $|S_n|=n!$. In particolare
$$
S_3=\{\operatorname{id},(1\ 2),(1\ 3),(2\ 3),(1\ 2\ 3),(1\ 3\ 2)\}.
$$

## Decomporre, invertire e ripetere

Due cicli sono **disgiunti** quando non condividono punti. Commutano: un punto mosso dal primo è fissato dal secondo, prima e dopo il movimento; analogamente per il secondo. Un punto esterno a entrambi rimane fermo.

Ogni permutazione di un insieme finito si decompone in cicli disgiunti. Ecco perché. Scegli un punto $a$ e segui
$$
a,\sigma(a),\sigma^2(a),\ldots
$$
dove, per $k\geq0$, $\sigma^k$ significa comporre $k$ volte $\sigma$, con $\sigma^0=\operatorname{id}$. La finitezza impone una ripetizione. La prima ripetizione deve tornare ad $a$: se $\sigma^j(a)=\sigma^i(a)$ con $0<i<j$, applicando $i$ volte la funzione inversa avremmo una ripetizione precedente, $\sigma^{j-i}(a)=a$. Otteniamo così un ciclo.

Se restano punti, scegliamone uno esterno al ciclo e ripetiamo. La nuova traiettoria non può incontrare il ciclo precedente: se lo facesse, risalendo con la funzione inversa anche il punto iniziale apparterrebbe a quel ciclo. Si ottengono dunque cicli disgiunti, fino a esaurire i punti. Queste traiettorie, dette **orbite**, sono determinate dalla permutazione: la decomposizione è unica salvo ordine dei cicli e punto iniziale di ciascuno.

L’inverso di un ciclo percorre la traiettoria al contrario:
$$
(a_1\ a_2\ \cdots\ a_r)^{-1}=(a_1\ a_r\ \cdots\ a_2).
$$
Per invertire un prodotto si rovescia anche l’ordine dei fattori; quando i cicli sono disgiunti possiamo poi riordinarli, perché commutano.

Su un ciclo di lunghezza $r$, la potenza $k$ fa avanzare di $k$ posizioni. Scrivendo $k=qr+s$, con $0\leq s<r$, i $q$ giri completi lasciano lo stesso effetto di $s$ passi. Il ciclo torna identità esattamente quando $r\mid k$.

L’**ordine di una permutazione** $\pi$, indicato con $\operatorname{ord}(\pi)$, è il minimo intero positivo $k$ per cui $\pi^k=\operatorname{id}$. Se i cicli disgiunti hanno lunghezze $r_1,\ldots,r_t$, ogni punto ritorna al suo posto esattamente quando tutte le lunghezze dividono $k$. Ne segue
$$
\boxed{\operatorname{ord}(\pi)=\operatorname{mcm}(r_1,\ldots,r_t).}
$$
Per l’identità l’ordine è $1$, includendo i suoi cicli di lunghezza uno. La generalizzazione dell’ordine agli elementi di un gruppo qualsiasi sarà sviluppata nel [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|capitolo 16]].

Per esempio, in $S_7$ poniamo
$$
\pi=(1\ 4\ 2)(3\ 5\ 6\ 7).
$$
L’ordine è $\operatorname{mcm}(3,4)=12$. Per calcolare $\pi^{14}$ riduciamo separatamente: $14\equiv2\pmod3$ e $14\equiv2\pmod4$. Il primo ciclo al quadrato è $(1\ 2\ 4)$; sul secondo, avanzare di due posizioni scambia $3$ con $6$ e $5$ con $7$. Dunque
$$
\pi^{14}=(1\ 2\ 4)(3\ 6)(5\ 7),
\qquad
\pi^{-1}=(1\ 2\ 4)(3\ 7\ 6\ 5).
$$

## Fonti

Il capitolo rielabora [[Notes/Aritmetica/Lectures/2026-10-21 - Relazioni di equivalenza e strutture quoziente|la nota sulle strutture e sui quozienti]] e [[Notes/Aritmetica/Lectures/2026-10-27 - Gruppi ciclici, sottogruppi e permutazioni|la nota su gruppi, sottogruppi e permutazioni]], confrontate con i passi pertinenti di [[_transcripts/Aritmetica/2026-10-22 - Relazioni di equivalenza e strutture quoziente|trascrizione del 22 ottobre]] e [[_transcripts/Aritmetica/2026-10-27 - Gruppi ciclici, sottogruppi e permutazioni|trascrizione del 27 ottobre]].

Sono integrazioni didattiche la narrazione attraverso le simmetrie, la sistemazione delle prove di intersezione e unione, la giustificazione del neutro del sottogruppo mediante cancellazione e le prove tramite orbite della decomposizione e della formula dell’ordine. Esempi ed esercizi sono ricostruiti e verificati autonomamente.

## Esercizi per verificare la comprensione

Gli esercizi 1–6 consolidano gli strumenti fondamentali; 7–8 li collegano a nuove situazioni.

1. In $U(14)$ elenca tutti gli elementi e trova l’inverso di ciascuno.

> [!tip]- Riscontro 1
> Le classi coprime con $14$ sono $[1],[3],[5],[9],[11],[13]$. Gli inversi sono rispettivamente $[1],[5],[3],[11],[9],[13]$: infatti $3\cdot5=15\equiv1$, $9\cdot11=99\equiv1$ e $13^2=169\equiv1\pmod{14}$.

2. In un gruppo $G$, risolvi $axb=c$ rispetto a $x$, per $a,b,c\in G$. Dimostra anche l’unicità della soluzione.

> [!tip]- Riscontro 2
> Moltiplicando a sinistra per $a^{-1}$ e a destra per $b^{-1}$ si ottiene necessariamente $x=a^{-1}cb^{-1}$. Sostituendo, $a(a^{-1}cb^{-1})b=c$, quindi la soluzione esiste. Ogni soluzione deve avere questa forma, dunque è unica.

3. Dimostra che $H=\{[0]_{18},[6]_{18},[12]_{18}\}$ è un sottogruppo additivo di $\mathbb Z/18\mathbb Z$.

> [!tip]- Riscontro 3
> Sono le classi $[6k]_{18}$ con $k\in\mathbb Z$: riducendo $k$ modulo $3$ si ottengono esattamente le tre classi elencate. L’insieme contiene zero e $[6r]-[6s]=[6(r-s)]$ vi appartiene. Si applica il criterio additivo.

4. Calcola $8\mathbb Z\cap12\mathbb Z$. L’unione è un sottogruppo di $(\mathbb Z,+)$? Motiva con un elemento preciso.

> [!tip]- Riscontro 4
> L’intersezione è $24\mathbb Z$, perché $\operatorname{mcm}(8,12)=24$. L’unione contiene $8$ e $12$, ma non $20=8+12$, che non è divisibile né per $8$ né per $12$; quindi non è un sottogruppo.

5. In $S_5$ siano $\alpha=(1\ 2\ 3)$ e $\beta=(3\ 4\ 5)$. Scrivi $\alpha\beta$ e $\beta\alpha$ in cicli disgiunti e trova $(\alpha\beta)^{-1}$.

> [!tip]- Riscontro 5
> Seguendo prima il fattore a destra, $\alpha\beta$ manda $1\mapsto2\mapsto3\mapsto4\mapsto5\mapsto1$, quindi è $(1\ 2\ 3\ 4\ 5)$. Invece $\beta\alpha=(1\ 2\ 4\ 5\ 3)$. L’inverso del primo è $(1\ 5\ 4\ 3\ 2)$, ottenuto percorrendo il ciclo al contrario.

6. Per $\rho=(1\ 2\ 3\ 4)(5\ 6\ 7)\in S_7$, trova ordine, inverso e $\rho^{10}$. Diagnostica l’errore: «$\rho^{24}=\operatorname{id}$, dunque l’ordine è $24$».

> [!tip]- Riscontro 6
> L’ordine è $\operatorname{mcm}(4,3)=12$ e l’inverso è $(1\ 4\ 3\ 2)(5\ 7\ 6)$. Poiché $10\equiv2\pmod4$ e $10\equiv1\pmod3$, $\rho^{10}=(1\ 3)(2\ 4)(5\ 6\ 7)$. Il ritorno al passo $24$ non è necessariamente il primo: l’ordine divide $24$, e qui è $12$.

7. Per un elemento fissato $a$ di un gruppo $G$, poni $C_G(a)=\{x\in G:xa=ax\}$. Dimostra che è un sottogruppo e spiega perché $Z(G)=\bigcap_{a\in G}C_G(a)$.

> [!tip]- Riscontro 7
> Il neutro commuta con $a$. Se $x,y$ commutano con $a$, allora $(xy)a=x(ya)=x(ay)=(xa)y=a(xy)$. Da $xa=ax$, moltiplicando a sinistra e a destra per $x^{-1}$, segue $ax^{-1}=x^{-1}a$. Quindi anche inversi e prodotti appartengono a $C_G(a)$. Essere in tutte queste raccolte significa commutare con ogni $a$, esattamente la definizione del centro.

8. Numera consecutivamente in senso antiorario i vertici di un poligono regolare con $0,1,\ldots,n-1$, per $n\geq3$. Sia $r_k$ la rotazione che manda il vertice $j$ nel vertice di etichetta congrua a $j+k$ modulo $n$. Dimostra che le $n$ rotazioni $r_0,\ldots,r_{n-1}$ formano un gruppo abeliano per composizione; trova l’ordine di $r_1$.

> [!tip]- Riscontro 8
> La composizione dà $r_kr_h=r_{k+h}$, riducendo l’indice modulo $n$: dunque è chiusa e commutativa. L’associatività è quella delle funzioni, il neutro è $r_0$, l’inverso di $r_k$ è $r_{-k}$. Le rotazioni sono distinte perché mandano il vertice $0$ in vertici distinti. Ripetere $r_1$ avanza di un posto ogni volta: il primo ritorno di tutti i vertici avviene dopo $n$ passi, quindi $\operatorname{ord}(r_1)=n$.

Il capitolo è acquisito quando sai verificare un sottogruppo distinguendo le proprietà ereditate da quelle da provare, e calcolare una composizione conservando l’ordine delle azioni. La decomposizione in cicli deve permetterti di spiegare, oltre che calcolare, inversi, potenze e primo ritorno all’identità.

---

[[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|← 13 · Equivalenze e insiemi quoziente]] · [[Books/Aritmetica-I/00 - Indice e piano di studio|Indice]] · [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|15 · Anelli, campi e omomorfismi →]]
