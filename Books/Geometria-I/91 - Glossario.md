# Glossario

I termini tecnici del libro in ordine alfabetico, con una definizione breve e il collegamento al capitolo che li sviluppa. Le formule usano le convenzioni dell’[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

## A

- **applicazione lineare** — Funzione $F:V\to W$ fra spazi sullo stesso campo che soddisfa $F(u+v)=F(u)+F(v)$ e $F(\lambda v)=\lambda F(v)$. Conserva tutte le combinazioni lineari finite. La condizione $F(0)=0$ è necessaria ma da sola non basta. → [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|cap. 11]]
- **argomento** — Per $z\ne0$, angolo $\theta$ tale che $z=|z|(\cos\theta+i\sin\theta)$. È determinato modulo $2\pi$; una scelta di argomento principale richiede una convenzione. Il numero zero non ha argomento. → [[Books/Geometria-I/02 - Numeri complessi e geometria del piano|cap. 02]]

## B

- **base** — Famiglia di vettori che genera lo spazio ed è linearmente indipendente. La generazione assicura l’esistenza delle rappresentazioni; l’indipendenza ne assicura l’unicità. Lo spazio nullo ha come base la famiglia vuota. → [[Books/Geometria-I/06 - Indipendenza basi e coordinate|cap. 06]]
- **base adattata** — Base di $V$ i cui primi vettori formano una base di un sottospazio fissato $U$. Rispetto a basi adattate, il vincolo $F(U)\subseteq Z$ impone un blocco nullo alla matrice di $F$. → [[Books/Geometria-I/15 - Basi adattate e spazi di applicazioni|cap. 15]]
- **base canonica** — In $K^n$, famiglia dei vettori $e_j$ con una sola coordinata uguale a 1. In $M_{m,n}(K)$ è la famiglia delle matrici $E_{ij}$ con una sola entrata uguale a 1. Una base dell’ambiente non è automaticamente una base di un suo sottospazio. → [[Books/Geometria-I/06 - Indipendenza basi e coordinate|cap. 06]]
- **base ordinata** — Base finita con ordine fissato $B=(v_1,\ldots,v_n)$. L’ordine determina la posizione dei coefficienti nel vettore colonna delle coordinate. Scambiare due vettori della base scambia le corrispondenti coordinate. → [[Books/Geometria-I/06 - Indipendenza basi e coordinate|cap. 06]]
- **biettiva** — Funzione che è sia iniettiva sia suriettiva. Ogni elemento del codominio ha esattamente una preimmagine. Una funzione ammette inversa se e solo se è biettiva. → [[Books/Geometria-I/01 - Il linguaggio della geometria e i campi|cap. 01]]

## C

