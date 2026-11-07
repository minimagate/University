# Indipendenza basi e coordinate

Prerequisiti: [[Books/Geometria-I/05 - Sottospazi e combinazioni lineari|sottospazi, span e generatori]]; per alcuni esempi, [[Books/Geometria-I/02 - Numeri complessi e geometria del piano|numeri complessi]] e [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|polinomi formali]]. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Riconoscerai quando un vettore aggiunge informazione e quando è già ricostruibile dagli altri.
> - Distinguerai la **generazione**, che dà rappresentazioni, dall'**indipendenza**, che rende unici i coefficienti.
> - Costruirai basi di spazi di vettori numerici, polinomi e matrici senza usare criteri dimensionali ancora da dimostrare.
> - Userai le **coordinate** come una traduzione reversibile, tenendo visibili la base, il suo ordine e il campo degli scalari.

## Domande per iniziare dagli esercizi

Prova prima il problema indicato. Se ti fermi, usa il collegamento alla teoria per recuperare soltanto lo strumento che manca; poi richiudi la spiegazione e riparti. I riscontri sono raccolti in fondo. Per una base occorrono due verifiche distinte: non basta eseguire correttamente il calcolo di una relazione nulla.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Quando una stessa descrizione può essere scritta in due modi? | [[#Esercizio 2 — Togliere un vettore senza perdere nulla (ridondanza)\|2]], [[#Esercizio 3 — Unicità non significa esistenza (generatori e indipendenza)\|3]] | [[#Descrivere tutto e descrivere una volta sola\|Il problema di partenza]] |
| Che cosa dice esattamente «l'unica relazione nulla è quella banale»? | [[#Esercizio 1 — Zeri ripetizioni e famiglia vuota (definizione di indipendenza)\|1]] | [[#Le relazioni nulle riconoscono la dipendenza\|Definizione e casi limite]] |
| Quando posso eliminare un vettore e quali proprietà passano alle sottofamiglie? | [[#Esercizio 2 — Togliere un vettore senza perdere nulla (ridondanza)\|2]], [[#Esercizio 11 — Una lista infinita ma un uso finito (supporto finito)\|11]] | [[#Un vettore è superfluo quando dipende dagli altri\|Il criterio di ridondanza]] |
| Perché sottrarre due rappresentazioni risolve il problema dell'unicità? | [[#Esercizio 3 — Unicità non significa esistenza (generatori e indipendenza)\|3]], [[#Esercizio 12 — Due domande sulla stessa mappa (base e mappa dei coefficienti)\|12]] | [[#Indipendenza e unicità dei coefficienti\|L'equivalenza fondamentale]] |
| Come dimostro una base senza contare prima la dimensione? | [[#Esercizio 5 — Cambiare i mattoni di un polinomio (basi di polinomi)\|5]], [[#Esercizio 6 — Il termine di grado maggiore decide (gradi e indipendenza)\|6]], [[#Esercizio 10 — Una base che dipende da un parametro (due verifiche distinte)\|10]] | [[#Una base garantisce esistenza e unicità\|Basi ed esempi fondamentali]] |
| Perché lo stesso vettore ha coordinate diverse cambiando riferimento? | [[#Esercizio 4 — Leggere un riferimento obliquo (coordinate e ordine)\|4]] | [[#Le coordinate dipendono dalla base ordinata\|Coordinate e riferimenti]] |
| Come si fanno i calcoli in coordinate senza perdere gli oggetti originali? | [[#Esercizio 8 — Calcolare passando dalle coordinate (mappa delle coordinate)\|8]], [[#Esercizio 12 — Due domande sulla stessa mappa (base e mappa dei coefficienti)\|12]] | [[#La mappa delle coordinate conserva le operazioni\|Una traduzione reversibile]] |
| Che cosa cambia se cambiano i coefficienti ammessi? | [[#Esercizio 7 — Una base che richiede di dividere per due (matrici e campo)\|7]], [[#Esercizio 9 — Gli stessi vettori su due campi (scalari reali e complessi)\|9]] | [[#Il campo degli scalari cambia la domanda\|Indipendenza e campo]] |
| Che cosa sono le coordinate in una base infinita? | [[#Esercizio 11 — Una lista infinita ma un uso finito (supporto finito)\|11]] | [[#Basi infinite e coordinate a supporto finito\|Il caso infinito]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–4 allenano le distinzioni essenziali; 5–9 le trasferiscono a oggetti e campi diversi; 10–12 richiedono di coordinare calcolo e dimostrazione. Gli esercizi sono redazionali. Non usare determinanti o un criterio basato sul numero dei vettori: qui il controllo deve venire dalle definizioni.

### Esercizio 1 — Zeri ripetizioni e famiglia vuota (definizione di indipendenza)

Sia $u\ne0$ in uno spazio vettoriale su $K$. Stabilisci se sono indipendenti le famiglie $()$, $(0)$, $(u)$, $(u,0)$ e $(u,u)$. Per ogni famiglia dipendente scrivi una relazione non banale. Perché $(u,u)$ e l'insieme $\{u\}$ non sono lo stesso dato?

Spiega inoltre la differenza fra «coefficienti non tutti nulli» e «coefficienti tutti non nulli», usando una relazione fra $e_1,e_2,2e_1,e_3$ in $\mathbb R^3$.

Se ti blocchi: [[#Le relazioni nulle riconoscono la dipendenza|definizione di indipendenza]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Togliere un vettore senza perdere nulla (ridondanza)

In $\mathbb R^3$ siano

$$
v_1=(1,0,1),\quad v_2=(0,1,1),\quad
v_3=(1,1,2),\quad v_4=(0,0,1).
$$

Trova una relazione non banale fra i quattro vettori. Elimina un vettore senza cambiare lo span e prova che i tre rimasti sono indipendenti. Scrivi poi un vettore generico $(x,y,z)$ come loro combinazione, giustificando che lo span iniziale è tutto $\mathbb R^3$.

Dimostra anche che ogni sottofamiglia di una famiglia indipendente è indipendente e che aggiungere vettori a una famiglia dipendente non la rende indipendente.

Se ti blocchi: [[#Un vettore è superfluo quando dipende dagli altri|ridondanza e sottofamiglie]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Unicità non significa esistenza (generatori e indipendenza)

Considera $(e_1,e_2)$ in $\mathbb R^3$ e $((1,0),(0,1),(1,1))$ in $\mathbb R^2$. In ciascun caso verifica separatamente indipendenza e generazione dello spazio ambiente.

Un compagno afferma: «Se una famiglia è indipendente, ogni vettore dello spazio ha un'unica rappresentazione con quei vettori». Correggi la frase. Dimostra poi l'equivalenza corretta fra indipendenza e unicità delle rappresentazioni, esplicitando dove interviene il vettore nullo.

Se ti blocchi: [[#Indipendenza e unicità dei coefficienti|unicità nello span]] · [[#Una base garantisce esistenza e unicità|definizione di base]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Leggere un riferimento obliquo (coordinate e ordine)

In $\mathbb R^2$ considera $B=((1,0),(1,2))$. Dimostra direttamente che è una base e trova le coordinate di $v=(3,4)$. Quali sono le coordinate dello stesso vettore nella base ottenuta invertendo l'ordine di $B$? Qual è il vettore $w$ per cui $[w]_B=(2,-1)^T$?

Spiega perché la colonna $(1,2)^T$, che compare nel calcolo di $[v]_B$, non va identificata automaticamente con $v$.

Se ti blocchi: [[#Le coordinate dipendono dalla base ordinata|riferimenti e coordinate]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Cambiare i mattoni di un polinomio (basi di polinomi)

Dimostra, su un campo qualsiasi $K$, che $B=(1,t+1,t^2)$ è una base di $K[t]_{\le2}$. Verifica sia generazione sia indipendenza mediante i coefficienti.

Lavorando poi su $\mathbb R$, trova le coordinate di $P(t)=3-2t+4t^2$ rispetto a $B$ e ricostruisci $P$ da esse. Perché verificare l'uguaglianza soltanto in due punti non sarebbe una prova dell'identità fra questi polinomi?

Se ti blocchi: [[#Una base garantisce esistenza e unicità|basi di polinomi]] · [[#La mappa delle coordinate conserva le operazioni|coordinate degli oggetti astratti]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Il termine di grado maggiore decide (gradi e indipendenza)

Dimostra che una famiglia finita di polinomi non nulli, con gradi a due a due distinti, è indipendente. La condizione sui gradi è anche necessaria? Esamina $t$ e $t+1$.

I due polinomi $t,t+1$ formano una base di $K[t]_{\le1}$? E di $K[t]_{\le2}$? Rispondi con rappresentazioni o controesempi, senza usare la dimensione.

Se ti blocchi: [[#Una base garantisce esistenza e unicità|indipendenza dei polinomi e generazione]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Una base che richiede di dividere per due (matrici e campo)

Sia

$$
B=(E_{11},\,E_{12}+E_{21},\,E_{12}-E_{21},\,E_{22})
$$

in $M_{2,2}(K)$. Se $2\ne0$ in $K$, prova che $B$ è una base e calcola le coordinate di $\begin{pmatrix}a&b\\c&d\end{pmatrix}$. Quali passaggi falliscono in $\mathbb F_2$? In quel campo $B$ è indipendente? Genera tutte le matrici?

Se ti blocchi: [[#Una base garantisce esistenza e unicità|base canonica delle matrici]] · [[#Il campo degli scalari cambia la domanda|divisioni e campo]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Calcolare passando dalle coordinate (mappa delle coordinate)

Sia $B=(b_1,b_2,b_3)$ una base di uno spazio reale $V$ e siano

$$
[u]_B=\begin{pmatrix}1\\-2\\0\end{pmatrix},
\qquad
[v]_B=\begin{pmatrix}0\\3\\1\end{pmatrix}.
$$

Calcola $[2u-v]_B$ e scrivi $2u-v$ come combinazione dei $b_j$. Dimostra le identità $[x+y]_B=[x]_B+[y]_B$ e $[\lambda x]_B=\lambda[x]_B$. Perché le identità non autorizzano a sommare due colonne riferite a basi diverse senza prima convertirle?

Se ti blocchi: [[#La mappa delle coordinate conserva le operazioni|proprietà della mappa delle coordinate]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Gli stessi vettori su due campi (scalari reali e complessi)

In $\mathbb C^2$ siano $v=(1,i)$ e $w=(i,-1)$. Studia l'indipendenza della famiglia $(v,w)$ prima su $\mathbb C$, poi su $\mathbb R$. Genera tutto $\mathbb C^2$ su almeno uno dei due campi?

Dimostra che $(v,(1,0))$ è una base complessa di $\mathbb C^2$. Infine spiega perché l'indipendenza complessa implica quella reale e perché il contrario non è valido.

Se ti blocchi: [[#Il campo degli scalari cambia la domanda|restrizione degli scalari]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Una base che dipende da un parametro (due verifiche distinte)

In $\mathbb R^3$ considera

$$
v_1=(1,0,1),\qquad v_2=(0,1,1),\qquad v_3=(1,1,a),
$$

dove $a\in\mathbb R$. Per quali valori di $a$ la famiglia è una base? Studia prima una relazione nulla e poi l'equazione

$$
\alpha v_1+\beta v_2+\gamma v_3=(x,y,z)
$$

con termine noto generico. Nei casi in cui non è una base, descrivi esattamente il suo span.

Se ti blocchi: [[#Indipendenza e unicità dei coefficienti|relazioni e unicità]] · [[#Una base garantisce esistenza e unicità|le due condizioni di base]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Una lista infinita ma un uso finito (supporto finito)

Rispetto alla base $(1,t,t^2,\ldots)$ di $\mathbb R[t]$, quale polinomio ha coordinate $(3,0,-1,0,2,0,\ldots)$? La successione $(1,0,1,0,1,0,\ldots)$ è la famiglia delle coordinate di un polinomio?

Dimostra che ogni famiglia finita di monomi distinti è indipendente, che togliere $t^2$ dalla famiglia di tutti i monomi impedisce di generare $\mathbb R[t]$, e che nessuna famiglia finita di polinomi genera tutto $\mathbb R[t]$.

Se ti blocchi: [[#Basi infinite e coordinate a supporto finito|supporto finito]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Due domande sulla stessa mappa (base e mappa dei coefficienti)

Considera la mappa

$$
T:\mathbb R^2\longrightarrow\mathbb R^3,\qquad
T(\alpha,\beta)=(\alpha+\beta,\beta,\alpha+2\beta).
$$

Verifica che è iniettiva e trova esattamente la sua immagine. Le colonne $T(1,0)$ e $T(0,1)$ formano una base di $\mathbb R^3$? E dell'immagine di $T$?

Generalizza il ragionamento alla mappa $T:K^n\to V$, $T(\lambda_1,\ldots,\lambda_n)=\sum_j\lambda_jv_j$: che cosa significano iniettività, suriettività e biettività in termini della famiglia $(v_1,\ldots,v_n)$? Tratta anche la base vuota dello spazio nullo.

Se ti blocchi: [[#Indipendenza e unicità dei coefficienti|mappa dei coefficienti]] · [[#La mappa delle coordinate conserva le operazioni|mappa inversa e base]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

## Teoria da recuperare

Segui i collegamenti della tabella iniziale per recuperare il concetto che serve al tuo tentativo. Le dimostrazioni di questo capitolo non usano ancora dimensione, rango o determinanti: vogliamo capire quali proprietà rendano possibili quelle tecniche.

## Descrivere tutto e descrivere una volta sola

Per muoversi nel piano possiamo fissare due spostamenti: $u=(1,0)$ e $v=(1,1)$. Ogni punto $(x,y)$ si raggiunge con

$$
(x,y)=(x-y)u+yv.
$$

Abbiamo una descrizione valida per tutti i punti. Inoltre, se sappiamo che il risultato è $(x,y)$, la seconda coordinata obbliga il coefficiente di $v$ a essere $y$; la prima obbliga quello di $u$ a essere $x-y$. Non ci sono due istruzioni diverse con lo stesso risultato.

Ora aggiungiamo $w=u+v=(2,1)$. Non riusciamo a raggiungere più punti, perché raggiungevamo già tutto il piano. Otteniamo però nuove descrizioni:

$$
w=0u+0v+1w=1u+1v+0w.
$$

Lo spostamento aggiunto è ridondante. Per un parametro qualsiasi $s\in\mathbb R$ possiamo persino scrivere

$$
w=(1-s)u+(1-s)v+sw.
$$

Su un campo finito la stessa libertà dà un numero finito di descrizioni; il problema rimane identico: i coefficienti non sono unici.

Il capitolo separa quindi due richieste. **Generare** significa riuscire a descrivere ogni vettore dello spazio. Essere **indipendenti** significa che non esistono descrizioni diverse dello stesso vettore mediante la famiglia fissata. Una **base** soddisfa entrambe. Cerchiamo un criterio che riconosca la seconda richiesta senza esaminare uno per uno tutti i possibili risultati.

## Le relazioni nulle riconoscono la dipendenza

Fissiamo uno spazio vettoriale $V$ sul campo $K$ e una famiglia finita $(v_1,\ldots,v_n)$. Una **relazione lineare nulla** è un'uguaglianza

$$
\lambda_1v_1+\cdots+\lambda_nv_n=0_V,
\qquad \lambda_1,\ldots,\lambda_n\in K.
$$

La relazione con tutti i coefficienti nulli esiste sempre: è la **relazione banale**. La famiglia è **linearmente indipendente** se è l'unica relazione nulla:

$$
\forall(\lambda_1,\ldots,\lambda_n)\in K^n,\qquad
\sum_{j=1}^n\lambda_jv_j=0
\ \Longrightarrow\
\lambda_1=\cdots=\lambda_n=0.
$$

La famiglia è **linearmente dipendente** se questa condizione è falsa, cioè se esiste una relazione nulla con coefficienti **non tutti nulli**. Non chiediamo che tutti siano diversi da zero: basta che almeno uno lo sia.

Nell'esempio iniziale, $u+v-w=0$ è una relazione non banale. In $\mathbb R^3$, anche $-2e_1+0e_2+1(2e_1)+0e_3=0$ è non banale, malgrado alcuni coefficienti siano zero. Una relazione può rivelare che solo una parte della famiglia crea la ridondanza.

### Perché parliamo di famiglie

Una famiglia è una lista di vettori con posizioni distinguibili; può contenere ripetizioni. Per $u\ne0$, la famiglia $(u,u)$ è dipendente:

$$
1u+(-1)u=0.
$$

L'insieme $\{u,u\}$ coincide invece con $\{u\}$, che non contiene una ripetizione. Per lo span questa differenza non conta: entrambi permettono di ottenere gli stessi multipli di $u$. Per l'indipendenza conta, perché nella famiglia possiamo assegnare due coefficienti diversi alle due occorrenze.

La relazione rimane non banale anche in caratteristica due: allora $-1=1$, ma il coefficiente $1$ è comunque non nullo.

### Un vettore, due vettori, nessun vettore

Una famiglia con un solo vettore $(v)$ è indipendente **se e solo se $v\ne0$**. Se $v=0$, la relazione $1v=0$ è non banale. Se $v\ne0$ e $\lambda v=0$, un eventuale $\lambda\ne0$ permetterebbe di moltiplicare per $\lambda^{-1}$ e ottenere $v=0$, assurdo. Dunque $\lambda=0$.

Per due vettori, la famiglia $(u,v)$ è dipendente **se e solo se almeno uno dei due è multiplo dell'altro**. Infatti, da $\alpha u+\beta v=0$ con almeno un coefficiente non nullo, possiamo isolare il vettore con quel coefficiente. Se, per esempio, $\beta\ne0$, allora $v=-\beta^{-1}\alpha u$. Viceversa, da $v=cu$ segue $cu-v=0$, una relazione con coefficiente $-1$ non nullo davanti a $v$.

La formulazione «almeno uno» tiene conto dello zero: per $u\ne0$, $0$ è multiplo di $u$, ma $u$ non è multiplo di $0$. Per vettori entrambi non nulli, dire che uno è multiplo dell'altro è equivalente nei due versi.

La famiglia vuota è indipendente. La sua unica combinazione è la somma vuota, che vale $0$, e non esiste alcun coefficiente non nullo con cui costruire una relazione non banale.

> [!example] Esempi e controesempi — Indipendenza
> $(e_1,e_2)$ è indipendente in $\mathbb R^3$: da $\alpha e_1+\beta e_2=0$ si leggono $\alpha=\beta=0$ nelle prime due coordinate. Non genera però tutto $\mathbb R^3$.
>
> $(e_1,e_2,e_1+e_2)$ è dipendente, perché $e_1+e_2-(e_1+e_2)=0$. Il fatto che i tre vettori siano distinti e non nulli non basta a renderli indipendenti. Neppure essere a due a due non proporzionali basta quando la famiglia ha più di due elementi.

## Un vettore è superfluo quando dipende dagli altri

Il significato pratico di una relazione non banale è che almeno un vettore non serve per generare lo span.

**Proposizione.** Una famiglia finita non vuota $(v_1,\ldots,v_n)$ è dipendente se e solo se esiste un indice $j$ per cui

$$
v_j\in\operatorname{span}(v_1,\ldots,v_{j-1},v_{j+1},\ldots,v_n).
$$

*Passo 1 — Da una relazione a una sostituzione.* Se $\sum_i\lambda_iv_i=0$ è non banale, scegliamo $j$ con $\lambda_j\ne0$. Allora

$$
v_j=-\sum_{i\ne j}\frac{\lambda_i}{\lambda_j}v_i.
$$

La divisione è legittima proprio perché abbiamo scelto un coefficiente non nullo. Non possiamo isolare un termine il cui coefficiente sia zero.

*Passo 2 — Da una sostituzione a una relazione.* Se $v_j=\sum_{i\ne j}c_iv_i$, portiamo tutto nello stesso membro. La relazione

$$
v_j-\sum_{i\ne j}c_iv_i=0
$$

è non banale, perché il coefficiente davanti a $v_j$ è $1$.

*Passo 3 — Perché lo span non cambia.* Ogni combinazione che contiene $v_j$ può essere riscritta sostituendolo con la combinazione appena trovata. Perciò togliere quella posizione non cambia lo span. L'inclusione opposta è immediata: ogni combinazione dei vettori rimasti era anche una combinazione della famiglia originaria.

Per $n=1$, lo span degli altri è lo span vuoto, cioè $\{0\}$: il criterio ritrova esattamente che $(v_1)$ è dipendente se e solo se $v_1=0$.

### Togliere e aggiungere vettori

Ogni sottofamiglia di una famiglia indipendente è indipendente. Una relazione non banale nella sottofamiglia si estenderebbe alla famiglia intera mettendo coefficienti nulli nelle posizioni mancanti, contro l'indipendenza.

Viceversa, una famiglia che contiene una sottofamiglia dipendente è dipendente: si conserva la relazione già trovata e si aggiungono coefficienti zero. Aggiungere vettori può ampliare lo span, ma non può cancellare una relazione fra quelli che c'erano già.

**Esempio svolto.** In $\mathbb R^3$ siano $a=(1,1,0)$, $b=(0,1,1)$ e $c=(1,2,1)$. Poiché $c=a+b$, lo span di $(a,b,c)$ è lo stesso di $(a,b)$. Questi ultimi sono indipendenti: in $\alpha a+\beta b=(\alpha,\alpha+\beta,\beta)=0$, la prima e la terza coordinata danno $\alpha=\beta=0$. Abbiamo tolto una ridondanza senza cambiare i vettori raggiungibili.

Questo è il meccanismo che useremo nel prossimo capitolo per estrarre basi da famiglie finite generatrici. Per ora il criterio ci dice **quale** vettore possiamo togliere e **perché** la rimozione è lecita.

## Indipendenza e unicità dei coefficienti

Perché studiare combinazioni che danno zero, se il problema iniziale era descrivere un vettore qualsiasi? Perché la differenza fra due descrizioni dello stesso vettore è una descrizione di zero.

**Teorema.** Per una famiglia $(v_1,\ldots,v_n)$ sono equivalenti:

1. la famiglia è indipendente;
2. ogni vettore del suo span ha una sola rappresentazione come combinazione della famiglia.

L'esistenza è già nella definizione dello span; ciò che il teorema aggiunge è l'unicità.

*Passo 1 — Sottrarre due rappresentazioni.* Supponiamo la famiglia indipendente e scriviamo

$$
w=\sum_j\alpha_jv_j=\sum_j\beta_jv_j.
$$

Sottraendo otteniamo $\sum_j(\alpha_j-\beta_j)v_j=0$. L'indipendenza forza $\alpha_j-\beta_j=0$ per ogni $j$, quindi i due elenchi dei coefficienti coincidono.

*Passo 2 — Usare l'unicità proprio su zero.* Supponiamo unica la rappresentazione di ogni vettore nello span. Zero ha la rappresentazione con coefficienti tutti nulli. Qualunque relazione $\sum_j\lambda_jv_j=0$ deve coincidere con quella: ogni $\lambda_j$ è zero. La famiglia è dunque indipendente.

> [!warning] Attenzione — L'unicità vale dove una rappresentazione esiste
> L'indipendenza non dice che ogni vettore dell'ambiente sia raggiungibile. In $\mathbb R^3$, la famiglia $(e_1,e_2)$ rappresenta unicamente tutti i vettori $(x,y,0)$, ma non rappresenta affatto $e_3$. Questa precisazione separa le due domande che le lezioni del [[_transcripts/Geometria 1/2026-10-14 - Basi, sottospazi e sistemi lineari|14 ottobre]] richiedono di verificare quando si propone una base.

Possiamo raccogliere le domande in una sola funzione, la **mappa dei coefficienti**:

$$
T:K^n\longrightarrow V,\qquad
T(\lambda_1,\ldots,\lambda_n)=\sum_j\lambda_jv_j.
$$

La sua immagine è lo span. La funzione è iniettiva se e solo se la famiglia è indipendente: due coefficienti con lo stesso risultato coincidono esattamente quando le rappresentazioni sono uniche. È suriettiva se e solo se la famiglia genera $V$. Questa lettura non richiede ancora la teoria generale delle applicazioni lineari: usa soltanto le definizioni di funzione, iniettività e suriettività.

## Una base garantisce esistenza e unicità

Una **base** di $V$ è una famiglia indipendente che genera $V$. Equivalentemente, ogni vettore di $V$ si scrive in uno e un solo modo come combinazione dei vettori della base. Le due condizioni svolgono compiti diversi:

| Proprietà | Domanda cui risponde | Che cosa non promette da sola |
|---|---|---|
| Generazione | Posso raggiungere ogni vettore di $V$? | Che i coefficienti siano unici |
| Indipendenza | Due descrizioni dello stesso vettore coincidono? | Che tutti i vettori di $V$ siano raggiungibili |
| Base | Posso raggiungere ogni vettore una sola volta? | Che la base sia unica |

Un'altra base può descrivere lo stesso spazio con vettori diversi. Essere una base è una proprietà di una famiglia rispetto a uno spazio e a un campo fissati, non un privilegio dei vettori canonici.

### I vettori canonici di $K^n$

Il vettore $e_j$ ha $1$ nella posizione $j$ e $0$ nelle altre. La famiglia $(e_1,\ldots,e_n)$ genera $K^n$, perché

$$
(x_1,\ldots,x_n)=x_1e_1+\cdots+x_ne_n.
$$

È indipendente perché il vettore $\sum_j\lambda_je_j$ ha coordinate $\lambda_1,\ldots,\lambda_n$; se è zero, tutti i coefficienti sono zero. Non abbiamo usato il numero dei vettori per concludere che sia una base: abbiamo dimostrato entrambe le proprietà.

Nello spazio $K$ su sé stesso, qualunque famiglia $(a)$ con $a\ne0$ è una base. Infatti $x=(x/a)a$ per ogni $x\in K$, e un vettore non nullo è indipendente.

Lo spazio nullo $\{0_V\}$ ha come base la famiglia vuota: genera $\{0_V\}$ mediante la somma vuota ed è indipendente. La famiglia $(0_V)$, invece, genera lo stesso spazio ma non è indipendente. Non sono due basi diverse.

### Polinomi: leggere i coefficienti

La famiglia $(1,t,\ldots,t^d)$ è una base di $K[t]_{\le d}$. La generazione viene dalla scrittura di ogni polinomio in coefficienti. Per l'indipendenza, l'identità formale

$$
\lambda_0+\lambda_1t+\cdots+\lambda_dt^d=0
$$

significa precisamente che tutti i coefficienti sono nulli. Vale anche su un campo finito, perché stiamo confrontando **polinomi formali**, non soltanto i valori delle funzioni associate.

**Esempio svolto.** Anche $B=(1,t-1,(t-1)^2)$ è una base di $K[t]_{\le2}$ su qualsiasi campo. Infatti, per $P(t)=a+bt+ct^2$, l'identità

$$
P(t)=(a+b+c)+(b+2c)(t-1)+c(t-1)^2
$$

prova la generazione. Il simbolo $2$ significa $1_K+1_K$: la formula rimane valida quando quel valore è zero. Per l'indipendenza, in

$$
\alpha+\beta(t-1)+\gamma(t-1)^2=0
$$

il coefficiente di $t^2$ dà $\gamma=0$, quello di $t$ dà $\beta=0$ e la costante dà $\alpha=0$.

Questa lettura dal grado più alto prova anche un criterio utile: **polinomi non nulli di gradi a due a due distinti sono indipendenti**. In una loro relazione, il coefficiente del termine di grado massimo viene da un solo polinomio e forza a zero il suo coefficiente nella relazione. Tolto quel termine, ripetiamo sul grado successivo fino a esaurire la famiglia.

Il criterio non prova la generazione di uno spazio assegnato. Per esempio, $(1,t^2)$ è indipendente, ma non genera $K[t]_{\le2}$: nessuna sua combinazione ha coefficiente di $t$ uguale a $1$.

### Matrici: una posizione alla volta

In $M_{m,n}(K)$, sia $E_{ij}$ la matrice con $1$ nella posizione $(i,j)$ e $0$ nelle altre. Ogni matrice $A=(a_{ij})$ si scrive

$$
A=\sum_{i=1}^m\sum_{j=1}^n a_{ij}E_{ij}.
$$

Quindi gli $E_{ij}$ generano lo spazio. Se una combinazione di tali matrici è nulla, guardare la posizione $(i,j)$ mostra che il coefficiente di $E_{ij}$ è zero. Sono dunque indipendenti.

Per parlarne come base ordinata possiamo fissare l'ordine per righe:

$$
(E_{11},\ldots,E_{1n},E_{21},\ldots,E_{2n},\ldots,E_{m1},\ldots,E_{mn}).
$$

Non esiste un ordine obbligatorio; occorre però dichiarare quello usato.

> [!warning] Attenzione — Una relazione nulla risolve solo metà del problema
> Nelle [[_transcripts/Geometria 1/2026-10-14 - Basi, sottospazi e sistemi lineari|esercitazioni del 14 ottobre]] viene richiesto di distinguere il sistema con termine noto zero da quello con termine noto generico. Il primo controlla l'indipendenza; per la generazione devi ancora mostrare che **ogni** vettore assegnato si ottiene. I criteri che permetteranno di risparmiare una verifica saranno dimostrati nel [[Books/Geometria-I/07 - Dimensione scambio e completamento|capitolo 07]].

## Le coordinate dipendono dalla base ordinata

Sia $B=(b_1,\ldots,b_n)$ una base ordinata di $V$. Per ogni $v\in V$ esistono unici coefficienti $x_1,\ldots,x_n$ con

$$
v=x_1b_1+\cdots+x_nb_n.
$$

La colonna

$$
[v]_B=\begin{pmatrix}x_1\\ \vdots\\x_n\end{pmatrix}
$$

è il **vettore delle coordinate di $v$ rispetto a $B$**. Il pedice è parte dell'informazione: senza sapere quali siano i $b_j$, la colonna non dice quale vettore stiamo descrivendo.

**Esempio svolto: un riferimento obliquo.** In $\mathbb R^2$ fissiamo

$$
b_1=(1,1),\qquad b_2=(1,2).
$$

Cerchiamo $\alpha,\beta$ tali che $(x,y)=\alpha b_1+\beta b_2$. Dalle due coordinate,

$$
\alpha+\beta=x,\qquad \alpha+2\beta=y,
$$

segue $\beta=y-x$ e $\alpha=2x-y$. Abbiamo trovato una soluzione per ogni $(x,y)$, e i due passaggi obbligano i coefficienti a quei valori. La famiglia è quindi una base, senza alcun ricorso a un determinante.

Per $v=(4,7)$ otteniamo

$$
[v]_B=\begin{pmatrix}1\\3\end{pmatrix},
\qquad
v=1(1,1)+3(1,2)=(4,7).
$$

Rispetto alla base canonica $E$, invece, $[v]_E=(4,7)^T$. È lo stesso vettore descritto mediante due riferimenti. Non serve che $b_1,b_2$ siano ortogonali o abbiano lunghezza uno: la base richiede generazione e indipendenza, non proprietà metriche.

Se invertiamo l'ordine e usiamo $B'=(b_2,b_1)$, le coordinate di $v$ diventano $(3,1)^T$. Non stiamo modificando il punto o lo spostamento; stiamo modificando la corrispondenza fra posizioni della colonna e vettori della base.

### Le coordinate di un polinomio non sono un polinomio

Su $\mathbb R$, per la base $B=(1,t-1,(t-1)^2)$ già verificata, il polinomio $P=2t^2-3t+5$ si scrive

$$
P=4+(t-1)+2(t-1)^2.
$$

Dunque $[P]_B=(4,1,2)^T$. Il polinomio appartiene a $\mathbb R[t]_{\le2}$; la colonna delle coordinate appartiene a $\mathbb R^3$. Possiamo passare dall'uno all'altra e tornare indietro, ma sono oggetti di tipo diverso.

Questa distinzione sarà decisiva quando una matrice numerica descriverà un'applicazione fra spazi di matrici o polinomi: il calcolo produrrà colonne di coefficienti, da riconvertire negli oggetti dello spazio.

## La mappa delle coordinate conserva le operazioni

Fissata la base ordinata $B$, definiamo

$$
\Phi_B:V\longrightarrow K^n,\qquad v\longmapsto[v]_B.
$$

È una funzione ben definita perché ogni vettore ha coefficienti esistenti e unici. La sua inversa è la mappa dei coefficienti

$$
T_B:K^n\longrightarrow V,\qquad
(x_1,\ldots,x_n)^T\longmapsto\sum_jx_jb_j.
$$

Infatti $T_B([v]_B)=v$ per la definizione dello sviluppo e $\Phi_B(T_B(x))=x$ per l'unicità dei coefficienti. Questo prova esplicitamente sia l'iniettività sia la suriettività di $\Phi_B$.

La corrispondenza rispetta anche la struttura vettoriale. Se

$$
v=\sum_jx_jb_j,\qquad w=\sum_jy_jb_j,
$$

gli assiomi dello spazio vettoriale danno

$$
v+w=\sum_j(x_j+y_j)b_j,\qquad
\lambda v=\sum_j(\lambda x_j)b_j.
$$

Per unicità dello sviluppo,

$$
[v+w]_B=[v]_B+[w]_B,
\qquad
[\lambda v]_B=\lambda[v]_B.
$$

Una funzione che rispetta queste due operazioni si dice **lineare**; se è anche biettiva, si dice **isomorfismo di spazi vettoriali**. Qui i termini riassumono proprietà già provate: la teoria generale delle applicazioni lineari verrà nel [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|capitolo 11]].

> [!abstract] Concetto chiave — Le coordinate traducono senza perdere relazioni
> Fissare una base con $n$ vettori permette di descrivere $V$ mediante $K^n$ conservando somme, prodotti per scalare e tutte le relazioni lineari. Non significa che gli elementi di $V$ siano letteralmente colonne numeriche, né che la traduzione sia indipendente dalla base.

**Esempio svolto.** Se $[v]_B=(2,-1)^T$ e $[w]_B=(-3,4)^T$, allora $[v+2w]_B=(-4,7)^T$. Non serve conoscere la forma concreta dei vettori della base per sommare le coordinate. Per ricostruire l'oggetto, però, dobbiamo tornare a $v+2w=-4b_1+7b_2$.

La base deve essere la stessa nei due dati. Una colonna riferita a $B$ e una riferita a $C$ descrivono i coefficienti lungo vettori diversi; sommarle direttamente non calcola in generale le coordinate della somma. Il [[Books/Geometria-I/14 - Matrici associate e composizione|capitolo 14]] spiegherà come passare sistematicamente fra riferimenti.

## Il campo degli scalari cambia la domanda

Una relazione lineare dipende dai coefficienti ammessi. Cambiando campo possiamo rendere disponibili nuove relazioni, anche se i vettori rimangono gli stessi.

In $\mathbb C$ considerato come spazio reale, $(1,i)$ è una base. Ogni $z=a+ib$ si scrive con i due coefficienti reali $a,b$; se $a+ib=0$, parte reale e immaginaria danno $a=b=0$. Su $\mathbb C$, invece, la stessa famiglia è dipendente:

$$
(-i)\,1+1\,i=0.
$$

Il coefficiente $-i$ era vietato nel primo problema e permesso nel secondo. Su $\mathbb C$ la famiglia $(1)$ è già una base di $\mathbb C$.

### Un esempio in $\mathbb C^2$

Siano

$$
v=(1,i),\qquad w=(i,-1)=iv.
$$

Su $\mathbb C$ sono dipendenti, essendo uno multiplo dell'altro. Su $\mathbb R$, da $\alpha v+\beta w=0$ con $\alpha,\beta\in\mathbb R$ ricaviamo nella prima coordinata

$$
\alpha+i\beta=0,
$$

quindi $\alpha=\beta=0$. Sono indipendenti come vettori reali. Questo non li rende una base reale di tutto $\mathbb C^2$: ad esempio $(1,0)$ non è una loro combinazione reale. Infatti la seconda coordinata imporrebbe $i\alpha-\beta=0$, quindi $\alpha=\beta=0$, incompatibile con una prima coordinata uguale a $1$.

La famiglia

$$
((1,0),(i,0),(0,1),(0,i))
$$

è invece una base reale di $\mathbb C^2$: per $(a+ib,c+id)$ i coefficienti sono proprio $a,b,c,d$, e sono unici. Non abbiamo bisogno di contare la dimensione per verificarlo.

In generale, per una famiglia in uno spazio complesso, **l'indipendenza su $\mathbb C$ implica quella su $\mathbb R$**: una relazione con coefficienti reali sarebbe anche una relazione complessa. Il contrario è falso, come mostrano gli esempi appena svolti. Equivalentemente, la dipendenza reale implica quella complessa, mentre la dipendenza complessa può usare coefficienti non reali e non implicare quella reale.

> [!warning] Attenzione — Specifica il campo prima di cercare una relazione
> Nella [[Notes/Geometria 1/Lectures/2026-10-14 - Basi, sottospazi e sistemi lineari|nota del 14 ottobre]] una frase aggiunge un «viceversa» improprio al confronto fra indipendenza reale e complessa. La formulazione corretta è quella provata qui: allargare i coefficienti ammessi può creare relazioni, non eliminarle. Il campo va scritto nella domanda, non lasciato implicito nel calcolo.

### Non dividere per un numero che nel campo vale zero

La base di matrici dell'esercizio 7 richiede di risolvere

$$
\beta+\gamma=b,\qquad \beta-\gamma=c.
$$

Se $2\ne0$ nel campo, somma e differenza danno $\beta=(b+c)/2$ e $\gamma=(b-c)/2$. In caratteristica due le due equazioni non sono indipendenti: $-1=1$, e $E_{12}+E_{21}$ coincide con $E_{12}-E_{21}$. La famiglia contiene una ripetizione e non è una base.

La [[_transcripts/Geometria 1/2026-10-07 - Coordinate, basi e dimensione degli spazi vettoriali|lezione del 7 ottobre]] richiama espressamente questo punto nel discutere una base alternativa dello spazio delle matrici. Una dimostrazione con una divisione per $2$ deve dichiarare perché quel divisore sia non nullo.

## Basi infinite e coordinate a supporto finito

Le combinazioni lineari sono finite anche quando la famiglia dei vettori disponibili è infinita. Di conseguenza, una famiglia infinita è indipendente quando ogni sua sottofamiglia finita è indipendente. Una relazione non banale, se esiste, coinvolge infatti soltanto un numero finito di posizioni.

Nello spazio $K[t]$, la famiglia

$$
(1,t,t^2,t^3,\ldots)
$$

è una base. Genera perché ogni polinomio contiene solo un numero finito di monomi. È indipendente perché ogni relazione finita fra monomi distinti è un'identità di polinomi, che obbliga a zero tutti i coefficienti.

Nessuna famiglia finita genera $K[t]$. Se scegliamo finitissimi polinomi non tutti nulli e $d$ è il massimo dei loro gradi, ogni loro combinazione ha grado al più $d$, oppure è nulla. Non può dare $t^{d+1}$. Se tutti i polinomi scelti sono nulli, lo span è già soltanto $\{0\}$.

### Le coordinate non possono avere infiniti termini non nulli

Rispetto alla base dei monomi, il polinomio $2-t+3t^4$ ha coordinate

$$
(2,-1,0,0,3,0,\ldots).
$$

Il numero delle posizioni disponibili è infinito, ma quello delle posizioni effettivamente usate è finito. La famiglia $(1,1,1,\ldots)$ non è la famiglia delle coordinate di un polinomio: richiederebbe una somma infinita, che non appartiene alla definizione algebrica di combinazione lineare.

Per una base infinita $B$, le coordinate si descrivono come una funzione $x:B\to K$ con **supporto finito**, cioè tale che

$$
\operatorname{supp}(x)=\{b\in B:x(b)\ne0\}
$$

sia finito. L'insieme di queste funzioni si indica con $K^{(B)}$. La corrispondenza delle coordinate è

$$
\Phi_B:V\longrightarrow K^{(B)},\qquad
v=\sum_{b\in B}x(b)b\longmapsto x,
$$

dove la somma è effettivamente finita. Non è in generale una corrispondenza con tutto $K^B$, l'insieme di **tutte** le funzioni dalla base al campo.

La funzione $\Phi_B$ è ancora biettiva e rispetta le operazioni: ogni famiglia a supporto finito costruisce un vettore, l'indipendenza rende unici i coefficienti e sommare due supporti finiti coinvolge soltanto la loro unione finita.

> [!warning] Attenzione — «Base infinita» non introduce somme infinite
> Le lezioni del [[_transcripts/Geometria 1/2026-10-02 - Span, indipendenza lineare e basi vettoriali|2 ottobre]] e del [[_transcripts/Geometria 1/2026-10-07 - Coordinate, basi e dimensione degli spazi vettoriali|7 ottobre]] insistono sulla finitezza delle combinazioni. Avere infiniti vettori fra cui scegliere non significa poterne sommare infinitamente molti. Le serie e la loro convergenza richiedono strutture ulteriori, che qui non stiamo introducendo.

Per una base finita ordinata con $n$ vettori, il supporto è automaticamente finito e ritroviamo le usuali colonne di $K^n$. Per la base vuota dello spazio nullo, c'è una sola funzione dalla base a $K$, e una sola colonna vuota in $K^0$: la corrispondenza delle coordinate funziona anche nel caso limite.

Il passo successivo sarà capire se una famiglia finita generatrice contiene sempre una base e perché basi diverse dello stesso spazio finitamente generato abbiano lo stesso numero di elementi. Sarà il lemma di scambio, non l'intuizione del disegno, a giustificare la definizione di dimensione.

## Fonti

Relazioni lineari, indipendenza, criterio del vettore nello span degli altri, basi e unicità dello sviluppo provengono dalla [[Notes/Geometria 1/Lectures/2026-10-02 - Span, indipendenza lineare e basi vettoriali|nota del 2 ottobre]] e dalla [[_transcripts/Geometria 1/2026-10-02 - Span, indipendenza lineare e basi vettoriali|relativa trascrizione]]. La stessa lezione tratta la base dei monomi e la finitezza delle combinazioni. Gli esempi su matrici e la distinzione fra descrizioni di un sottospazio si ritrovano anche nella [[Notes/Geometria 1/Lectures/2026-10-06 - (!) Sottospazi, combinazioni lineari e basi|nota del 6 ottobre]] e nella [[_transcripts/Geometria 1/2026-10-06 - Sottospazi, combinazioni lineari e basi|trascrizione corrispondente]].

L'ordine delle basi, l'applicazione delle coordinate, la base delle matrici e il supporto finito riprendono la [[Notes/Geometria 1/Lectures/2026-10-07 - Coordinate, basi e dimensione degli spazi vettoriali|nota del 7 ottobre]] e la [[_transcripts/Geometria 1/2026-10-07 - Coordinate, basi e dimensione degli spazi vettoriali|relativa trascrizione]]. La dipendenza dal campo e la distinzione fra prova dell'indipendenza e prova della generazione sono discusse nella [[Notes/Geometria 1/Lectures/2026-10-14 - Basi, sottospazi e sistemi lineari|nota del 14 ottobre]] e nella [[_transcripts/Geometria 1/2026-10-14 - Basi, sottospazi e sistemi lineari|trascrizione]]. Il «viceversa» improprio della nota è precisato attraverso la prova del confronto corretto fra scalari reali e complessi.

La formulazione per famiglie indicizzate, i casi della famiglia vuota e delle ripetizioni, la lettura mediante la mappa dei coefficienti e i passaggi dettagliati delle dimostrazioni sono completamenti didattici. Gli esempi numerici e i dodici esercizi con riscontri sono redazionali; l'esercizio 7 rielabora il tipo di base alternativa di matrici discusso il 7 ottobre. Nessun criterio di dimensione viene usato prima della sua dimostrazione nel capitolo successivo. Per il quadro complessivo: [[Books/Geometria-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

## Riscontri degli esercizi

Apri il riscontro soltanto dopo un tentativo scritto. Controlla non soltanto i coefficienti ottenuti, ma anche se hai dimostrato indipendenza, generazione o entrambe, e rispetto a quale spazio e campo.

### Riscontro 1

> [!tip]- Riscontro 1
> La famiglia vuota è indipendente: non può esistere una relazione con almeno un coefficiente non nullo. $(0)$ è dipendente per $1\cdot0=0$. $(u)$ è indipendente perché da $\lambda u=0$, con $u\ne0$, segue $\lambda=0$. $(u,0)$ è dipendente per $0u+1\cdot0=0$. $(u,u)$ è dipendente per $1u+(-1)u=0$.
>
> La famiglia $(u,u)$ ha due posizioni a cui assegnare coefficienti; l'insieme $\{u\}$ ha un solo elemento. La relazione $-2e_1+0e_2+1(2e_1)+0e_3=0$ è non banale: almeno un coefficiente è non nullo, pur non essendolo tutti.

Torna a [[#Esercizio 1 — Zeri ripetizioni e famiglia vuota (definizione di indipendenza)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> Poiché $v_3=v_1+v_2$, la relazione $v_1+v_2-v_3+0v_4=0$ è non banale e si può eliminare $v_3$. La combinazione
> $$
> \alpha v_1+\beta v_2+\gamma v_4=(\alpha,\beta,\alpha+\beta+\gamma)
> $$
> è nulla soltanto se $\alpha=\beta=\gamma=0$, quindi i tre rimasti sono indipendenti. Per ogni $(x,y,z)$ la scelta $\alpha=x$, $\beta=y$, $\gamma=z-x-y$ dà il vettore voluto: generano tutto $\mathbb R^3$.
>
> Una relazione in una sottofamiglia si estende aggiungendo coefficienti zero. Dunque una relazione non banale in una sottofamiglia contraddirebbe l'indipendenza della famiglia intera; e una relazione già presente continua a valere dopo aver aggiunto vettori. Questo prova entrambe le proprietà richieste.

Torna a [[#Esercizio 2 — Togliere un vettore senza perdere nulla (ridondanza)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> $(e_1,e_2)$ è indipendente, ma il suo span è $\{(x,y,0):x,y\in\mathbb R\}$, quindi non genera $\mathbb R^3$. La seconda famiglia genera $\mathbb R^2$ già mediante i primi due vettori, ma è dipendente per $(1,0)+(0,1)-(1,1)=0$.
>
> La frase corretta è: ogni vettore **dello span** di una famiglia indipendente ha un'unica rappresentazione mediante quella famiglia. Per la prova, sottrai due rappresentazioni e applica l'indipendenza alla relazione con coefficienti $\alpha_j-\beta_j$. Nel verso opposto usa l'unicità della rappresentazione di zero: quella con coefficienti tutti nulli esiste sempre, quindi ogni altra deve coincidere con essa.

Torna a [[#Esercizio 3 — Unicità non significa esistenza (generatori e indipendenza)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Per $(x,y)=\alpha(1,0)+\beta(1,2)$ si ha $\alpha+\beta=x$ e $2\beta=y$. Quindi $\beta=y/2$ e $\alpha=x-y/2$, con esistenza e unicità per ogni punto reale. La famiglia è una base.
>
> Per $v=(3,4)$ i coefficienti sono $(1,2)^T$. In ordine inverso diventano $(2,1)^T$. Per $[w]_B=(2,-1)^T$ si ricostruisce $w=2(1,0)-(1,2)=(1,-2)$. La colonna $(1,2)^T$ elenca i coefficienti di $v$ lungo $B$; non è il vettore $v=(3,4)$ nelle sue coordinate canoniche.

Torna a [[#Esercizio 4 — Leggere un riferimento obliquo (coordinate e ordine)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> Per $P=a+bt+ct^2$ vale
> $$
> P=(a-b)\,1+b(t+1)+ct^2,
> $$
> dunque $B$ genera. Se $\alpha+\beta(t+1)+\gamma t^2=0$, il coefficiente di $t^2$ dà $\gamma=0$, quello di $t$ dà $\beta=0$, e infine $\alpha+\beta=0$ dà $\alpha=0$. Vale in ogni campo.
>
> Su $\mathbb R$, $[3-2t+4t^2]_B=(5,-2,4)^T$: $5-2(t+1)+4t^2=3-2t+4t^2$. Due punti non bastano per distinguere tutti i polinomi di grado al più due: per esempio il polinomio non nullo $t(t-1)$ e il nullo coincidono in $0,1$. Il confronto dei coefficienti prova l'identità formale.

Torna a [[#Esercizio 5 — Cambiare i mattoni di un polinomio (basi di polinomi)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> Ordina i gradi in senso crescente. In una relazione nulla, il termine di grado massimo può provenire soltanto dal polinomio di quel grado; il suo coefficiente direttivo non nullo forza a zero il relativo coefficiente della relazione. Ripeti con i polinomi rimasti. Tutti i coefficienti della relazione risultano nulli.
>
> Non è una condizione necessaria: da $\alpha t+\beta(t+1)=(\alpha+\beta)t+\beta=0$ segue $\beta=0$ e poi $\alpha=0$. I due polinomi, entrambi di grado uno, sono indipendenti. Generano $K[t]_{\le1}$ perché $a+bt=(b-a)t+a(t+1)$. Non generano $K[t]_{\le2}$, perché nessuna loro combinazione può avere un termine $t^2$ non nullo.

Torna a [[#Esercizio 6 — Il termine di grado maggiore decide (gradi e indipendenza)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> Una combinazione dei quattro vettori di $B$ è
> $$
> \begin{pmatrix}\alpha&\beta+\gamma\\\beta-\gamma&\delta\end{pmatrix}.
> $$
> Per ottenere $\begin{pmatrix}a&b\\c&d\end{pmatrix}$ devi scegliere unicamente
> $$
> \alpha=a,\quad\beta=\frac{b+c}{2},\quad
> \gamma=\frac{b-c}{2},\quad\delta=d.
> $$
> Questo prova insieme esistenza e unicità, e quindi che è una base quando $2\ne0$.
>
> In $\mathbb F_2$ i due vettori intermedi coincidono, quindi c'è dipendenza. Inoltre ogni matrice generata ha le entrate $(1,2)$ e $(2,1)$ uguali: non si può ottenere $E_{12}$. Dunque non c'è neppure generazione di tutto $M_{2,2}(\mathbb F_2)$. Il problema non si risolve scegliendo un altro modo di scrivere $1/2$: quel numero non esiste nel campo.

Torna a [[#Esercizio 7 — Una base che richiede di dividere per due (matrici e campo)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> $[2u-v]_B=(2,-7,-1)^T$, perciò $2u-v=2b_1-7b_2-b_3$. Per dimostrare le identità, sviluppa $x,y$ nella stessa base, somma o moltiplica per lo scalare, raccogli i coefficienti e usa l'unicità dello sviluppo.
>
> Con basi diverse, la posizione $j$ può riferirsi a vettori diversi. Un esempio in $\mathbb R^2$: nella base canonica $E$, $[e_1]_E=(1,0)^T$; nella base invertita $C=(e_2,e_1)$, $[e_1]_C=(0,1)^T$. La somma delle due colonne è $(1,1)^T$, ma le coordinate di $2e_1$ sono $(2,0)^T$ in $E$ e $(0,2)^T$ in $C$. Prima va uniformato il riferimento.

Torna a [[#Esercizio 8 — Calcolare passando dalle coordinate (mappa delle coordinate)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> Su $\mathbb C$, $w=iv$ dà dipendenza e lo span è soltanto $\{(z,iz):z\in\mathbb C\}$: non contiene $(1,0)$. Su $\mathbb R$, $\alpha+i\beta=0$ con coefficienti reali forza $\alpha=\beta=0$, quindi la famiglia è indipendente. Non genera tutto $\mathbb C^2$ neppure come spazio reale: per rappresentare $(1,0)$, la seconda coordinata imporrebbe $\alpha=\beta=0$.
>
> Per ogni $(z_1,z_2)\in\mathbb C^2$,
> $$
> (z_1,z_2)=(-iz_2)v+(z_1+iz_2)(1,0).
> $$
> I coefficienti sono unici: nella seconda coordinata $\alpha i=z_2$ obbliga $\alpha=-iz_2$, e nella prima $\alpha+\beta=z_1$ obbliga $\beta=z_1+iz_2$. Questo prova che la nuova coppia è una base complessa. Infine, ogni relazione reale è anche complessa: l'indipendenza complessa esclude entrambe, mentre quella reale può non escludere relazioni con coefficienti non reali.

Torna a [[#Esercizio 9 — Gli stessi vettori su due campi (scalari reali e complessi)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> La relazione nulla dà $\alpha+\gamma=0$, $\beta+\gamma=0$, $\alpha+\beta+a\gamma=0$. Sostituendo le prime due nell'ultima ottieni $(a-2)\gamma=0$. Se $a\ne2$, segue $\gamma=\alpha=\beta=0$ e c'è indipendenza.
>
> Per il termine noto generico le stesse operazioni danno
> $$
> \gamma=\frac{z-x-y}{a-2},\qquad
> \alpha=x-\gamma,\qquad\beta=y-\gamma.
> $$
> Esistono per ogni $(x,y,z)$, quindi c'è generazione e la famiglia è una base. Se $a=2$, $v_3=v_1+v_2$ e tutte le combinazioni hanno $z=x+y$. Viceversa ogni $(x,y,x+y)$ è $xv_1+yv_2$, quindi quello è esattamente lo span. La divisione per $a-2$ si usa solo dopo aver separato il caso in cui si annulla.

Torna a [[#Esercizio 10 — Una base che dipende da un parametro (due verifiche distinte)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> La prima famiglia di coordinate dà $3-t^2+2t^4$. La seconda ha infiniti coefficienti non nulli, quindi non corrisponde a un polinomio. Una relazione finita fra monomi distinti ha coefficiente di ogni potenza uguale al corrispondente coefficiente della relazione: se il polinomio è nullo, tutti devono essere zero.
>
> Togliendo $t^2$, ogni combinazione dei monomi rimasti ha coefficiente di $t^2$ uguale a zero e non può dare $t^2$. Per finitissimi polinomi non tutti nulli, fissa il massimo grado $d$: tutte le combinazioni hanno grado al più $d$ o sono nulle, quindi non producono $t^{d+1}$. Se sono tutti nulli, generano soltanto zero.

Torna a [[#Esercizio 11 — Una lista infinita ma un uso finito (supporto finito)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> Da $T(\alpha,\beta)=(x,y,z)$ si ricavano $\beta=y$, $\alpha=x-y$ e necessariamente $z=x+y$. Viceversa questi coefficienti producono ogni vettore con quella condizione. L'immagine è il piano $\{(x,y,z):z=x+y\}$ e i coefficienti sono unici, quindi $T$ è iniettiva.
>
> I vettori $(1,0,1)$ e $(1,1,2)$ formano una base di quel piano, perché lo generano e ogni rappresentazione è unica. Non sono una base di $\mathbb R^3$, dato che per esempio $(0,0,1)$ non è nell'immagine.
>
> Per la mappa generale, iniettività equivale a indipendenza, suriettività a generazione di $V$, biettività a essere una base. Quando $n=0$, $K^0$ contiene un solo elemento, la colonna vuota; la mappa lo manda nel vettore nullo. È biettiva esattamente quando $V=\{0\}$, in accordo con la base vuota dello spazio nullo.

Torna a [[#Esercizio 12 — Due domande sulla stessa mappa (base e mappa dei coefficienti)|esercizio 12]].

Il capitolo è acquisito quando sai distinguere esistenza e unicità di una rappresentazione, dimostrare entrambe le condizioni di base e passare dai vettori alle coordinate dichiarando il riferimento. Negli esempi nuovi, prova a dire prima quale relazione o quale vettore generico devi studiare: il calcolo viene dopo aver chiarito la domanda.

---

[[Books/Geometria-I/05 - Sottospazi e combinazioni lineari|← 05 · Sottospazi e combinazioni lineari]] · [[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/07 - Dimensione scambio e completamento|07 · Dimensione scambio e completamento →]]
