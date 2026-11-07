# Matrici associate e composizione

Prerequisiti: [[Books/Geometria-I/06 - Indipendenza basi e coordinate|basi ordinate e coordinate]], [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|applicazioni lineari, nucleo e immagine]], [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|rango e invertibilità]] e [[Books/Geometria-I/13 - Calcolare basi somme e intersezioni|calcolo di basi mediante Gauss]]. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Costruirai un'applicazione lineare assegnando liberamente le immagini dei vettori di una base.
> - Tradurrai una trasformazione fra spazi anche astratti in una matrice, distinguendo sempre gli oggetti dalle loro coordinate.
> - Calcolerai nucleo, immagine e rango e riporterai i risultati nello spazio di partenza o di arrivo corretto.
> - Spiegherai perché la composizione corrisponde al prodotto matriciale e perché la base intermedia deve coincidere.
> - Capirai come una stessa trasformazione possa avere matrici diverse cambiando riferimento; il breve raccordo sul cambio di base esplicita una dipendenza già presente nelle definizioni.

## Domande per iniziare dagli esercizi

Prima di un calcolo annota quattro dati: spazio di partenza, spazio di arrivo, base di partenza e base di arrivo. Se non sai che cosa significhi una colonna, torna alla definizione prima di ridurre una matrice. Gli enunciati precedono la teoria; i riscontri richiudibili sono raccolti in fondo.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Come si passa da una trasformazione di oggetti a una trasformazione di numeri? | [[#Esercizio 3 — Valutare in un riferimento obliquo (matrice associata)\|3]] | [[#Una trasformazione ha due linguaggi\|Il problema di partenza]] |
| Perché le immagini di una base si possono scegliere liberamente, mentre quelle di generatori ridondanti no? | [[#Esercizio 1 — Assegnare soltanto ciò che serve (estensione lineare)\|1]], [[#Esercizio 2 — Tre prescrizioni per due direzioni (compatibilità delle assegnazioni)\|2]] | [[#Bastano le immagini di una base\|Esistenza e unicità dell'estensione]] |
| Che cosa scrivi nella colonna corrispondente a un vettore di base? | [[#Esercizio 3 — Valutare in un riferimento obliquo (matrice associata)\|3]], [[#Esercizio 4 — Derivare e ritrovare i polinomi (coordinate di nucleo e immagine)\|4]] | [[#Le colonne registrano le immagini\|Definizione della matrice associata]] |
| Perché la moltiplicazione per quella matrice dà proprio le coordinate del risultato? | [[#Esercizio 3 — Valutare in un riferimento obliquo (matrice associata)\|3]] | [[#La formula delle coordinate chiude il circuito\|La formula fondamentale e il diagramma]] |
| Quando una soluzione numerica è solo una colonna di coordinate? | [[#Esercizio 4 — Derivare e ritrovare i polinomi (coordinate di nucleo e immagine)\|4]], [[#Esercizio 9 — Cambiare due riferimenti diversi (dominio e codominio)\|9]], [[#Esercizio 11 — Le stesse idee con due scalari (campo finito)\|11]] | [[#Nucleo e immagine vanno riportati nello spazio originale\|Trasporto dei sottospazi e rango]] |
| Come può una trasformazione di matrici essere rappresentata da una matrice ancora più grande? | [[#Esercizio 5 — Commutare con una proiezione (operatori su matrici)\|5]], [[#Esercizio 12 — Un commutatore al variare della matrice (approfondimento)\|12]] | [[#Un esempio completo nello spazio delle matrici\|Il commutatore e il ritorno agli oggetti]] |
| Perché prima applicare $F$ e poi $G$ produce il prodotto con la matrice di $G$ a sinistra? | [[#Esercizio 6 — Valutare e ricostruire (matrice della composizione)\|6]], [[#Esercizio 7 — Due identità con coordinate incompatibili (base intermedia)\|7]] | [[#Comporre significa moltiplicare nell'ordine giusto\|Composizione e compatibilità]] |
| Una matrice identità rappresenta sempre l'identità degli oggetti? | [[#Esercizio 7 — Due identità con coordinate incompatibili (base intermedia)\|7]], [[#Esercizio 10 — Una matrice identità tra oggetti diversi (inversa)\|10]] | [[#Identità inverse e basi compatibili\|Identità e matrice dell'inversa]] |
| In quale verso va una matrice di passaggio e come cambia la matrice di una trasformazione? | [[#Esercizio 8 — Cambiare la descrizione di uno stesso vettore (cambio di base)\|8]], [[#Esercizio 9 — Cambiare due riferimenti diversi (dominio e codominio)\|9]] | [[#Raccordo sul cambio di base\|Passaggi di coordinate e trasformazione della matrice]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–4 fissano la costruzione; 5–7 collegano matrici di operatori e composizioni; 8–11 mettono alla prova la dipendenza dai riferimenti. Il 12 è un approfondimento: la sua soluzione usa basi e commutazione, senza richiedere nuovi teoremi sui polinomi di matrici.

### Esercizio 1 — Assegnare soltanto ciò che serve (estensione lineare)

In $\mathbb R^2$ sia $B=(b_1,b_2)$ con $b_1=(1,1)$ e $b_2=(1,-1)$. Costruisci l'unica applicazione lineare $F:\mathbb R^2\to\mathbb R^2$ che soddisfa

$$
F(b_1)=(2,0),\qquad F(b_2)=(0,2).
$$

Trova la sua formula su $(x,y)$ e dimostra l'unicità senza partire da una matrice incognita. Ricostruisci poi la prova generale di esistenza dell'estensione da una base: dove usi l'unicità delle coordinate? Le immagini assegnate devono essere indipendenti? Che cosa succede se il dominio è lo spazio nullo e la base è vuota?

Se ti blocchi: [[#Bastano le immagini di una base|Bastano le immagini di una base]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Tre prescrizioni per due direzioni (compatibilità delle assegnazioni)

In $\mathbb R^2$ poniamo $v_1=(1,0)$, $v_2=(0,1)$ e $v_3=(1,1)$. Può esistere una mappa lineare $F:\mathbb R^2\to\mathbb R^2$ con

$$
F(v_1)=(1,0),\qquad F(v_2)=(0,1),\qquad F(v_3)=(1,2)?
$$

Come cambia la risposta se l'ultima immagine è $(1,1)$? Formula il controllo generale che devono soddisfare le immagini di una famiglia di generatori: che cosa deve accadere a ogni sua relazione lineare? Per una base perché quel controllo non impone vincoli ulteriori?

Se ti blocchi: [[#Bastano le immagini di una base|Bastano le immagini di una base]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Valutare in un riferimento obliquo (matrice associata)

Considera

$$
F:\mathbb R[t]_{\le2}\to\mathbb R^2,\qquad F(p)=(p(0),p(1)),
$$

con basi

$$
B=(1,t-1,(t-1)^2),\qquad C=((1,1),(1,-1)).
$$

Costruisci $M_{C\leftarrow B}(F)$ colonna per colonna. Per $p=2+3t+t^2$, calcola $[p]_B$, poi $[F(p)]_C$, infine il vettore $F(p)$ e confrontalo con la valutazione diretta. Ricostruisci la formula fondamentale per un vettore generico, senza limitarla ai vettori di base. Perché la matrice ha due righe e tre colonne?

Se ti blocchi: [[#Le colonne registrano le immagini|Le colonne registrano le immagini]] · [[#La formula delle coordinate chiude il circuito|La formula delle coordinate chiude il circuito]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Derivare e ritrovare i polinomi (coordinate di nucleo e immagine)

Sia

$$
D:\mathbb R[t]_{\le3}\to\mathbb R[t]_{\le2},\qquad D(p)=p',
$$

con $B=(1,t,t^2,t^3)$ e $C=(1,t+1,t^2)$. Trova la matrice associata, una base del suo nucleo numerico e le colonne originali che forniscono una base dell'immagine numerica.

Riporta entrambe le basi agli spazi di polinomi. Spiega in particolare quale polinomio rappresenti la colonna $(-2,2,0)^T$ rispetto a $C$. Controlla rango-nullità e chiarisci la differenza fra $\ker D$ e $\ker M_{C\leftarrow B}(D)$.

Se ti blocchi: [[#Nucleo e immagine vanno riportati nello spazio originale|Nucleo e immagine vanno riportati nello spazio originale]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Commutare con una proiezione (operatori su matrici)

Su $M_{2,2}(\mathbb R)$ fissa

$$
H=\begin{pmatrix}1&0\\0&0\end{pmatrix},
\qquad T(X)=HX-XH.
$$

Nella base ordinata $\mathcal E=(E_{11},E_{12},E_{21},E_{22})$, costruisci la matrice $4\times4$ di $T$. Determina basi di nucleo e immagine come **matrici $2\times2$**. Risolvi infine

$$
T(X)=\begin{pmatrix}0&3\\-2&0\end{pmatrix}.
$$

Perché il fatto che $H$ sia $2\times2$ non impone una matrice associata $2\times2$? Controlla tutte le risposte usando direttamente $HX-XH$.

Se ti blocchi: [[#Un esempio completo nello spazio delle matrici|Un esempio completo nello spazio delle matrici]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Valutare e ricostruire (matrice della composizione)

Siano

$$
F:\mathbb R[t]_{\le2}\to\mathbb R^2,\qquad F(p)=(p(0),p(1)),
$$

$$
G:\mathbb R^2\to\mathbb R[t]_{\le2},\qquad G(u,v)=u+(v-u)t.
$$

Usa le basi canoniche $(1,t,t^2)$ e $(e_1,e_2)$. Costruisci le matrici di $F,G,G\circ F,F\circ G$. Verifica i due prodotti anche applicando le funzioni a un ingresso generico. Quale composizione è un'identità? Quale è una proiezione sui polinomi di grado al più uno?

Ricostruisci poi la prova generale della formula $M(G\circ F)=M(G)M(F)$, indicando la base intermedia comune.

Se ti blocchi: [[#Comporre significa moltiplicare nell'ordine giusto|Comporre significa moltiplicare nell'ordine giusto]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Due identità con coordinate incompatibili (base intermedia)

Nello spazio $\mathbb R^2$ siano $E=(e_1,e_2)$ e $C=((1,1),(1,-1))$. Sia $F=\operatorname{id}_{\mathbb R^2}$ rappresentata dalla matrice $A=M_{C\leftarrow E}(F)$; sia anche $G=\operatorname{id}_{\mathbb R^2}$, rappresentata però da $B=M_{E\leftarrow E}(G)=I$.

Uno studente scrive $M_{E\leftarrow E}(G\circ F)=BA=A$. Trova $A$ e individua il dato incompatibile. Quale matrice di $G$ bisogna usare per ottenere una composizione corretta con $A$? Esegui il prodotto corretto. Perché il solo controllo delle dimensioni delle matrici non basta?

Se ti blocchi: [[#Comporre significa moltiplicare nell'ordine giusto|Comporre significa moltiplicare nell'ordine giusto]] · [[#Identità inverse e basi compatibili|Identità inverse e basi compatibili]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Cambiare la descrizione di uno stesso vettore (cambio di base)

In $\mathbb R^2$, prendi $E=(e_1,e_2)$ e $B'=((1,1),(1,2))$. Costruisci $P_{E\leftarrow B'}$ e la sua inversa. Calcola le coordinate di $v=(4,7)$ in $B'$.

Per $F(x,y)=(2x,3y)$ trova $M_{B'\leftarrow B'}(F)$ e usa tale matrice per calcolare $[F(v)]_{B'}$. Torna alle coordinate canoniche e verifica direttamente. Deduci la formula di cambiamento della matrice da una catena di passaggi di coordinate: perché compare un'inversa a sinistra?

Se ti blocchi: [[#Raccordo sul cambio di base|Raccordo sul cambio di base]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Cambiare due riferimenti diversi (dominio e codominio)

Sia $F:\mathbb R^2\to\mathbb R^3$, $F(x,y)=(x,y,x+y)$. Partendo dalle basi canoniche $E_2,E_3$, passa alle basi

$$
B'=((1,1),(0,1)),
$$

$$
C'=((1,0,1),(0,1,1),(0,0,1)).
$$

Trova le matrici di passaggio $P_{E_2\leftarrow B'}$ e $Q_{E_3\leftarrow C'}$, poi calcola la nuova matrice $Q^{-1}AP$. Verificala costruendone direttamente le colonne. Qual è l'immagine di $F$ come sottospazio di $\mathbb R^3$? Perché non coincide letteralmente con lo span delle colonne numeriche della nuova matrice?

Ricostruisci anche la prova che il passaggio alle coordinate trasporti isomorficamente l'immagine, e deduci l'invarianza del rango.

Se ti blocchi: [[#Nucleo e immagine vanno riportati nello spazio originale|Nucleo e immagine vanno riportati nello spazio originale]] · [[#Raccordo sul cambio di base|Raccordo sul cambio di base]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Una matrice identità tra oggetti diversi (inversa)

Sia $F:\mathbb R[t]_{\le1}\to\mathbb R^2$ data da $F(p)=(p(0),p(1))$. Nel dominio usa $B=(1,t)$, nel codominio $C=((1,1),(0,1))$.

Calcola $M_{C\leftarrow B}(F)$, dimostra che $F$ è un isomorfismo e trova $F^{-1}(u,v)$. Qual è $M_{B\leftarrow C}(F^{-1})$? Calcola inoltre $F^{-1}(2,5)$.

Spiega perché una matrice identità non rende $F$ l'identità degli oggetti. Enuncia e dimostra la relazione fra matrice dell'inversa e inversa della matrice, specificando le basi in entrambi i versi.

Se ti blocchi: [[#Identità inverse e basi compatibili|Identità inverse e basi compatibili]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Le stesse idee con due scalari (campo finito)

Su $\mathbb F_2$ considera $F:\mathbb F_2[t]_{\le2}\to\mathbb F_2^2$, $F(p)=(p(0),p(1))$, con $B=(1,t,t^2)$ e $C=((1,0),(1,1))$. Costruisci la matrice associata, trova basi di nucleo e immagine negli spazi originali e tutte le preimmagini del vettore $(1,0)$.

Quante sono? Quali passaggi della costruzione delle matrici e della prova della composizione richiedono il campo reale? È possibile usare qui le matrici con coefficienti $1/2$ dell'esercizio 7?

Se ti blocchi: [[#Le colonne registrano le immagini|Le colonne registrano le immagini]] · [[#Nucleo e immagine vanno riportati nello spazio originale|Nucleo e immagine vanno riportati nello spazio originale]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Un commutatore al variare della matrice (approfondimento)

Sia $A\in M_{2,2}(\mathbb R)$ e sia $F_A(X)=AX-XA$. Dimostra che:

- se $A=\lambda I$, $F_A$ è nulla;
- se $A$ non è scalare, $\ker F_A=\operatorname{span}(I,A)$ e $\operatorname{rank}(F_A)=2$.

Per il secondo punto prova prima che esista $v\in\mathbb R^2$ per cui $(v,Av)$ sia una base. Puoi ragionare per contrapposizione: se ogni vettore non nullo fosse mandato in un suo multiplo, che cosa darebbero $e_1,e_2,e_1+e_2$?

Se $X$ commuta con $A$, scrivi $Xv=\alpha v+\beta Av$ e confronta $X$ con $\alpha I+\beta A$ su entrambi i vettori della base $(v,Av)$. Non serve conoscere un'equazione polinomiale soddisfatta da $A$.

Se ti blocchi: [[#Un esempio completo nello spazio delle matrici|Un esempio completo nello spazio delle matrici]] · [[#Bastano le immagini di una base|Bastano le immagini di una base]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

## Teoria da recuperare

Il passaggio essenziale è distinguere il calcolo sull'oggetto dal calcolo sulla sua descrizione. Le basi permettono di andare da un linguaggio all'altro senza perdere informazioni. Recupera prima il significato di una colonna e della formula fondamentale; solo dopo usa Gauss, prodotti e inverse.

## Una trasformazione ha due linguaggi

Immagina che un vettore del piano venga descritto in un riferimento obliquo. La coppia di coefficienti dice quanto percorrere ciascuna direzione scelta. Se trasformiamo il vettore e vogliamo comunicarne il risultato in un secondo riferimento, dobbiamo fare due traduzioni: interpretare l'ingresso e descrivere l'uscita.

Prendiamo una trasformazione concreta:

$$
F:\mathbb R^2\to\mathbb R^2,\qquad F(x,y)=(x+y,2x-y).
$$

Nel dominio scegliamo $B=(b_1,b_2)$ con $b_1=(1,1)$, $b_2=(1,0)$. Nel codominio scegliamo $C=(c_1,c_2)$ con $c_1=(1,0)$, $c_2=(1,1)$. Sono basi: in ciascuna coppia i vettori non sono proporzionali.

Le immagini dei due vettori di partenza sono

$$
F(b_1)=(2,1)=c_1+c_2,\qquad
F(b_2)=(1,2)=-c_1+2c_2.
$$

Se un vettore ha descrizione $v=s b_1+t b_2$, per linearità

$$
F(v)=sF(b_1)+tF(b_2)
=(s-t)c_1+(s+2t)c_2.
$$

La trasformazione delle **coordinate** è quindi

$$
\begin{pmatrix}s\\t\end{pmatrix}
\longmapsto
\begin{pmatrix}s-t\\s+2t\end{pmatrix}
=
\begin{pmatrix}1&-1\\1&2\end{pmatrix}
\begin{pmatrix}s\\t\end{pmatrix}.
$$

La matrice non è apparsa per una regola da ricordare a memoria: le sue colonne registrano come ciascuna direzione di partenza viene descritta nel riferimento di arrivo.

**Controllo su un vettore.** Per $v=(3,1)$ troviamo $v=b_1+2b_2$, quindi $[v]_B=(1,2)^T$. Il prodotto matriciale dà $(-1,5)^T$. Questi numeri sono coefficienti rispetto a $C$, perciò

$$
F(v)=-c_1+5c_2=(4,5).
$$

La formula originaria dà proprio $F(3,1)=(4,5)$. Scrivere direttamente $F(v)=(-1,5)$ avrebbe confuso la descrizione con l'oggetto.

L'utilità del metodo diventa ancora più evidente quando i vettori sono polinomi o matrici: non possiamo aspettarci che il risultato sia già una colonna numerica. La matrice associata ci permette di usare lo stesso calcolo su tutti questi spazi.

## Bastano le immagini di una base

Per descrivere un'applicazione qualsiasi dovremmo assegnare il valore a ogni ingresso. La linearità riduce drasticamente i dati necessari: una volta scelti i valori sui vettori di una base, tutti gli altri sono obbligati.

**Teorema di estensione lineare.** Sia $B=(b_1,\ldots,b_n)$ una base di uno spazio $V$ sul campo $K$, e sia $W$ un altro spazio sullo stesso campo. Per qualunque lista $w_1,\ldots,w_n\in W$ esiste un'unica applicazione lineare $F:V\to W$ tale che $F(b_j)=w_j$ per ogni $j$.

La lista delle immagini può contenere ripetizioni o vettori nulli. Non stiamo chiedendo che l'applicazione sia iniettiva, suriettiva o un isomorfismo: stiamo costruendo una mappa lineare.

*Passo 1 — Definire il valore su ogni vettore.* Ogni $v\in V$ ha un unico sviluppo

$$
v=\sum_{j=1}^n x_jb_j.
$$

Poniamo

$$
F(v):=\sum_{j=1}^n x_jw_j.
$$

L'unicità delle coordinate garantisce che questa definizione sia ben posta: non ci sono due liste di coefficienti che possano produrre due valori diversi per lo stesso ingresso. Inoltre, applicandola a $b_j$ otteniamo proprio $w_j$.

*Passo 2 — Verificare la linearità.* Se $v=\sum_jx_jb_j$ e $u=\sum_jy_jb_j$, le coordinate della somma sono $x_j+y_j$. Dunque

$$
F(v+u)=\sum_j(x_j+y_j)w_j
=\sum_jx_jw_j+\sum_jy_jw_j=F(v)+F(u).
$$

Le coordinate di $\lambda v$ sono $\lambda x_j$, quindi

$$
F(\lambda v)=\sum_j(\lambda x_j)w_j
=\lambda\sum_jx_jw_j=\lambda F(v).
$$

Abbiamo provato entrambe le condizioni.

*Passo 3 — Dimostrare l'unicità.* Se $G$ è lineare e ha gli stessi valori sui $b_j$, allora per ogni $v=\sum_jx_jb_j$

$$
G(v)=\sum_jx_jG(b_j)=\sum_jx_jw_j=F(v).
$$

Quindi $G=F$ come funzioni. La proprietà non vale soltanto sui vettori di base: grazie alla generazione vale su ogni vettore.

> [!abstract] Concetto chiave — Una base elimina il problema della compatibilità
> Le immagini di una base si assegnano liberamente perché ogni ingresso ha una sola rappresentazione. La generazione permette di definire il valore ovunque; l'indipendenza impedisce valori contraddittori.

### Che cosa cambia con generatori ridondanti

Supponiamo di avere una famiglia generatrice $v_1,\ldots,v_s$ che non sia una base. Se vale

$$
\sum_{j=1}^s a_jv_j=0,
$$

ogni applicazione lineare deve soddisfare

$$
\sum_{j=1}^s a_jF(v_j)=F(0)=0.
$$

Le immagini devono rispettare **tutte le relazioni** dei generatori. Per esempio, se $v_3=v_1+v_2$, dobbiamo avere $F(v_3)=F(v_1)+F(v_2)$. Assegnare tre immagini arbitrarie può violare questa uguaglianza.

Il controllo è anche sufficiente. Se le immagini prescritte $w_j$ rispettano ogni relazione dei $v_j$, definiamo $F(\sum_jx_jv_j)=\sum_jx_jw_j$. Due rappresentazioni dello stesso vettore differiscono per una relazione nulla; la stessa relazione sulle immagini rende uguali i due risultati. La linearità e l'unicità si provano come sopra. Per una base, le uniche relazioni hanno coefficienti tutti nulli: la compatibilità è automatica.

**Esempio svolto.** In $\mathbb R[t]_{\le2}$ assegnare le immagini di $1,t,t^2$ determina la mappa. Se assegniamo anche l'immagine di $1+t$, non aggiungiamo un nuovo grado di libertà: deve essere la somma delle prime due immagini. Assegnare immagini nulle a tutti i vettori della base produce invece la trasformazione nulla.

Il caso $V=\{0\}$ è compreso nel teorema: la base è vuota, l'unico vettore ha lo sviluppo come somma vuota e la formula dà $F(0)=0$. Esiste una sola applicazione lineare dallo spazio nullo a $W$.

## Le colonne registrano le immagini

Siano ora $V,W$ di dimensione finita, con basi ordinate

$$
B=(b_1,\ldots,b_n),\qquad C=(c_1,\ldots,c_m).
$$

Per una mappa lineare $F:V\to W$, ogni immagine di un vettore di base si sviluppa in modo unico:

$$
F(b_j)=a_{1j}c_1+\cdots+a_{mj}c_m.
$$

Questi coefficienti costituiscono la colonna $[F(b_j)]_C$. La **matrice associata** a $F$ rispetto alle due basi è

$$
A=M_{C\leftarrow B}(F)
=\begin{pmatrix}
a_{11}&\cdots&a_{1n}\\
\vdots&&\vdots\\
a_{m1}&\cdots&a_{mn}
\end{pmatrix}\in M_{m,n}(K).
$$

La freccia nella notazione si legge dall'ingresso all'uscita: da coordinate in $B$ a coordinate in $C$. La colonna $j$ corrisponde al vettore $b_j$; l'entrata nella riga $i$ dice il coefficiente lungo $c_i$.

Per costruire $A$ ci sono quindi tre azioni: applicare $F$ a ciascun $b_j$, sviluppare il risultato nella base $C$, mettere quei coefficienti in colonna. Il numero delle colonne è $\dim V$; quello delle righe è $\dim W$.

> [!warning] Attenzione — Prima l'immagine, poi le coordinate
> La [[_transcripts/Geometria 1/2026-11-04 - Applicazioni lineari e matrici associate|lezione del 4 novembre]] insiste sulla definizione colonna per colonna: si calcola $F(b_j)$ e poi si prendono le sue coordinate nella **base di arrivo**. Non si inseriscono automaticamente i coefficienti letti nella base canonica, se quella dichiarata è un'altra.

### Un esempio con polinomi

Consideriamo la differenza fra il polinomio traslato e quello iniziale:

$$
T:\mathbb R[t]_{\le2}\to\mathbb R[t]_{\le2},\qquad
T(p)(t)=p(t+1)-p(t).
$$

È lineare: la sostituzione $t\mapsto t+1$ e la sottrazione rispettano somme e scalari. Nel dominio usiamo $B=(1,t,t^2)$; nel codominio scegliamo $C=(1,1+t,t^2)$. È una base perché ogni polinomio si scrive unicamente come

$$
a+bt+ct^2=(a-b)\cdot1+b(1+t)+ct^2:
$$

il confronto dei coefficienti forza prima il coefficiente di $t^2$, poi quello di $1+t$ e infine quello di $1$.

Le immagini sono

$$
T(1)=0,\qquad T(t)=1,\qquad T(t^2)=1+2t.
$$

L'ultimo polinomio non ha coordinate $(1,2,0)^T$ in $C$: dobbiamo scriverlo come

$$
1+2t=-1\cdot1+2(1+t)+0t^2.
$$

Otteniamo

$$
M_{C\leftarrow B}(T)
=\begin{pmatrix}0&1&-1\\0&0&2\\0&0&0\end{pmatrix}.
$$

Lo zero nell'ultima riga segnala che nessun risultato ha una componente lungo $t^2$ nella base $C$. Qui questo equivale a dire che l'immagine è contenuta nei polinomi di grado al più uno. Non è necessario immaginarli come frecce del piano per usare le matrici.

### Ogni matrice può essere letta come una trasformazione

Fissate le basi $B,C$, prendiamo una matrice arbitraria $A\in M_{m,n}(K)$. Per ciascuna colonna $A_j$ esiste un unico $w_j\in W$ con $[w_j]_C=A_j$. Il teorema di estensione costruisce un'unica $F$ con $F(b_j)=w_j$. La sua matrice associata è $A$ per costruzione.

Viceversa, due applicazioni con la stessa matrice nelle **stesse basi** hanno le stesse immagini sui $b_j$, quindi sono uguali. Abbiamo una corrispondenza biunivoca fra mappe lineari e matrici, dopo aver fissato i due riferimenti. La struttura vettoriale dell'insieme delle mappe e il conteggio della sua dimensione saranno sviluppati nel [[Books/Geometria-I/15 - Basi adattate e spazi di applicazioni|capitolo 15]].

## La formula delle coordinate chiude il circuito

Conoscere la matrice deve permetterci di trattare ogni ingresso, non soltanto i vettori di base. La formula centrale precisa come farlo.

> [!abstract] Concetto chiave — Formula fondamentale
> Se $A=M_{C\leftarrow B}(F)$, allora per ogni $v\in V$
> $$
> [F(v)]_C=A[v]_B.
> $$
> Il prodotto produce le coordinate dell'immagine; per ottenere l'immagine come oggetto si sviluppa quella colonna nella base $C$.

**Dimostrazione.** Scriviamo $v=\sum_{j=1}^n x_jb_j$. Per linearità

$$
F(v)=\sum_{j=1}^n x_jF(b_j).
$$

Le coordinate rispettano le combinazioni lineari, quindi

$$
[F(v)]_C
=\sum_{j=1}^n x_j[F(b_j)]_C
=\sum_{j=1}^n x_jA_j
=A\begin{pmatrix}x_1\\\vdots\\x_n\end{pmatrix}
=A[v]_B.
$$

Il penultimo passaggio è la lettura del prodotto matrice-vettore come combinazione delle colonne. È la ragione della disposizione in colonne nella definizione.

Se indichiamo con $\phi_B(v)=[v]_B$ e $\phi_C(w)=[w]_C$ gli isomorfismi delle coordinate, la stessa uguaglianza si rappresenta con un diagramma:

$$
\begin{array}{ccc}
V&\xrightarrow{\ F\ }&W\\
\big\downarrow{\scriptstyle\phi_B}&&\big\downarrow{\scriptstyle\phi_C}\\
K^n&\xrightarrow{\ x\mapsto Ax\ }&K^m.
\end{array}
$$

Il diagramma è **commutativo**: prima trasformare e poi descrivere dà lo stesso risultato che prima descrivere e poi moltiplicare. In simboli,

$$
\phi_C\circ F=F_A\circ\phi_B,\qquad F_A(x)=Ax.
$$

Questa frase non dice che $v$ sia uguale a $[v]_B$ o che $F$ sia letteralmente $F_A$: dice che gli isomorfismi delle coordinate collegano le due trasformazioni. Possiamo anche ricostruire

$$
F=\phi_C^{-1}\circ F_A\circ\phi_B.
$$

**Esempio svolto.** Per la trasformazione sui polinomi appena costruita, $p=2+3t+t^2$ ha coordinate $(2,3,1)^T$ in $B$. Il prodotto dà $(2,2,0)^T$. Ricostruendo in $C$ otteniamo

$$
T(p)=2\cdot1+2(1+t)=4+2t.
$$

Il controllo diretto è

$$
p(t+1)-p(t)
=\bigl(6+5t+t^2\bigr)-\bigl(2+3t+t^2\bigr)
=4+2t.
$$

Per usare la formula con sicurezza, percorri sempre tutto il circuito: oggetto → coordinate di ingresso → prodotto → coordinate di uscita → oggetto. Dopo un po' alcuni passaggi diventano immediati, ma il loro significato non scompare.

## Nucleo e immagine vanno riportati nello spazio originale

Supponiamo di conoscere $A=M_{C\leftarrow B}(F)$. Possiamo trovare nucleo e immagine con i metodi numerici dei capitoli precedenti, purché alla fine invertiamo il passaggio alle coordinate.

### Il nucleo è descritto dalle coordinate di ingresso

Per $v\in V$ valgono le equivalenze

$$
v\in\ker F
\quad\Longleftrightarrow\quad F(v)=0_W
\quad\Longleftrightarrow\quad [F(v)]_C=0
\quad\Longleftrightarrow\quad A[v]_B=0.
$$

La mappa $\phi_B$ manda quindi $\ker F$ in $\ker F_A=\{x\in K^n:Ax=0\}$. È anche suriettiva su questo nucleo: se $Ax=0$, il vettore $v=\phi_B^{-1}(x)$ soddisfa $[F(v)]_C=0$, dunque $F(v)=0_W$. La restrizione

$$
\phi_B|_{\ker F}:\ker F\longrightarrow\ker F_A
$$

è un isomorfismo, essendo la restrizione di una mappa lineare biettiva con immagine esattamente quel nucleo.

Se $x^{(1)},\ldots,x^{(d)}$ sono una base delle soluzioni numeriche, i vettori della base effettiva del nucleo sono

$$
u_h=\phi_B^{-1}(x^{(h)})
=\sum_{j=1}^n x_j^{(h)}b_j,\qquad h=1,\ldots,d.
$$

L'isomorfismo garantisce sia generazione sia indipendenza. Non è necessario provarle da capo con un secondo sistema, ma è necessario effettuare la ricostruzione.

### L'immagine è descritta dalle coordinate di uscita

La formula fondamentale dà anche

$$
\phi_C(\operatorname{Im}F)=\operatorname{Im}F_A
=\operatorname{span}(A_1,\ldots,A_n).
$$

Per la prima inclusione, se $w=F(v)$ allora $[w]_C=A[v]_B$. Per l'altra, se $y=Ax$ scegliamo $v=\phi_B^{-1}(x)$: la formula mostra che $y=[F(v)]_C$. Quindi le immagini corrispondono esattamente; la restrizione di $\phi_C$ è un isomorfismo fra questi due sottospazi.

Una base numerica $y^{(1)},\ldots,y^{(r)}$ deve pertanto essere riportata in $W$:

$$
w_h=\phi_C^{-1}(y^{(h)})
=\sum_{i=1}^m y_i^{(h)}c_i.
$$

Se la base numerica è costituita dalle colonne originali $A_{j_1},\ldots,A_{j_r}$ nelle posizioni pivot, i vettori ricostruiti sono semplicemente

$$
F(b_{j_1}),\ldots,F(b_{j_r}).
$$

È un collegamento utile fra il metodo di estrazione di colonne e la definizione di matrice associata.

> [!warning] Attenzione — Il calcolo numerico non conclude ancora il problema
> La [[_transcripts/Geometria 1/2026-11-04 - Applicazioni lineari e matrici associate|lezione del 4 novembre]] torna esplicitamente su questo punto: le soluzioni trovate con Gauss sono le **coordinate** dei vettori cercati. Se $V$ è uno spazio di matrici, bisogna ricostruire matrici; se $W$ è uno spazio di polinomi, bisogna ricostruire polinomi.
> Per l'immagine, inoltre, dopo operazioni di riga si usano le colonne pivot della matrice **originale**. Le operazioni di riga preservano le relazioni fra le colonne, ma possono spostarne lo span nell'ambiente numerico.

### Il rango è indipendente dai riferimenti

Poiché gli isomorfismi conservano la dimensione,

$$
\operatorname{rank}(F)
=\dim\operatorname{Im}F
=\dim\operatorname{Im}F_A
=\operatorname{rank}(A).
$$

Qualunque coppia di basi porta alla stessa dimensione dell'immagine, anche se produce matrici con entrate differenti. Analogamente,

$$
\dim\ker F=\dim\ker F_A=n-\operatorname{rank}(A).
$$

Le matrici rendono calcolabili le dimensioni; la loro indipendenza dalle basi deriva dall'identificazione dei sottospazi tramite isomorfismi, non dall'idea che le matrici debbano restare uguali.

**Esempio svolto: completare il calcolo sui polinomi.** Per la differenza $T(p)=p(t+1)-p(t)$ avevamo

$$
A=\begin{pmatrix}0&1&-1\\0&0&2\\0&0&0\end{pmatrix}.
$$

L'omogeneo impone $x_3=0$ e poi $x_2=0$, lasciando libero $x_1$. Una base numerica del nucleo è $(1,0,0)^T$; nella base $B=(1,t,t^2)$ questo significa

$$
\ker T=\operatorname{span}(1).
$$

Le colonne originali seconda e terza sono indipendenti:

$$
y^{(1)}=(1,0,0)^T,\qquad y^{(2)}=(-1,2,0)^T.
$$

Nella base $C=(1,1+t,t^2)$ rappresentano $1$ e $1+2t$. Quindi

$$
\operatorname{Im}T=\operatorname{span}(1,1+2t)
=\mathbb R[t]_{\le1}.
$$

La prima scrittura segue direttamente dalle colonne; l'uguaglianza finale si verifica perché $t=((1+2t)-1)/2$. Il rango è $2$, la nullità è $1$ e la loro somma è la dimensione $3$ del dominio.

> [!example] Esempi e controesempi — Stessa dimensione, diverso tipo di oggetto
> Il nucleo numerico appena trovato è una retta in $\mathbb R^3$; il nucleo di $T$ è lo spazio dei polinomi costanti. Sono isomorfi attraverso $\phi_B$, ma non sono lo stesso insieme.
> Anche quando gli oggetti sono tuple, una base non canonica può collocare lo span numerico in una posizione diversa da quella dell'immagine effettiva: l'esercizio 9 permette di verificarlo in $\mathbb R^3$.

## Un esempio completo nello spazio delle matrici

Una matrice può essere sia il dato che definisce un'applicazione sia un vettore sul quale essa agisce. Per non confondere i due ruoli, distinguiamo la matrice fissata $H$ dall'ingresso variabile $X$.

Poniamo

$$
H=\begin{pmatrix}0&1\\1&0\end{pmatrix},
\qquad
F:M_{2,2}(\mathbb R)\to M_{2,2}(\mathbb R),
\qquad F(X)=HX-XH.
$$

Questa applicazione è detta **commutatore con $H$**. Misura quanto $X$ non commuti con la matrice fissata: $F(X)=0$ equivale a $HX=XH$.

### La linearità riguarda l'ingresso variabile

Per matrici $X,Y$ e scalari $\lambda,\mu$,

$$
\begin{aligned}
F(\lambda X+\mu Y)
&=H(\lambda X+\mu Y)-(\lambda X+\mu Y)H\\
&=\lambda(HX-XH)+\mu(HY-YH)\\
&=\lambda F(X)+\mu F(Y).
\end{aligned}
$$

La distributività del prodotto matriciale e la possibilità di spostare gli scalari giustificano i passaggi. Non abbiamo usato $HX=XH$; quella sarebbe una proprietà particolare degli ingressi nel nucleo.

Lo spazio $M_{2,2}(\mathbb R)$ ha dimensione $4$. Scelta la base ordinata

$$
\mathcal E=(E_{11},E_{12},E_{21},E_{22}),
$$

un ingresso $X=\begin{pmatrix}a&b\\c&d\end{pmatrix}$ ha coordinate $(a,b,c,d)^T$. La matrice associata a $F$ sarà dunque **$4\times4$**, perché descrive una trasformazione fra spazi di dimensione $4$. Le matrici $2\times2$ sono gli oggetti trasformati.

### Quattro immagini producono quattro colonne

Un calcolo diretto con i prodotti dà

$$
\begin{aligned}
F(E_{11})&=E_{21}-E_{12},\\
F(E_{12})&=E_{22}-E_{11},\\
F(E_{21})&=E_{11}-E_{22},\\
F(E_{22})&=E_{12}-E_{21}.
\end{aligned}
$$

Per esempio,

$$
HE_{11}=\begin{pmatrix}0&0\\1&0\end{pmatrix},
\qquad
E_{11}H=\begin{pmatrix}0&1\\0&0\end{pmatrix},
$$

quindi la prima immagine è $\begin{pmatrix}0&-1\\1&0\end{pmatrix}$. Nella base ordinata $\mathcal E$ le quattro colonne risultano

$$
M_{\mathcal E\leftarrow\mathcal E}(F)
=\begin{pmatrix}
0&-1&1&0\\
-1&0&0&1\\
1&0&0&-1\\
0&1&-1&0
\end{pmatrix}.
$$

La terza colonna è l'opposta della seconda e la quarta è l'opposta della prima. Le prime due sono indipendenti: la prima ha entrate non nulle soltanto nelle posizioni fuori diagonale, la seconda soltanto in quelle diagonali. Il rango è quindi $2$.

La formula fondamentale offre un controllo su un ingresso generico:

$$
\begin{pmatrix}
0&-1&1&0\\
-1&0&0&1\\
1&0&0&-1\\
0&1&-1&0
\end{pmatrix}
\begin{pmatrix}a\\b\\c\\d\end{pmatrix}
=\begin{pmatrix}c-b\\d-a\\a-d\\b-c\end{pmatrix}.
$$

Ricostruendo la matrice $2\times2$,

$$
F(X)=\begin{pmatrix}c-b&d-a\\a-d&b-c\end{pmatrix}.
$$

Lo stesso risultato si ottiene sviluppando direttamente $HX-XH$. Questa verifica indipendente controlla insieme segni, ordine della base e disposizione delle colonne.

### Nucleo e immagine come insiemi di matrici

Il sistema omogeneo impone $c=b$ e $d=a$. Quindi

$$
\ker F
=\left\{\begin{pmatrix}a&b\\b&a\end{pmatrix}:a,b\in\mathbb R\right\}
=\operatorname{span}(I,H).
$$

Le due matrici sono indipendenti: un'uguaglianza $\alpha I+\beta H=0$ annulla prima le entrate diagonali e poi quelle fuori diagonale. È anche naturale che appartengano al nucleo, perché $I$ e $H$ commutano con $H$.

Per l'immagine le prime due colonne originali corrispondono alle matrici

$$
E_{21}-E_{12}
=\begin{pmatrix}0&-1\\1&0\end{pmatrix},
\qquad
E_{22}-E_{11}
=\begin{pmatrix}-1&0\\0&1\end{pmatrix}.
$$

Una base dell'immagine è perciò questa coppia. In forma implicita possiamo scrivere

$$
\operatorname{Im}F
=\left\{\begin{pmatrix}r&s\\-s&-r\end{pmatrix}:r,s\in\mathbb R\right\}.
$$

La formula di $F(X)$ prova che ogni uscita ha tale forma; viceversa, scegliendo $X=\begin{pmatrix}0&-r\\0&s\end{pmatrix}$ si ottiene proprio quella matrice. Nucleo e immagine hanno entrambi dimensione $2$, come conferma rango-nullità: $4=2+2$.

> [!warning] Attenzione — Controllare la ricostruzione di una formula
> Nella [[Notes/Geometria 1/Lectures/2026-11-04 - Applicazioni lineari e matrici associate|nota archiviata del 4 novembre]] alcune immagini dei vettori $E_{ij}$ e la matrice associata di questo esempio sono ricostruite in modo errato. Il calcolo diretto qui sviluppato è coerente con i passaggi leggibili della [[_transcripts/Geometria 1/2026-11-04 - Applicazioni lineari e matrici associate|trascrizione]], fra cui la prima colonna $(0,-1,1,0)^T$.
> La correzione riguarda la ricostruzione della nota, non un errore attribuito al docente. Le fonti originarie restano conservate; nel libro ogni colonna può essere ricontrollata dalla definizione.

Il metodo non dipende dalla speciale matrice $H$. Cambiando la matrice fissata cambiano i conti e talvolta il rango, ma si segue lo stesso percorso: immagini della base, coordinate, nucleo e colonne indipendenti, ritorno alle matrici. L'esercizio 12 mostra come ragionare sull'intera famiglia dei commutatori $2\times2$.

## Comporre significa moltiplicare nell'ordine giusto

Supponiamo di eseguire due trasformazioni successive:

$$
V\xrightarrow{\ F\ }W\xrightarrow{\ G\ }Z.
$$

La composizione $G\circ F$ è lineare. Infatti, per $u,v\in V$ e scalari $\lambda,\mu$,

$$
\begin{aligned}
(G\circ F)(\lambda u+\mu v)
&=G\bigl(\lambda F(u)+\mu F(v)\bigr)\\
&=\lambda G(F(u))+\mu G(F(v)).
\end{aligned}
$$

Abbiamo usato prima la linearità di $F$, poi quella di $G$. L'ordine non si può invertire arbitrariamente: il risultato di $F$ è l'ingresso che $G$ è pronta a ricevere.

Siano $B,C,D$ basi ordinate rispettivamente di $V,W,Z$, con dimensioni $n,m,\ell$. Scriviamo

$$
A=M_{C\leftarrow B}(F)\in M_{m,n}(K),
\qquad
L=M_{D\leftarrow C}(G)\in M_{\ell,m}(K).
$$

**Teorema della matrice della composizione.** Con questa scelta di basi,

$$
M_{D\leftarrow B}(G\circ F)=LA.
$$

**Dimostrazione.** Per ogni $v\in V$ la formula fondamentale applicata a $G$ e poi a $F$ dà

$$
\begin{aligned}
[(G\circ F)(v)]_D
&=L[F(v)]_C\\
&=L\bigl(A[v]_B\bigr)\\
&=(LA)[v]_B.
\end{aligned}
$$

L'ultima uguaglianza usa l'associatività del prodotto matriciale. Quindi $LA$ realizza la formula fondamentale per la composizione; per l'unicità della matrice associata è la sua matrice. In alternativa basta applicare la formula a tutti i $b_j$: la colonna $j$ della composizione è $LA_j$, proprio la colonna $j$ del prodotto.

Il fattore più a destra agisce per primo: $[v]_B$ incontra prima $A$, poi $L$. Anche le forme sono coerenti:

$$
(\ell\times m)(m\times n)=\ell\times n.
$$

Abbiamo così ritrovato una ragione strutturale per il prodotto righe per colonne: rappresenta l'esecuzione successiva di due applicazioni lineari.

### Un calcolo che mostra l'ordine

Su spazi reali prendiamo

$$
F(x,y)=(x+y,y,x-y),\qquad
G(u,v,w)=(u-w,v+w),
$$

usando basi canoniche. Le matrici sono

$$
A=\begin{pmatrix}1&1\\0&1\\1&-1\end{pmatrix},
\qquad
L=\begin{pmatrix}1&0&-1\\0&1&1\end{pmatrix}.
$$

Il loro prodotto nell'ordine corretto è

$$
LA=\begin{pmatrix}0&2\\1&0\end{pmatrix}.
$$

Applicando direttamente le funzioni otteniamo

$$
G(F(x,y))=\bigl((x+y)-(x-y),\,y+(x-y)\bigr)=(2y,x),
$$

in accordo con il prodotto. Il prodotto $AL$ è pure definito, ma è $3\times3$ e rappresenta $F\circ G:\mathbb R^3\to\mathbb R^3$, una trasformazione diversa, su un dominio diverso. Il fatto che un prodotto sia eseguibile non identifica il problema che stiamo risolvendo.

### La base intermedia deve essere davvero la stessa

Nel prodotto $LA$, la matrice $A$ produce coordinate in $C$ e $L$ si aspetta coordinate in $C$. Se per $G$ avessimo usato un'altra base del suo dominio, avremmo in mano una matrice che interpreta quegli stessi numeri come coefficienti di vettori diversi.

È possibile che entrambe le basi abbiano $m$ elementi, quindi che il controllo delle forme non segnali nulla. Il problema rimane: prima di applicare la seconda matrice occorre tradurre le coordinate nella base che essa usa, oppure rappresentare nuovamente $G$ con base di partenza $C$.

> [!warning] Attenzione — Formati compatibili non significa riferimenti compatibili
> Nell'enunciato della [[_transcripts/Geometria 1/2026-11-04 - Applicazioni lineari e matrici associate|lezione del 4 novembre]] la base intermedia deve essere usata contemporaneamente come base di arrivo per $F$ e di partenza per $G$. È una condizione matematica, non un'abbreviazione grafica.
> Le dimensioni controllano quanti numeri vengono trasmessi; il nome della base controlla che cosa quei numeri significhino.

Per tre mappe concatenate l'associatività delle funzioni dà sempre lo stesso valore $H(G(F(v)))$. Con basi intermedie compatibili le matrici soddisfano lo stesso principio: $(M_HM_G)M_F=M_H(M_GM_F)$. Il prodotto matriciale e la composizione raccontano così la stessa organizzazione del calcolo.

## Identità inverse e basi compatibili

L'identità degli oggetti lascia ogni vettore fermo. La sua matrice, però, dipende da quali coordinate scegliamo per leggerlo prima e dopo.

Se usiamo la stessa base $B$ in partenza e in arrivo,

$$
M_{B\leftarrow B}(\operatorname{id}_V)=I_n.
$$

Infatti la colonna $j$ è $[b_j]_B=e_j$. Se invece usiamo due basi diverse, l'identità può avere una matrice diversa da $I$: essa descrive una conversione di coordinate dello stesso vettore.

Il fenomeno opposto è altrettanto possibile: una matrice identità può rappresentare una mappa fra oggetti diversi. Se $B=(b_1,\ldots,b_n)$ è una base di $V$ e $C=(c_1,\ldots,c_n)$ una base di $W$, la mappa che manda $b_j$ in $c_j$ ha matrice identità. La frase corretta è

$$
[F(v)]_C=[v]_B,
$$

che non implica $F(v)=v$ come uguaglianza di oggetti.

### La matrice dell'inversa scambia il ruolo delle basi

Sia $F:V\to W$ un isomorfismo fra spazi finito dimensionali. Le dimensioni sono uguali, e $A=M_{C\leftarrow B}(F)$ è quadrata. Il capitolo 11 ha mostrato che $F^{-1}$ è lineare.

Poniamo $R=M_{B\leftarrow C}(F^{-1})$. Applicando il teorema della composizione alle due identità,

$$
F^{-1}\circ F=\operatorname{id}_V,
\qquad
F\circ F^{-1}=\operatorname{id}_W,
$$

otteniamo

$$
RA=I_n,\qquad AR=I_n.
$$

Quindi

$$
\boxed{M_{B\leftarrow C}(F^{-1})=
\bigl(M_{C\leftarrow B}(F)\bigr)^{-1}.}
$$

Le basi hanno cambiato posto perché l'inversa prende un ingresso in $W$ e restituisce un vettore di $V$.

Viceversa, se $A$ è invertibile, la corrispondenza fra matrici e mappe costruisce $G:W\to V$ con matrice $A^{-1}$ nelle basi $C,B$. I prodotti delle matrici delle composizioni sono identità; l'unicità della rappresentazione nelle stesse basi dà $G\circ F=\operatorname{id}_V$ e $F\circ G=\operatorname{id}_W$. Quindi $F$ è un isomorfismo e $G=F^{-1}$.

> [!abstract] Concetto chiave — Reversibilità degli oggetti e delle coordinate
> Una mappa lineare fra spazi finito dimensionali è un isomorfismo se e solo se una sua matrice associata è quadrata e invertibile. La matrice inversa converte le coordinate dell'uscita in quelle dell'ingresso; le basi di partenza e arrivo si scambiano.

Nel problema iniziale, la matrice $\begin{pmatrix}1&-1\\1&2\end{pmatrix}$ è invertibile su $\mathbb R$. Se riceviamo le coordinate del risultato in $C$, la sua inversa ci restituisce quelle del vettore originario in $B$. Per ricostruire il vettore dobbiamo ancora sviluppare nella base $B$.

Se una delle dimensioni è zero, le matrici senza righe o senza colonne descrivono l'unica mappa nulla dal dominio nullo o verso il codominio nullo. Le somme vuote nelle formule restano valide. Un isomorfismo fra questi casi è possibile soltanto se entrambi gli spazi sono nulli; le identità e le inverse si interpretano allora sull'unico vettore.

## Raccordo sul cambio di base

La dipendenza dalle basi è stata essenziale fin dalla definizione. Questo breve raccordo rende esplicito come controllarla: nelle lezioni disponibili il cambio di base è annunciato come sviluppo successivo, mentre le formule che seguono sono un completamento didattico.

### Una matrice di passaggio descrive lo stesso vettore in due modi

Siano $B=(b_1,\ldots,b_n)$ e $B'=(b'_1,\ldots,b'_n)$ due basi ordinate di $V$. Definiamo

$$
P_{B\leftarrow B'}:=M_{B\leftarrow B'}(\operatorname{id}_V).
$$

La colonna $j$ è $[b'_j]_B$. Applicando la formula fondamentale all'identità otteniamo

$$
\boxed{[v]_B=P_{B\leftarrow B'}[v]_{B'}.}
$$

La freccia chiarisce il verso della traduzione: la matrice prende coordinate in $B'$ e produce coordinate in $B$. Le colonne sono i vettori della **nuova base di ingresso $B'$** scritti nella **base di uscita $B$**.

Poiché l'identità è un isomorfismo, la matrice è invertibile e

$$
\bigl(P_{B\leftarrow B'}\bigr)^{-1}=P_{B'\leftarrow B}.
$$

Una volta fissato il verso, il contrario si ottiene con l'inversa. Non serve affidarsi a espressioni come «dalla vecchia alla nuova» se non abbiamo dichiarato quale lista di coordinate entri nella formula.

**Esempio svolto.** In $\mathbb R^2$, con $E$ canonica e $B'=((1,0),(1,1))$, troviamo

$$
P_{E\leftarrow B'}=\begin{pmatrix}1&1\\0&1\end{pmatrix},
\qquad
P_{B'\leftarrow E}=\begin{pmatrix}1&-1\\0&1\end{pmatrix}.
$$

Il vettore $v=(2,1)$ ha coordinate $(1,1)^T$ in $B'$, perché

$$
v=(1,0)+(1,1).
$$

Il prodotto $P_{E\leftarrow B'}(1,1)^T=(2,1)^T$ restituisce le coordinate canoniche. Moltiplicare per l'inversa nel verso sbagliato avrebbe dato un'altra coppia, senza cambiare la dimensione della matrice: anche qui il formato non basta a controllare il significato.

### Quando cambiano sia dominio sia codominio

Sia $F:V\to W$ lineare e sia

$$
A=M_{C\leftarrow B}(F).
$$

Scegliamo nuove basi $B'$ del dominio e $C'$ del codominio. Poniamo, per abbreviare,

$$
P=P_{B\leftarrow B'},\qquad Q=P_{C\leftarrow C'}.
$$

Quindi $[v]_B=P[v]_{B'}$ e $[w]_C=Q[w]_{C'}$. Le dimensioni sono diverse in generale: $P$ è $n\times n$, $Q$ è $m\times m$, $A$ è $m\times n$.

Per ogni $v$,

$$
\begin{aligned}
[F(v)]_{C'}
&=Q^{-1}[F(v)]_C\\
&=Q^{-1}A[v]_B\\
&=Q^{-1}AP[v]_{B'}.
\end{aligned}
$$

Per l'unicità della matrice associata segue

$$
\boxed{M_{C'\leftarrow B'}(F)=Q^{-1}AP.}
$$

Leggiamola nell'ordine operativo, da destra: $P$ traduce l'ingresso nel riferimento che $A$ sa usare; $A$ effettua il calcolo; $Q^{-1}$ traduce il risultato nel nuovo riferimento di arrivo. La trasformazione degli oggetti è sempre $F$.

Se $V=W$ e usiamo la stessa base in ingresso e uscita, prima $B$ e poi $B'$, allora $Q=P$ e la formula diventa

$$
A'=P^{-1}AP.
$$

Questa forma particolare richiede proprio quella scelta comune di basi. Per una trasformazione fra due spazi distinti, o con basi di ingresso e uscita scelte indipendentemente, non si può sostituire automaticamente $Q$ con $P$.

### Un controllo della formula su una trasformazione semplice

Consideriamo $F(x,y)=(2x,3y)$ nelle basi dell'esempio di passaggio:

$$
A=M_{E\leftarrow E}(F)=\begin{pmatrix}2&0\\0&3\end{pmatrix},
\qquad
P=\begin{pmatrix}1&1\\0&1\end{pmatrix}.
$$

Troviamo

$$
A'=P^{-1}AP
=\begin{pmatrix}2&-1\\0&3\end{pmatrix}.
$$

Possiamo controllare le colonne senza usare la formula. Il primo vettore di $B'$ è $(1,0)$, mandato in $(2,0)$, con coordinate $(2,0)^T$ in $B'$. Il secondo è $(1,1)$, mandato in $(2,3)$; risolvendo

$$
(2,3)=a(1,0)+b(1,1)
$$

otteniamo $b=3$, $a=-1$, cioè la seconda colonna $(-1,3)^T$.

Infine $v=(2,1)$ ha coordinate $(1,1)^T$ in $B'$. Il prodotto dà $A'(1,1)^T=(1,3)^T$; sviluppando nella base,

$$
F(v)=1(1,0)+3(1,1)=(4,3),
$$

che coincide con la regola originaria. Lo stesso oggetto trasformato è stato descritto attraverso due matrici differenti.

> [!example] Esempi e controesempi — Che cosa può cambiare
> Cambiando basi possono cambiare entrate, colonne e forma visibile della matrice. Restano invariati il rango dell'applicazione e la dimensione del suo nucleo.
> In particolare, una matrice diagonale può diventare non diagonale senza che la trasformazione sia stata modificata. Non bisogna attribuire a una nuova formula delle coordinate un cambiamento dell'oggetto geometrico.

Nel capitolo successivo useremo la libertà di scegliere i riferimenti in modo costruttivo: basi adattate ai sottospazi renderanno visibili vincoli sulle applicazioni come blocchi di coefficienti nulli. Il principio rimane quello appena stabilito: scegliere una descrizione conveniente e tenere traccia del suo significato.

## Fonti

Il nucleo del capitolo proviene dalla [[Notes/Geometria 1/Lectures/2026-11-04 - Applicazioni lineari e matrici associate|nota del 4 novembre sulle matrici associate]] e dalla [[_transcripts/Geometria 1/2026-11-04 - Applicazioni lineari e matrici associate|trascrizione corrispondente]]: determinazione di una mappa dai valori su una base, costruzione per colonne, formula fondamentale, diagramma commutativo, calcolo di nucleo e immagine e uguaglianza fra rango della mappa e rango della matrice. La stessa lezione insiste sul ritorno dalle colonne di coordinate agli oggetti originari e presenta il commutatore nello spazio delle matrici $2\times2$.

Nell'esempio del commutatore, il libro corregge la ricostruzione della nota mediante i prodotti diretti e i dati leggibili nella trascrizione. In particolare $F(E_{11})=E_{21}-E_{12}$, non zero, e le altre colonne sono coerenti con la formula su una matrice generica. Non si attribuisce al docente l'errore della nota; per il quadro delle discrepanze si veda [[Books/Geometria-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

Il calcolo delle basi mediante colonne originali e sistemi omogenei si collega alla [[Notes/Geometria 1/Lectures/2026-11-01 - Indipendenza lineare e basi mediante Gauss|nota del 1° novembre]] e alla [[_transcripts/Geometria 1/2026-11-01 - Indipendenza lineare e basi mediante Gauss|relativa trascrizione]]. Le proprietà delle coordinate richiamano la [[Notes/Geometria 1/Lectures/2026-10-07 - Coordinate, basi e dimensione degli spazi vettoriali|nota del 7 ottobre]] e la [[_transcripts/Geometria 1/2026-10-07 - Coordinate, basi e dimensione degli spazi vettoriali|trascrizione]].

La matrice della composizione è enunciata alla fine della trascrizione del 4 novembre, con dimostrazione rimandata: la prova qui sviluppata è un completamento didattico. Il cambio di base, soltanto annunciato nel corpus disponibile, è un raccordo redazionale dichiarato. Sono stati esplicitati anche la compatibilità delle assegnazioni su generatori ridondanti, i casi nulli e la matrice dell'inversa. Gli esempi numerici e sui polinomi, gli esercizi e i riscontri sono redazionali; l'approfondimento sul commutatore generico sviluppa una richiesta lasciata nella lezione, con una prova autonoma mediante una base $(v,Av)$.

## Riscontri degli esercizi

Apri il riscontro dopo un tentativo scritto. Controlla a ogni passaggio quali oggetti sono rappresentati dai numeri: le dimensioni delle matrici sono un controllo necessario, ma non certificano la scelta delle basi.

### Riscontro 1

> [!tip]- Riscontro 1
> La coppia $B$ è una base su $\mathbb R$: ogni $(x,y)$ si scrive unicamente come
> $$
> (x,y)=\frac{x+y}{2}(1,1)+\frac{x-y}{2}(1,-1).
> $$
> La linearità impone quindi $F(x,y)=(x+y,x-y)$. La formula ottenuta è lineare e realizza le due immagini, dunque prova l'esistenza; ogni altra mappa lineare con quei valori deve avere la stessa formula, dunque coincide con $F$.
>
> In generale si pone $F(\sum_jx_jb_j)=\sum_jx_jw_j$: l'unicità delle coordinate rende ben posta la definizione e le coordinate di somme e multipli ne provano la linearità. Le immagini non devono essere indipendenti: potrebbero essere tutte nulle, producendo la mappa nulla. Per il dominio nullo, la somma vuota assegna all'unico ingresso zero il valore zero; questa è l'unica mappa lineare possibile.

Torna a [[#Esercizio 1 — Assegnare soltanto ciò che serve (estensione lineare)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> La relazione $v_3-v_1-v_2=0$ impone $F(v_3)-F(v_1)-F(v_2)=0$. Le immagini proposte danno invece $(1,2)-(1,0)-(0,1)=(0,1)\ne0$, quindi non esiste una tale mappa. Sostituendo l'ultima immagine con $(1,1)$ il vincolo è rispettato: l'identità realizza le assegnazioni ed è unica, perché $v_1,v_2$ sono una base.
>
> In generale ogni relazione nulla dei generatori deve diventare una relazione nulla delle immagini. È anche sufficiente: la differenza fra due rappresentazioni dello stesso vettore è una relazione e produce la stessa differenza nulla fra i valori assegnati. Per una base tutte le relazioni sono banali, quindi le immagini sono libere.

Torna a [[#Esercizio 2 — Tre prescrizioni per due direzioni (compatibilità delle assegnazioni)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> Le tre immagini sono $(1,1),(-1,0),(1,0)$. In $C$, le coordinate di $(u,v)$ sono $((u+v)/2,(u-v)/2)^T$, dunque
> $$
> A=M_{C\leftarrow B}(F)
> =\begin{pmatrix}1&-\frac12&\frac12\\0&-\frac12&\frac12\end{pmatrix}.
> $$
> Ponendo $s=t-1$ si ottiene $p=2+3(s+1)+(s+1)^2=6+5s+s^2$, quindi $[p]_B=(6,5,1)^T$. Il prodotto dà $[F(p)]_C=(4,-2)^T$. L'oggetto finale è $4(1,1)-2(1,-1)=(2,6)$, in accordo con $(p(0),p(1))$.
>
> Per un ingresso generico $v=\sum_jx_jb_j$, la linearità e il passaggio alle coordinate danno $[F(v)]_C=\sum_jx_j[F(b_j)]_C=A[v]_B$. Ci sono tre colonne perché la base del dominio ha tre vettori e due righe perché ogni uscita ha due coordinate in $C$.

Torna a [[#Esercizio 3 — Valutare in un riferimento obliquo (matrice associata)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Le immagini di $1,t,t^2,t^3$ sono $0,1,2t,3t^2$. Nella base di arrivo, $2t=-2\cdot1+2(t+1)$, quindi
> $$
> A=\begin{pmatrix}0&1&-2&0\\0&0&2&0\\0&0&0&3\end{pmatrix}.
> $$
> L'omogeneo impone $x_4=x_3=x_2=0$. Il nucleo numerico ha base $(1,0,0,0)^T$, che rappresenta il polinomio $1$: $\ker D=\operatorname{span}(1)$. Le colonne originali seconda, terza e quarta sono indipendenti e generano lo spazio delle colonne. Ricostruite in $C$ danno $1,2t,3t^2$, una base di $\operatorname{Im}D=\mathbb R[t]_{\le2}$.
>
> La colonna $(-2,2,0)^T$ rappresenta $-2+2(t+1)=2t$, non il polinomio $-2+2t$. Rango e nullità sono $3$ e $1$, con somma $4$. Il nucleo di $D$ contiene polinomi; quello di $A$ contiene colonne in $\mathbb R^4$. L'isomorfismo delle coordinate li mette in corrispondenza.

Torna a [[#Esercizio 4 — Derivare e ritrovare i polinomi (coordinate di nucleo e immagine)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> Per $X=\begin{pmatrix}a&b\\c&d\end{pmatrix}$ il calcolo diretto dà
> $$
> T(X)=\begin{pmatrix}0&b\\-c&0\end{pmatrix}.
> $$
> Le colonne nella base $\mathcal E$ producono
> $$
> M_{\mathcal E\leftarrow\mathcal E}(T)
> =\begin{pmatrix}0&0&0&0\\0&1&0&0\\0&0&-1&0\\0&0&0&0\end{pmatrix}.
> $$
> Il nucleo è $\operatorname{span}(E_{11},E_{22})$, l'immagine $\operatorname{span}(E_{12},E_{21})$; entrambi hanno dimensione $2$. L'equazione impone $b=3$, $c=2$, lasciando liberi $a,d$:
> $$
> X=\begin{pmatrix}a&3\\2&d\end{pmatrix}.
> $$
> La forma del prodotto diretto verifica sia le soluzioni sia i due sottospazi. La matrice associata è $4\times4$ perché dominio e codominio hanno dimensione $4$; le dimensioni degli oggetti $X,H$ non sono le dimensioni delle loro colonne di coordinate.

Torna a [[#Esercizio 5 — Commutare con una proiezione (operatori su matrici)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> Le matrici di $F$ e $G$ sono rispettivamente
> $$
> A=\begin{pmatrix}1&0&0\\1&1&1\end{pmatrix},
> \qquad
> L=\begin{pmatrix}1&0\\-1&1\\0&0\end{pmatrix}.
> $$
> Si ottiene
> $$
> LA=\begin{pmatrix}1&0&0\\0&1&1\\0&0&0\end{pmatrix},
> \qquad
> AL=\begin{pmatrix}1&0\\0&1\end{pmatrix}.
> $$
> Per $p=a+bt+ct^2$, $G(F(p))=a+(b+c)t$; per $(u,v)$, $F(G(u,v))=(u,v)$. Quindi $F\circ G$ è l'identità di $\mathbb R^2$, mentre $G\circ F$ è una proiezione sui polinomi di grado al più uno: su quel sottospazio agisce come identità e applicarla due volte dà lo stesso risultato. Il suo nucleo è $\operatorname{span}(t^2-t)$.
>
> In generale, con la stessa base $C$ per uscita di $F$ e ingresso di $G$, si ha $[G(F(v))]_D=M_{D\leftarrow C}(G)[F(v)]_C=M_{D\leftarrow C}(G)M_{C\leftarrow B}(F)[v]_B$. L'unicità della matrice associata conclude la prova.

Torna a [[#Esercizio 6 — Valutare e ricostruire (matrice della composizione)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> Poiché le colonne sono $[e_1]_C$ e $[e_2]_C$,
> $$
> A=\frac12\begin{pmatrix}1&1\\1&-1\end{pmatrix}.
> $$
> $A$ produce coordinate in $C$, mentre la matrice $B=I$ di $G$ si aspetta coordinate in $E$. Bisogna usare
> $$
> M_{E\leftarrow C}(G)=
> \begin{pmatrix}1&1\\1&-1\end{pmatrix}.
> $$
> Il prodotto con $A$ è $I$, come deve essere per $\operatorname{id}$ nelle basi $E,E$. Il prodotto ingenuo $IA=A$ cambia soltanto l'etichetta di una colonna senza convertirne il significato. Le forme sono tutte $2\times2$, quindi il controllo dimensionale non rileva il problema.

Torna a [[#Esercizio 7 — Due identità con coordinate incompatibili (base intermedia)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> Le colonne di passaggio sono i vettori di $B'$ scritti in $E$:
> $$
> P=\begin{pmatrix}1&1\\1&2\end{pmatrix},
> \qquad P^{-1}=\begin{pmatrix}2&-1\\-1&1\end{pmatrix}.
> $$
> Si ha $[v]_{B'}=P^{-1}(4,7)^T=(1,3)^T$. Per la trasformazione $A=\operatorname{diag}(2,3)$,
> $$
> A'=P^{-1}AP=\begin{pmatrix}1&-2\\1&4\end{pmatrix}.
> $$
> Il prodotto dà $[F(v)]_{B'}=(-5,13)^T$; ricostruendo, $-5(1,1)+13(1,2)=(8,21)=F(4,7)$.
>
> La catena è $[v]_{B'}\xrightarrow{P}[v]_E\xrightarrow{A}[F(v)]_E\xrightarrow{P^{-1}}[F(v)]_{B'}$. L'inversa è a sinistra perché l'ultimo passaggio deve andare dalle vecchie coordinate di uscita alle nuove.

Torna a [[#Esercizio 8 — Cambiare la descrizione di uno stesso vettore (cambio di base)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> Nelle basi canoniche,
> $$
> A=\begin{pmatrix}1&0\\0&1\\1&1\end{pmatrix},
> \quad P=\begin{pmatrix}1&0\\1&1\end{pmatrix},
> \quad Q=\begin{pmatrix}1&0&0\\0&1&0\\1&1&1\end{pmatrix},
> \quad Q^{-1}=\begin{pmatrix}1&0&0\\0&1&0\\-1&-1&1\end{pmatrix}.
> $$
> Si ottiene
> $$
> Q^{-1}AP=\begin{pmatrix}1&0\\1&1\\0&0\end{pmatrix}.
> $$
> Direttamente, $F(1,1)=(1,1,2)=c'_1+c'_2$ e $F(0,1)=(0,1,1)=c'_2$, che danno proprio quelle colonne. L'immagine effettiva è $\operatorname{span}(c'_1,c'_2)=\{(x,y,z):z=x+y\}$.
>
> Le colonne numeriche generano invece $\{(a,b,0)\}$ nello spazio delle coordinate: diventano il piano dell'immagine soltanto dopo lo sviluppo in $C'$. In generale, se $w=F(v)$ allora $[w]_C=A[v]_B$; viceversa ogni $Ax$ è $[F(\phi_B^{-1}(x))]_C$. La restrizione di $\phi_C$ è quindi una biiezione lineare fra immagine effettiva e spazio delle colonne. Conserva la dimensione e prova $\operatorname{rank}F=\operatorname{rank}A$ per qualunque scelta di basi.

Torna a [[#Esercizio 9 — Cambiare due riferimenti diversi (dominio e codominio)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> $F(1)=(1,1)=c_1$ e $F(t)=(0,1)=c_2$, quindi la matrice è $I_2$. Per ottenere $(u,v)$ occorre $p=u+(v-u)t$, dunque
> $$
> F^{-1}(u,v)=u+(v-u)t,\qquad F^{-1}(2,5)=2+3t.
> $$
> Nelle basi $C,B$ la matrice dell'inversa è ancora $I_2$. $F$ non è l'identità degli oggetti: manda polinomi in coppie, conservando la stessa lista di coordinate in due basi differenti.
>
> In generale, le composizioni $F^{-1}F$ e $FF^{-1}$ danno identità nelle basi $B,B$ e $C,C$. Se $R=M_{B\leftarrow C}(F^{-1})$ e $A=M_{C\leftarrow B}(F)$, ne segue $RA=AR=I$. Quindi $R=A^{-1}$. Il cambio di ordine delle basi segue dal cambio di dominio e codominio.

Torna a [[#Esercizio 10 — Una matrice identità tra oggetti diversi (inversa)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> In $\mathbb F_2$, le coordinate di $(u,v)$ in $C$ sono $(u+v,v)^T$. Le immagini di $1,t,t^2$ sono $(1,1),(0,1),(0,1)$, quindi
> $$
> M_{C\leftarrow B}(F)=\begin{pmatrix}0&1&1\\1&1&1\end{pmatrix}.
> $$
> Il nucleo numerico ha base $(0,1,1)^T$, perciò $\ker F=\operatorname{span}(t+t^2)$. Le prime due colonne sono indipendenti, quindi l'immagine effettiva è tutto $\mathbb F_2^2$ e il rango è $2$. Una base dell'immagine negli oggetti originali è $((1,1),(0,1))$, formata dalle immagini di $1$ e $t$.
>
> Il vettore $(1,0)$ ha coordinate $(1,0)^T$ anche in $C$. Il sistema impone $a_1+a_2=1$ e $a_0+a_1+a_2=0$, quindi $a_0=1$. Le due preimmagini sono $1+t$ e $1+t^2$, in accordo con $2^{3-2}=2$.
>
> Costruzione per colonne, formula fondamentale e composizione usano solo gli assiomi di campo, quindi valgono anche qui. Non si possono importare i coefficienti $1/2$ dell'esercizio 7: in caratteristica due $2=0$, e la coppia $((1,1),(1,-1))$ avrebbe inoltre due vettori uguali, dunque non sarebbe una base.

Torna a [[#Esercizio 11 — Le stesse idee con due scalari (campo finito)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> Se $A=\lambda I$, per ogni $X$ vale $AX-XA=\lambda X-\lambda X=0$; il nucleo è tutto $M_{2,2}(\mathbb R)$, di dimensione $4$, e il rango è zero.
>
> Se $A$ non è scalare, esiste $v$ per cui $v,Av$ siano indipendenti. Altrimenti ogni vettore non nullo sarebbe mandato in un suo multiplo: da $Ae_1=\lambda e_1$ e $Ae_2=\mu e_2$, il confronto con $A(e_1+e_2)$ multiplo di $e_1+e_2$ imporrebbe $\lambda=\mu$, rendendo $A=\lambda I$. È una contraddizione.
>
> Sia ora $X$ nel nucleo, cioè $XA=AX$. Scrivi $Xv=\alpha v+\beta Av$ nella base $(v,Av)$ e poni $Y=X-(\alpha I+\beta A)$. Anche $Y$ commuta con $A$ e $Yv=0$, quindi $Y(Av)=A(Yv)=0$. Essendo nulla sui due vettori di una base, $Y$ è la mappa nulla, ossia $X=\alpha I+\beta A$.
>
> Viceversa, tutte queste combinazioni commutano con $A$. $I,A$ sono indipendenti: se $\alpha I+\beta A=0$ e $\beta\ne0$, $A$ sarebbe scalare; se $\beta=0$, anche $\alpha=0$. Dunque il nucleo ha dimensione $2$, e rango-nullità sul dominio di dimensione $4$ dà rango $2$.

Torna a [[#Esercizio 12 — Un commutatore al variare della matrice (approfondimento)|esercizio 12]].

Il capitolo è acquisito quando sai costruire una matrice senza confondere le basi, giustificare il suo prodotto con le coordinate e ricostruire gli oggetti dopo un calcolo di nucleo o immagine. Nelle composizioni e nei cambi di riferimento, prova a spiegare ogni fattore dicendo che cosa riceve e che cosa restituisce: l'ordine corretto deve avere un significato prima di diventare un conto.

---

[[Books/Geometria-I/13 - Calcolare basi somme e intersezioni|← 13 · Calcolare basi somme e intersezioni]] · [[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/15 - Basi adattate e spazi di applicazioni|15 · Basi adattate e spazi di applicazioni →]]