- **cambio di base** — Passaggio fra le coordinate dello stesso vettore in due basi. Con $P=P_{B\leftarrow B'}$ si ha $[v]_B=P[v]_{B'}$: le colonne di $P$ sono i vettori di $B'$ espressi in $B$. È un raccordo aggiunto al percorso disponibile. → [[Books/Geometria-I/14 - Matrici associate e composizione|cap. 14]]
- **campo** — Insieme $K$ con somma e prodotto commutativi, identità distinte $0\ne1$, opposti additivi, inversi moltiplicativi per ogni elemento non nullo e distributività. Esempi: $\mathbb Q,\mathbb R,\mathbb C,\mathbb F_2$; $\mathbb Z$ con le operazioni usuali non è un campo. → [[Books/Geometria-I/01 - Il linguaggio della geometria e i campi|cap. 01]]
- **campo degli scalari** — Campo da cui si prendono i coefficienti delle combinazioni lineari. È parte della struttura vettoriale: $\mathbb C$ ha base $(1,i)$ su $\mathbb R$ e base $(1)$ su $\mathbb C$. → [[Books/Geometria-I/04 - Spazi vettoriali e operazioni lineari|cap. 04]]
- **caratteristica** — Se esiste, il minimo intero positivo $p$ tale che $p\cdot1_K=0$; se non esiste è zero. Nei campi è zero o un numero primo. In caratteristica 2 si ha $1+1=0$ e non si può dividere per 2. → [[Books/Geometria-I/01 - Il linguaggio della geometria e i campi|cap. 01]]
- **colonna pivot** — Colonna che contiene un pivot in una matrice a scala. Gli indici delle colonne pivot individuano una base dello spazio delle colonne scegliendo le colonne della matrice ORIGINALE, prima delle operazioni di riga. → [[Books/Geometria-I/13 - Calcolare basi somme e intersezioni|cap. 13]]
- **combinazione lineare** — Somma finita $\lambda_1v_1+\cdots+\lambda_kv_k$, con coefficienti nel campo degli scalari. Anche quando i generatori sono infiniti, ogni singola combinazione usa soltanto un numero finito di vettori. → [[Books/Geometria-I/05 - Sottospazi e combinazioni lineari|cap. 05]]
- **commutatore** — Per una matrice fissata $A$, l’applicazione $X\mapsto AX-XA$ è lineare nello spazio delle matrici quadrate. Il suo nucleo è l’insieme delle matrici che commutano con $A$. → [[Books/Geometria-I/14 - Matrici associate e composizione|cap. 14]]
- **completamento di una base** — Estensione di una famiglia indipendente a una base dello spazio, aggiungendo vettori senza eliminare quelli iniziali. Nel caso finito si può scegliere fra i vettori di una base già nota. → [[Books/Geometria-I/07 - Dimensione scambio e completamento|cap. 07]]
- **composizione** — Per $F:V\to W$ e $G:W\to Z$, è la funzione $G\circ F$, data da $v\mapsto G(F(v))$. Con basi intermedie coincidenti, la matrice della composizione è il prodotto delle matrici nello stesso ordine $M(G)M(F)$. → [[Books/Geometria-I/14 - Matrici associate e composizione|cap. 14]]
- **coniugato** — Per $z=a+ib$ è $\bar z=a-ib$. Il coniugio conserva somme e prodotti e soddisfa $z\bar z=|z|^2$. I complessi fissati dal coniugio sono precisamente i reali. → [[Books/Geometria-I/02 - Numeri complessi e geometria del piano|cap. 02]]
- **controesempio** — Caso che soddisfa tutte le ipotesi di un’affermazione universale e ne viola la conclusione. Basta un controesempio per confutare l’affermazione; molti esempi favorevoli non bastano a dimostrarla. → [[Books/Geometria-I/01 - Il linguaggio della geometria e i campi|cap. 01]]
- **coordinate** — Coefficienti unici dello sviluppo di un vettore rispetto a una base ordinata, raccolti nella colonna $[v]_B$. Le coordinate dipendono dalla base e vanno distinte dall’oggetto che descrivono. → [[Books/Geometria-I/06 - Indipendenza basi e coordinate|cap. 06]]

## D

- **De Moivre** — Per $n\ge0$ intero, $(\cos\theta+i\sin\theta)^n=\cos(n\theta)+i\sin(n\theta)$. Deriva dalla formula del prodotto in forma polare; per un complesso di modulo $\rho$, il modulo della potenza è $\rho^n$. → [[Books/Geometria-I/02 - Numeri complessi e geometria del piano|cap. 02]]
- **dimensione** — Numero dei vettori di una base di uno spazio finitamente generato. Il lemma di scambio garantisce che non dipende dalla base. Si ha $\dim K^n=n$, $\dim M_{m,n}(K)=mn$ e $\dim K[t]_{\le d}=d+1$. → [[Books/Geometria-I/07 - Dimensione scambio e completamento|cap. 07]]
- **dipendenza lineare** — Esistenza di una relazione nulla con coefficienti non tutti nulli. Per una famiglia finita equivale al fatto che un vettore appartenga allo span degli altri. «Non tutti nulli» consente che alcuni coefficienti siano zero. → [[Books/Geometria-I/06 - Indipendenza basi e coordinate|cap. 06]]
- **discriminante** — Per $az^2+bz+c$, con $a\ne0$, è $\Delta=b^2-4ac$. Sui complessi si scelgono le due radici opposte di $\Delta$; non esiste un ordine che distingua una radice complessa positiva da una negativa. → [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|cap. 03]]
- **doppia inclusione** — Metodo per provare $A=B$: si mostra sia $A\subseteq B$ sia $B\subseteq A$, prendendo un elemento generico e traducendo le condizioni di appartenenza. → [[Books/Geometria-I/01 - Il linguaggio della geometria e i campi|cap. 01]]

## E

- **equivalenza a destra** — Due matrici della stessa forma sono equivalenti a destra se $B=AQ$ con $Q$ invertibile. Corrisponde alle operazioni elementari sulle colonne; conserva lo spazio delle colonne. → [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|cap. 12]]
- **equivalenza a sinistra** — Due matrici della stessa forma sono equivalenti a sinistra se $B=PA$ con $P$ invertibile. Corrisponde alle operazioni elementari sulle righe; conserva il nucleo e lo spazio delle righe. → [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|cap. 12]]
- **estrazione di una base** — Eliminazione dei vettori ridondanti da una famiglia generatrice, mantenendo lo stesso span. Con Gauss si usano gli indici pivot per scegliere fra le colonne originali. → [[Books/Geometria-I/13 - Calcolare basi somme e intersezioni|cap. 13]]

## F

- **fattore e radice** — Per un polinomio $P$, $P(a)=0$ se e solo se $t-a$ divide $P(t)$. La divisione per $t-a$ lascia resto costante $P(a)$. Questo collega un valore nullo a una fattorizzazione. → [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|cap. 03]]
- **fibra** — Per una funzione $F$, l’insieme $F^{-1}(\{w\})$ di tutti gli elementi mandati in $w$. Se $F$ è lineare e $F(v_0)=w$, la fibra è $v_0+\ker F$; se $w$ non è nell’immagine è vuota. → [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|cap. 11]]
- **forma a scala** — Matrice in cui le righe nulle stanno in fondo e la prima entrata non nulla di ogni riga successiva è più a destra di quella precedente. Consente la sostituzione all’indietro. → [[Books/Geometria-I/10 - Il metodo di Gauss|cap. 10]]
- **forma ridotta a scala** — Forma a scala con pivot uguali a 1 e tutte le altre entrate delle colonne pivot nulle. Ogni classe di equivalenza per righe possiede una sola forma ridotta. → [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|cap. 12]]

## G

- **Gauss** — Algoritmo che usa operazioni elementari reversibili per portare una matrice a scala. Su un sistema si applica all’intera matrice completa, inclusa la colonna dei termini noti. → [[Books/Geometria-I/10 - Il metodo di Gauss|cap. 10]]
- **generatori** — Famiglia il cui span è tutto lo spazio considerato. Garantisce rappresentazioni di ogni vettore, ma può contenerne di ridondanti e non garantisce l’unicità dei coefficienti. → [[Books/Geometria-I/05 - Sottospazi e combinazioni lineari|cap. 05]]
- **grado** — Per un polinomio non nullo è il massimo esponente con coefficiente non nullo. Il polinomio zero va trattato separatamente. Il grado della somma può diminuire per cancellazione dei termini principali. → [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|cap. 03]]
- **Grassmann** — Formula $\dim(U+W)=\dim U+\dim W-\dim(U\cap W)$ per sottospazi finito dimensionali. La sottrazione corregge la parte contata due volte; la prova prolunga una base dell’intersezione a basi dei due sottospazi. → [[Books/Geometria-I/08 - Somme dirette e decomposizioni|cap. 08]]
- **gruppo lineare generale** — $\mathrm{GL}_n(K)$ è l’insieme delle matrici invertibili $n\times n$, con prodotto matriciale. È un gruppo; non è uno spazio vettoriale con le operazioni usuali sulle matrici. → [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|cap. 12]]

## I

- **immagine** — $\operatorname{Im}F=\{F(v):v\in V\}$. Per una funzione lineare è un sottospazio del codominio. Per $x\mapsto Ax$ è lo span delle colonne di $A$. L’immagine può essere un sottoinsieme proprio del codominio. → [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|cap. 11]]
- **indipendenza lineare** — Condizione per cui ogni relazione $\sum_j\lambda_jv_j=0$ ha tutti i coefficienti nulli. Equivale all’unicità delle rappresentazioni dei vettori nello span; da sola non garantisce di generare l’ambiente. → [[Books/Geometria-I/06 - Indipendenza basi e coordinate|cap. 06]]
- **iniettiva** — Funzione per cui $f(x)=f(x')$ implica $x=x'$. Per una funzione lineare equivale a $\ker F=\{0\}$. Una matrice con colonne indipendenti definisce un’applicazione iniettiva. → [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|cap. 11]]
- **intersezione** — $U\cap W$ contiene i vettori comuni ai due sottospazi ed è sempre un sottospazio. Se entrambi sono descritti da equazioni, si impongono tutte le equazioni contemporaneamente. → [[Books/Geometria-I/13 - Calcolare basi somme e intersezioni|cap. 13]]
- **inversa** — Funzione $f^{-1}$ che soddisfa entrambe le identità $f^{-1}\circ f=\operatorname{id}$ e $f\circ f^{-1}=\operatorname{id}$. Per una matrice quadrata $A$, l’inversa soddisfa $A^{-1}A=AA^{-1}=I$. → [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|cap. 12]]
- **isomorfismo** — Applicazione lineare biettiva. La sua inversa è lineare. Un isomorfismo conserva tutte le relazioni lineari; la mappa delle coordinate rispetto a una base finita identifica in questo senso lo spazio con $K^n$. → [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|cap. 11]]

## L

- **lemma di scambio** — Consente di inserire vettori indipendenti in una famiglia generatrice, sostituendo opportunamente vettori già presenti. Implica che una famiglia indipendente non può avere più elementi di una famiglia finita generatrice. → [[Books/Geometria-I/07 - Dimensione scambio e completamento|cap. 07]]

## M

- **matrice associata** — Rispetto a $B=(v_1,\ldots,v_n)$ nel dominio e $C$ nel codominio, è $M_{C\leftarrow B}(F)$, la cui colonna $j$ è $[F(v_j)]_C$. Soddisfa $[F(v)]_C=M_{C\leftarrow B}(F)[v]_B$. → [[Books/Geometria-I/14 - Matrici associate e composizione|cap. 14]]
- **matrice completa** — Per $Ax=b$ è la matrice $[A\mid b]$, ottenuta affiancando i termini noti ai coefficienti. Una riga finale $[0\ \cdots\ 0\mid c]$ con $c\ne0$ segnala incompatibilità. → [[Books/Geometria-I/09 - Matrici e sistemi lineari|cap. 09]]
- **matrice elementare** — Matrice ottenuta applicando una sola operazione elementare all’identità. Moltiplicare a sinistra agisce sulle righe; ogni matrice elementare è invertibile e la sua inversa realizza l’operazione inversa. → [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|cap. 12]]
- **matrice invertibile** — Matrice quadrata che ammette inversa. Equivale ad avere rango massimo e a definire una funzione biettiva. L’inversa si trova riducendo $[A\mid I]$ fino a $[I\mid A^{-1}]$. → [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|cap. 12]]
- **matrici simmetriche e antisimmetriche** — Soddisfano rispettivamente $A^T=A$ e $A^T=-A$. Se $2\ne0$ in $K$, ogni matrice quadrata si decompone unicamente come $(A+A^T)/2+(A-A^T)/2$. → [[Books/Geometria-I/08 - Somme dirette e decomposizioni|cap. 08]]
- **modulo** — Per $z=a+ib$ è il reale non negativo $|z|=\sqrt{a^2+b^2}$. Vale $|z|=0$ se e solo se $z=0$ e $|zw|=|z||w|$. Geometricamente è la distanza dall’origine. → [[Books/Geometria-I/02 - Numeri complessi e geometria del piano|cap. 02]]
- **molteplicità** — Per una radice $a$ di un polinomio non nullo $P$, è il massimo intero $m\ge1$ per cui $(t-a)^m$ divide $P$. Equivalentemente $P=(t-a)^mQ$ con $Q(a)\ne0$. → [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|cap. 03]]

## N

- **non vuoto** — Ipotesi essenziale nel criterio compatto di sottospazio. L’insieme vuoto soddisfa vacuamente una condizione formulata per tutti i suoi elementi, ma non contiene il vettore nullo e non è uno spazio vettoriale. → [[Books/Geometria-I/05 - Sottospazi e combinazioni lineari|cap. 05]]
- **nucleo** — $\ker F=\{v\in V:F(v)=0\}$. Per una funzione lineare è un sottospazio del DOMINIO. Descrive le direzioni che la trasformazione annulla e le differenze fra elementi con la stessa immagine. → [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|cap. 11]]
- **nullità** — Dimensione del nucleo di un’applicazione lineare. Per una matrice con $n$ colonne e rango $r$ vale $n-r$ e coincide con il numero delle variabili libere nell’omogeneo. → [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|cap. 11]]

## O

- **operazione elementare di riga** — Scambio di due righe, riscalamento di una riga per uno scalare non nullo, oppure aggiunta a una riga di un multiplo di un’altra. Sono tutte reversibili; il coefficiente del riscalamento non può essere zero. → [[Books/Geometria-I/10 - Il metodo di Gauss|cap. 10]]

## P

- **pivot** — Prima entrata non nulla di una riga non nulla in forma a scala. Individua la variabile determinata da quella riga dopo aver scelto le variabili libere. Un pivot nell’ultima colonna della completa segnala incompatibilità. → [[Books/Geometria-I/10 - Il metodo di Gauss|cap. 10]]
- **polinomio formale** — Sequenza di coefficienti a supporto finito, scritta come somma di monomi. Non coincide per definizione con una funzione: su un campo finito polinomi distinti possono indurre la stessa funzione. → [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|cap. 03]]
- **prodotto cartesiano** — $X\times Y=\{(x,y):x\in X,y\in Y\}$. Le coppie sono ordinate. Identificazioni fra coppie annidate e tuple si fanno attraverso corrispondenze esplicite, senza confondere uguaglianza e identificazione. → [[Books/Geometria-I/01 - Il linguaggio della geometria e i campi|cap. 01]]
- **prodotto matriciale** — Per $A\in M_{m,n}(K)$ e $B\in M_{n,p}(K)$, la matrice $AB$ è $m\times p$ e ha entrate $(AB)_{ij}=\sum_k a_{ik}b_{kj}$. È associativo ma in generale non commutativo. → [[Books/Geometria-I/09 - Matrici e sistemi lineari|cap. 09]]

## R

- **radici ennesime** — Per $w=R(\cos\theta+i\sin\theta)\ne0$ sono i complessi di modulo $R^{1/n}$ e angoli $(\theta+2k\pi)/n$, $k=0,\ldots,n-1$. Sono $n$ radici distinte; per $w=0$ l’unica radice distinta è zero. → [[Books/Geometria-I/02 - Numeri complessi e geometria del piano|cap. 02]]
- **rango** — Dimensione dell’immagine di un’applicazione lineare. Per una matrice è la dimensione dello spazio delle colonne, uguale a quella dello spazio delle righe e al numero dei pivot di una riduzione a scala. → [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|cap. 12]]
- **rango-nullità** — Teorema $\dim V=\dim\ker F+\dim\operatorname{Im}F$ quando il dominio ha dimensione finita. Una base del nucleo viene completata a una base del dominio; le immagini dei vettori aggiunti formano una base dell’immagine. → [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|cap. 11]]
- **Rouché-Capelli** — Il sistema $Ax=b$ è compatibile se e solo se $\operatorname{rank}A=\operatorname{rank}[A\mid b]$. Esprime il fatto che aggiungere $b$ alle colonne non aumenta lo span esattamente quando $b$ è già una loro combinazione. → [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|cap. 12]]

## S

- **sistema compatibile** — Sistema che ammette almeno una soluzione. Se il rango è $r$ e le incognite sono $n$, l’insieme delle soluzioni dipende da $n-r$ parametri; su un campo con $q$ elementi contiene $q^{n-r}$ punti. → [[Books/Geometria-I/10 - Il metodo di Gauss|cap. 10]]
- **sistema omogeneo** — Sistema $Ax=0$. Ha sempre la soluzione nulla e il suo insieme di soluzioni è un sottospazio. Ogni sistema compatibile $Ax=b$ ha soluzioni $x_p+\ker A$. → [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|cap. 11]]
- **soluzione particolare** — Una soluzione fissata $x_p$ di $Ax=b$. Tutte le altre si ottengono aggiungendole soluzioni dell’omogeneo. Cambiare soluzione particolare non cambia il traslato complessivo. → [[Books/Geometria-I/10 - Il metodo di Gauss|cap. 10]]
- **somma di sottospazi** — $U+W=\{u+w:u\in U,w\in W\}$. È il più piccolo sottospazio che contiene entrambi e coincide con $\operatorname{span}(U\cup W)$. Non coincide in generale con l’unione. → [[Books/Geometria-I/08 - Somme dirette e decomposizioni|cap. 08]]
- **somma diretta** — Somma in cui ogni vettore ha un’unica decomposizione nelle componenti assegnate. Per due sottospazi equivale a $U\cap W=\{0\}$. Per tre o più, le sole intersezioni a due a due nulle non bastano. → [[Books/Geometria-I/08 - Somme dirette e decomposizioni|cap. 08]]
- **sottospazio** — Sottoinsieme di uno spazio vettoriale che, con le stesse operazioni e sullo stesso campo, è a sua volta uno spazio vettoriale. Il criterio richiede che contenga zero e sia chiuso per somma e prodotto per scalare. → [[Books/Geometria-I/05 - Sottospazi e combinazioni lineari|cap. 05]]
- **span** — Insieme di tutte le combinazioni lineari finite dei vettori dati. È il più piccolo sottospazio che li contiene. Con la convenzione della somma vuota si ha $\operatorname{span}(\varnothing)=\{0\}$. → [[Books/Geometria-I/05 - Sottospazi e combinazioni lineari|cap. 05]]
- **spazio delle applicazioni lineari** — $\mathcal L(V,W)$, detto anche $\operatorname{Hom}_K(V,W)$, è lo spazio delle applicazioni lineari da $V$ a $W$, con operazioni puntuali. Se le dimensioni sono $n,m$, la sua dimensione è $mn$. → [[Books/Geometria-I/15 - Basi adattate e spazi di applicazioni|cap. 15]]
- **spazio vettoriale** — Insieme con una somma abeliana e un prodotto per scalare compatibile con il campo, distributivo rispetto alle due somme e con $1v=v$. Gli elementi possono essere frecce, tuple, polinomi, matrici o funzioni. → [[Books/Geometria-I/04 - Spazi vettoriali e operazioni lineari|cap. 04]]
- **supplementare** — Sottospazio $W$ tale che $V=U\oplus W$. Nel caso finito si costruisce completando una base di $U$; non è in generale unico e ha dimensione $\dim V-\dim U$. → [[Books/Geometria-I/08 - Somme dirette e decomposizioni|cap. 08]]
- **supporto finito** — Proprietà di una famiglia di coefficienti di essere nulla tranne che in un numero finito di posizioni. Le coordinate rispetto a una base infinita hanno supporto finito: appartengono a $K^{(B)}$, non a tutte le funzioni $K^B$. → [[Books/Geometria-I/06 - Indipendenza basi e coordinate|cap. 06]]
- **suriettiva** — Funzione che raggiunge ogni elemento del codominio. Per una funzione lineare equivale a $\operatorname{Im}F=W$. Il codominio dichiarato è decisivo per stabilire la suriettività. → [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|cap. 11]]

## T

- **teorema fondamentale dell’algebra** — Ogni polinomio non costante a coefficienti complessi ha almeno una radice complessa. Nel libro è assunto; insieme al criterio del fattore permette di dimostrare per induzione la fattorizzazione completa in fattori lineari. → [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|cap. 03]]
- **traslato** — Insieme $v_0+U=\{v_0+u:u\in U\}$ ottenuto spostando un sottospazio. È un sottospazio se e solo se contiene zero, ossia se $v_0\in U$. Descrive gli insiemi di soluzioni di sistemi compatibili. → [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|cap. 11]]
- **trasposta** — Per $A\in M_{m,n}(K)$, è $A^T\in M_{n,m}(K)$ con $(A^T)_{ij}=a_{ji}$. Soddisfa $(AB)^T=B^TA^T$: trasporre inverte l’ordine del prodotto. → [[Books/Geometria-I/09 - Matrici e sistemi lineari|cap. 09]]

## U

- **unione di sottospazi** — $U\cup W$ è un sottospazio se e solo se uno dei due sottospazi contiene l’altro. Se nessuno contiene l’altro, scegliendo $u\in U\setminus W$ e $w\in W\setminus U$, la somma $u+w$ non appartiene all’unione. → [[Books/Geometria-I/05 - Sottospazi e combinazioni lineari|cap. 05]]

## V

- **variabile libera** — Incognita associata a una colonna senza pivot nel sistema a scala compatibile. Può essere scelta arbitrariamente nel campo; le variabili pivot si ricavano per sostituzione all’indietro. → [[Books/Geometria-I/10 - Il metodo di Gauss|cap. 10]]
- **vincolo lineare sulle applicazioni** — Condizione stabile per somma e prodotto per scalare, come $F(U)\subseteq Z$. In basi adattate diventa un insieme di coefficienti nulli. Imporre esattamente un nucleo o un rango, invece, in generale non definisce un sottospazio. → [[Books/Geometria-I/15 - Basi adattate e spazi di applicazioni|cap. 15]]

---

[[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/90 - Fonti e criteri editoriali|Fonti e criteri editoriali]]
