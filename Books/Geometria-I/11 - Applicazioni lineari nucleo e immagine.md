# Applicazioni lineari, nucleo e immagine

Prerequisiti: [[Books/Geometria-I/06 - Indipendenza basi e coordinate|basi e coordinate]], [[Books/Geometria-I/07 - Dimensione scambio e completamento|dimensione e completamento di una base]] e [[Books/Geometria-I/09 - Matrici e sistemi lineari|prodotto matrice-vettore]]. Per i calcoli con sistemi è utile il [[Books/Geometria-I/10 - Il metodo di Gauss|metodo di Gauss]]; la prova centrale del capitolo usa soltanto basi e dimensione. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Riconoscerai le trasformazioni che rispettano le combinazioni lineari e imparerai a verificarne entrambe le condizioni.
> - Descriverai l'informazione annullata dal **nucleo** e i risultati effettivamente raggiunti dall'**immagine**.
> - Ricostruirai tutte le preimmagini di un risultato aggiungendo a una preimmagine particolare un vettore del nucleo.
> - Dimostrerai il **teorema rango-nullità** costruendo una base dell'immagine a partire da una base del dominio.
> - Userai dimensioni, matrici e cardinalità per distinguere esistenza, unicità e reversibilità, precisando dove serve la dimensione finita.

## Domande per iniziare dagli esercizi

Tenta il problema prima di leggere la spiegazione. Se ti fermi, chiediti se stai cercando una proprietà della trasformazione, un vettore del dominio oppure un risultato nel codominio. Gli esercizi precedono la teoria; i riscontri richiudibili sono raccolti alla fine.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Quale informazione può scomparire durante una trasformazione? | [[#Esercizio 3 — Un piano raggiunto da direzioni oblique (nucleo e immagine)\|3]] | [[#Una trasformazione può perdere informazioni\|Il problema di partenza]] |
| Che cosa occorre verificare per poter distribuire una trasformazione su una combinazione? | [[#Esercizio 1 — La formula non basta da sola (linearità e campo)\|1]], [[#Esercizio 2 — Portare una costruzione attraverso la trasformazione (combinazioni e span)\|2]] | [[#La linearità conserva i modi di costruire\|Definizione e conseguenze]] |
| Dove abitano nucleo e immagine, e perché sono sottospazi? | [[#Esercizio 2 — Portare una costruzione attraverso la trasformazione (combinazioni e span)\|2]], [[#Esercizio 3 — Un piano raggiunto da direzioni oblique (nucleo e immagine)\|3]], [[#Esercizio 5 — Derivare può annullare coefficienti diversi (polinomi e caratteristica)\|5]] | [[#Nucleo e immagine abitano spazi diversi\|Definizioni, prove ed esempi]] |
| Come riconosci due ingressi che danno lo stesso risultato? | [[#Esercizio 3 — Un piano raggiunto da direzioni oblique (nucleo e immagine)\|3]], [[#Esercizio 11 — Un conto giusto non è una decomposizione (errori sulle dimensioni)\|11]] | [[#Iniettività e suriettività si leggono su nucleo e immagine\|I criteri]] |
| Come trovi tutte le preimmagini dopo averne trovata una? | [[#Esercizio 4 — Una soluzione e tutte le altre (sistemi e fibre)\|4]], [[#Esercizio 9 — Prescrivere due valori di un polinomio (fibre di una valutazione)\|9]] | [[#Le fibre sono traslati del nucleo\|Struttura e geometria delle preimmagini]] |
| Che cosa contano rango e nullità? | [[#Esercizio 5 — Derivare può annullare coefficienti diversi (polinomi e caratteristica)\|5]], [[#Esercizio 7 — Dimensioni che consentono o impediscono (iniettività e suriettività)\|7]] | [[#Rango e nullità contano due aspetti diversi\|Le due dimensioni]] |
| Perché le immagini dei vettori aggiunti a una base del nucleo formano una base? | [[#Esercizio 6 — Il passaggio decisivo della dimostrazione (rango-nullità)\|6]] | [[#La prova di rango-nullità costruisce una base\|La dimostrazione completa]] |
| Quando iniettività e suriettività diventano equivalenti? | [[#Esercizio 7 — Dimensioni che consentono o impediscono (iniettività e suriettività)\|7]], [[#Esercizio 8 — Tornare dai coefficienti ai parametri (isomorfismi)\|8]] | [[#Le dimensioni riconoscono gli isomorfismi\|Criteri e inversa lineare]] |
| Perché i parametri di un sistema sono tanti quant'è la nullità? | [[#Esercizio 4 — Una soluzione e tutte le altre (sistemi e fibre)\|4]], [[#Esercizio 10 — Quattro ingressi per ogni risultato (campi finiti)\|10]] | [[#Le matrici ritrovano nucleo e immagine\|Sistemi, rango e numero delle soluzioni]] |
| Che cosa può fallire se la dimensione non è finita? | [[#Esercizio 12 — Spostare i coefficienti di un posto (limite dei criteri finiti)\|12]] | [[#Dove serve davvero la dimensione finita\|Due trasformazioni sui polinomi]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–3 fissano il linguaggio; 4–6 collegano calcoli e dimostrazione; 7–12 mettono alla prova le ipotesi, il campo e la distinzione fra dimensione e posizione dei sottospazi. Negli esercizi sui nuclei e sulle immagini, indica sempre l'ambiente e una base, non soltanto la dimensione.

### Esercizio 1 — La formula non basta da sola (linearità e campo)

Stabilisci quali applicazioni siano lineari sui campi indicati. Per quelle lineari verifica somma e prodotto per scalare; per le altre esibisci una condizione che fallisce.

1. $F:\mathbb R^2\to\mathbb R^2$, $F(x,y)=(2x-y,x+3y)$.
2. $G:\mathbb R^2\to\mathbb R^2$, $G(x,y)=(x+1,y)$.
3. $H:\mathbb R\to\mathbb R$, $H(x)=x^3$.
4. $C:\mathbb C\to\mathbb C$, $C(z)=\bar z$, prima su $\mathbb R$ e poi su $\mathbb C$.

Perché $F(0)=0$ non è un criterio sufficiente di linearità? Puoi eliminare il riferimento al campo nella quarta domanda?

Se ti blocchi: [[#La linearità conserva i modi di costruire|La linearità conserva i modi di costruire]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Portare una costruzione attraverso la trasformazione (combinazioni e span)

Sia $F:V\to W$ lineare su $K$. Ricostruisci prima la conservazione delle combinazioni finite per induzione, compreso il caso della somma vuota $F(0)=0$. Dimostra poi, senza introdurre matrici, che per ogni sottoinsieme $S\subseteq V$ vale

$$
F(\operatorname{span}S)=\operatorname{span}(F(S)).
$$

Controlla anche $S=\varnothing$. Deduci che le immagini di una famiglia generatrice di $V$ generano $\operatorname{Im}F$.

Ricostruisci poi le prove che $\ker F$ e $\operatorname{Im}F$ siano sottospazi. Nella prova dell'immagine, spiega come scegli le preimmagini degli elementi che vuoi sommare.

Se ti blocchi: [[#La linearità conserva i modi di costruire|La linearità conserva i modi di costruire]] · [[#Nucleo e immagine abitano spazi diversi|Nucleo e immagine abitano spazi diversi]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Un piano raggiunto da direzioni oblique (nucleo e immagine)

Considera

$$
P:\mathbb R^3\to\mathbb R^3,\qquad
P(x,y,z)=(x+z,y-z,0).
$$

Verifica la linearità, trova basi di nucleo e immagine e determina se $P$ sia iniettiva o suriettiva. Confronta $P$ e la stessa regola con codominio ristretto al piano $\{z=0\}$.

Mostra che $P(P(v))=P(v)$ e descrivi tutte le preimmagini di $(2,-1,0)$. Perché il nucleo non è necessariamente perpendicolare al piano raggiunto?

Se ti blocchi: [[#Nucleo e immagine abitano spazi diversi|Nucleo e immagine abitano spazi diversi]] · [[#Iniettività e suriettività si leggono su nucleo e immagine|Iniettività e suriettività si leggono su nucleo e immagine]] · [[#Le fibre sono traslati del nucleo|Le fibre sono traslati del nucleo]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Una soluzione e tutte le altre (sistemi e fibre)

Per

$$
A=\begin{pmatrix}1&2&-1&0\\0&1&1&1\end{pmatrix}
$$

considera $F_A:K^4\to K^2$, $F_A(x)=Ax$. Trova una base di $\ker F_A$, determina l'immagine e risolvi

$$
Ax=\begin{pmatrix}2\\-1\end{pmatrix}.
$$

Scrivi la soluzione come $x_p+s u+t v$ e verifica tanto la soluzione particolare quanto le direzioni nel sistema originario. Quante soluzioni ci sono per $K=\mathbb R$? Quante per $K=\mathbb F_5$, il campo dei resti modulo $5$? Le formule restano valide interpretando gli interi nel campo?

Se ti blocchi: [[#Le fibre sono traslati del nucleo|Le fibre sono traslati del nucleo]] · [[#Le matrici ritrovano nucleo e immagine|Le matrici ritrovano nucleo e immagine]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Derivare può annullare coefficienti diversi (polinomi e caratteristica)

Sia

$$
D:K[t]_{\le3}\to K[t]_{\le2},\qquad D(p)=p',
$$

dove la derivata è formale. Verifica la linearità su ogni campo e determina basi di nucleo e immagine prima per $K=\mathbb R$, poi per $K=\mathbb F_2$.

Controlla rango-nullità in entrambi i casi. Su $\mathbb R$, trova inoltre tutti i polinomi con $p'=1+2t$. Quale divisione sarebbe illegittima se cercassi di ripetere lo stesso procedimento su un campo di caratteristica due?

Se ti blocchi: [[#Nucleo e immagine abitano spazi diversi|Nucleo e immagine abitano spazi diversi]] · [[#Rango e nullità contano due aspetti diversi|Rango e nullità contano due aspetti diversi]] · [[#La prova di rango-nullità costruisce una base|La prova di rango-nullità costruisce una base]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Il passaggio decisivo della dimostrazione (rango-nullità)

Sia $F:V\to W$ lineare, con $\dim V=n$. Parti da una base $(u_1,\ldots,u_k)$ di $\ker F$ e completala a una base

$$
(u_1,\ldots,u_k,v_1,\ldots,v_{n-k})
$$

di $V$. Dimostra separatamente che $F(v_1),\ldots,F(v_{n-k})$ generano l'immagine e sono indipendenti. Nel secondo passaggio spiega perché una combinazione dei $v_j$ che appartiene al nucleo debba essere nulla.

Uno studente propone una scorciatoia: «Basta prendere vettori indipendenti fuori dal nucleo: le loro immagini sono indipendenti». Confutala usando $F:\mathbb R^2\to\mathbb R$, $F(x,y)=x+y$. Quale condizione del completamento manca alla scorciatoia?

Se ti blocchi: [[#La prova di rango-nullità costruisce una base|La prova di rango-nullità costruisce una base]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Dimensioni che consentono o impediscono (iniettività e suriettività)

Sia $F:V\to W$ lineare, con $\dim V=5$ e $\dim W=3$.

1. Che cosa puoi concludere se $\dim\ker F=2$? E se $\dim\ker F=4$?
2. È possibile avere $\dim\ker F=1$? Giustifica.
3. Quali dimensioni del nucleo sono possibili in generale in questo caso? Costruisci un esempio per ciascuna scegliendo basi di $V,W$.

Dimostra poi che un endomorfismo di uno spazio di dimensione finita è iniettivo se e solo se è suriettivo. Quali sono i casi della trasformazione nulla e dello spazio nullo?

Se ti blocchi: [[#Rango e nullità contano due aspetti diversi|Rango e nullità contano due aspetti diversi]] · [[#Le dimensioni riconoscono gli isomorfismi|Le dimensioni riconoscono gli isomorfismi]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Tornare dai coefficienti ai parametri (isomorfismi)

Considera

$$
T:\mathbb R^2\to\mathbb R[t]_{\le1},\qquad
T(a,b)=(a-b)+(a+b)t.
$$

Dimostra che $T$ è un isomorfismo e scrivine l'inversa applicata a $c_0+c_1t$. Verifica che l'inversa sia lineare e ricostruisci la prova generale della linearità dell'inversa di un isomorfismo.

Considera poi la stessa formula su $\mathbb F_2$: trova nucleo e immagine. Perché l'uguaglianza delle dimensioni di dominio e codominio non autorizza a dichiarare isomorfismo una qualunque applicazione lineare?

Se ti blocchi: [[#Le dimensioni riconoscono gli isomorfismi|Le dimensioni riconoscono gli isomorfismi]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Prescrivere due valori di un polinomio (fibre di una valutazione)

Nello spazio reale dei polinomi di grado al più $2$, considera

$$
E:\mathbb R[t]_{\le2}\to\mathbb R^2,\qquad E(p)=(p(0),p(1)).
$$

Verifica la linearità, determina nucleo, immagine e rango. Trova tutti i polinomi che soddisfano $p(0)=2$ e $p(1)=5$. L'insieme trovato è un sottospazio? Cambierebbe la risposta prescrivendo entrambi i valori uguali a zero?

Se ti blocchi: [[#Nucleo e immagine abitano spazi diversi|Nucleo e immagine abitano spazi diversi]] · [[#Le fibre sono traslati del nucleo|Le fibre sono traslati del nucleo]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Quattro ingressi per ogni risultato (campi finiti)

Su $\mathbb F_2$ considera

$$
F:\mathbb F_2^4\to\mathbb F_2^2,\qquad
F(x_1,x_2,x_3,x_4)=(x_1+x_2,x_2+x_3+x_4).
$$

Trova una base del nucleo, prova la suriettività ed elenca tutte le preimmagini di $(1,0)$. Quante preimmagini ha ciascun elemento del codominio? Controlla il risultato contando gli elementi del dominio e del codominio, senza usare il conteggio come sostituto della prova di suriettività.

Se ti blocchi: [[#Le matrici ritrovano nucleo e immagine|Le matrici ritrovano nucleo e immagine]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Un conto giusto non è una decomposizione (errori sulle dimensioni)

Uno studente legge rango-nullità e conclude: «Il dominio è la somma diretta di nucleo e immagine».

Spiega anzitutto perché, per $F:V\to W$ con $V\ne W$, l'espressione non è automaticamente una somma di sottospazi dello stesso ambiente. Mostra poi che può essere falsa anche per un endomorfismo, usando

$$
N:\mathbb R^2\to\mathbb R^2,\qquad N(x,y)=(y,0).
$$

Trova invece un supplementare $C$ del nucleo di $N$ e verifica che $N$ ristretto a $C$ sia un isomorfismo sull'immagine. Correggi anche l'affermazione «nucleo nullo e rango nullo significano entrambi che la trasformazione è nulla».

Se ti blocchi: [[#Iniettività e suriettività si leggono su nucleo e immagine|Iniettività e suriettività si leggono su nucleo e immagine]] · [[#La prova di rango-nullità costruisce una base|La prova di rango-nullità costruisce una base]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Spostare i coefficienti di un posto (limite dei criteri finiti)

Sullo spazio $K[t]$ considera

$$
M(p)=tp,\qquad
S(a_0+a_1t+\cdots+a_dt^d)=a_1+a_2t+\cdots+a_dt^{d-1},
$$

con $S$ di un polinomio costante uguale a zero. Verifica che entrambe siano lineari, determina nuclei e immagini e calcola $S(M(p))$ e $M(S(p))$.

Quale delle due è iniettiva ma non suriettiva? Quale è suriettiva ma non iniettiva? Perché non contraddicono il criterio per gli endomorfismi studiato nel capitolo?

Se ti blocchi: [[#Dove serve davvero la dimensione finita|Dove serve davvero la dimensione finita]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

## Teoria da recuperare

Tieni distinte tre domande: quali risultati sono raggiunti, quanti ingressi producono lo stesso risultato, quante direzioni indipendenti descrivono questa libertà. La tabella iniziale indica dove recuperare ciascuno strumento. Il teorema delle dimensioni sarà dimostrato dopo averne costruito gli oggetti.

## Una trasformazione può perdere informazioni

Immagina di osservare dall'alto un oggetto tridimensionale. Due punti che differiscono soltanto per l'altezza possono apparire nello stesso punto del piano. L'osservazione conserva una parte dell'informazione e ne annulla un'altra.

L'esempio algebrico più semplice è

$$
\pi:\mathbb R^3\to\mathbb R^3,\qquad
\pi(x,y,z)=(x,y,0).
$$

Il risultato non dipende da $z$. I vettori $(x,y,z)$ e $(x,y,z')$ hanno la stessa immagine; la loro differenza $(0,0,z-z')$ viene mandata nello zero. L'asse verticale descrive quindi le differenze che la trasformazione non riesce a distinguere.

D'altra parte, nessun risultato ha terza coordinata diversa da zero: possiamo raggiungere esattamente il piano $\{z=0\}$. Sono due osservazioni su spazi diversi:

- nell'ingresso, l'asse delle direzioni annullate;
- nell'uscita, il piano dei risultati raggiungibili.

Il primo diventerà il **nucleo**, il secondo l'**immagine**. Il risultato concreto che cerchiamo è un modo per ricostruire tutti gli ingressi compatibili con un'uscita e per misurare quanta libertà rimanga.

Questa proiezione è un esempio redazionale, scelto per rendere trasparenti i conti. Nella lezione del 22 ottobre compare una proiezione in tre dimensioni, ma i suoi coefficienti non sono recuperabili con sicurezza dalla trascrizione: non serve attribuirle una matrice congetturale per sviluppare l'idea.

## La linearità conserva i modi di costruire

Per la proiezione, sommare due spostamenti prima di osservare dà lo stesso risultato che osservarli separatamente e poi sommare. Anche moltiplicare uno spostamento per uno scalare commuta con l'osservazione. Queste sono le proprietà da isolare.

**Definizione.** Siano $V,W$ spazi vettoriali sullo **stesso campo** $K$. Un'applicazione $F:V\to W$ è **lineare** se

$$
F(u+v)=F(u)+F(v)
\qquad(u,v\in V),
$$

$$
F(\lambda v)=\lambda F(v)
\qquad(\lambda\in K,\ v\in V).
$$

La somma dentro $F$ avviene nel dominio, quella a destra nel codominio. Anche i due prodotti per scalare sono quelli dei rispettivi spazi. Le strutture possono essere diverse: un dominio fatto di coppie e un codominio fatto di polinomi hanno operazioni differenti, collegate proprio da queste uguaglianze.

> [!warning] Attenzione — La linearità riguarda le strutture dichiarate
> Nella [[_transcripts/Geometria 1/2026-10-22 - Sistemi lineari, nucleo, immagine e rango|lezione del 22 ottobre su nucleo e immagine]] il docente distingue esplicitamente le somme nel dominio e nel codominio. Per leggere una formula come $F(u+v)=F(u)+F(v)$ bisogna sapere in quali spazi si stanno facendo le operazioni.
> Un ulteriore controllo redazionale riguarda il campo: una trasformazione può rispettare gli scalari reali senza rispettare quelli complessi.

Per esempio, il coniugio $C(z)=\bar z$ su $\mathbb C$ conserva la somma. Se $\lambda\in\mathbb R$,

$$
C(\lambda z)=\overline{\lambda z}=\lambda\bar z,
$$

quindi è lineare su $\mathbb R$. Non è lineare su $\mathbb C$: scegliendo $\lambda=i$ e $z=1$ si ottiene $C(i)=-i$, mentre $iC(1)=i$. I due campi danno due richieste diverse.

### Zero, opposti e combinazioni finite

Una prima conseguenza è

$$
F(0_V)=0_W.
$$

Infatti $F(0_V)=F(0_V+0_V)=F(0_V)+F(0_V)$ e la cancellazione additiva dà il risultato. Non abbiamo assunto che gli zeri dei due spazi siano lo stesso oggetto: la formula dice che il primo viene mandato nel secondo.

Inoltre, per $\lambda=-1_K$,

$$
F(-v)=-F(v).
$$

Da additività e preservazione degli opposti segue

$$
F(u-v)=F(u)-F(v).
$$

Applicando ripetutamente la definizione otteniamo, per ogni combinazione lineare finita,

$$
F\left(\sum_{j=1}^s\lambda_jv_j\right)
=\sum_{j=1}^s\lambda_jF(v_j).
$$

Il primo passo è il caso di un solo addendo. Se la formula vale per $s$ addendi, separiamo l'ultimo da una somma di $s+1$ termini e usiamo prima l'additività, poi l'ipotesi induttiva e la proprietà sugli scalari. La somma vuota corrisponde alla formula $F(0)=0$.

Viceversa, se una funzione conserva tutte le combinazioni finite, prendendo due coefficienti uguali a $1$ ricaviamo l'additività, e prendendo un solo termine ricaviamo la proprietà sugli scalari. La conservazione delle combinazioni è dunque una formulazione equivalente.

### Lo span passa attraverso la trasformazione

Per ogni $S\subseteq V$ vale

$$
F(\operatorname{span}S)=\operatorname{span}(F(S)).
$$

Se $v=\sum_j\lambda_js_j$ con $s_j\in S$, allora $F(v)=\sum_j\lambda_jF(s_j)$: questo prova l'inclusione da sinistra a destra. Viceversa, ogni combinazione $\sum_j\lambda_jF(s_j)$ è immagine della combinazione $\sum_j\lambda_js_j$ in $\operatorname{span}S$. Abbiamo provato anche l'altra inclusione.

Per $S=\varnothing$, entrambi i membri sono $\{0_W\}$: a sinistra usiamo $\operatorname{span}\varnothing=\{0_V\}$ e $F(0_V)=0_W$; a destra lo span dell'insieme vuoto. In particolare, se $v_1,\ldots,v_n$ generano $V$, le immagini $F(v_1),\ldots,F(v_n)$ generano l'immagine. Possono però perdere indipendenza.

> [!example] Esempi e controesempi — Rispettare le combinazioni
> La trasformazione $(x,y)\mapsto(2x-y,x+3y)$ è lineare: ogni componente è una combinazione delle coordinate e distribuisce somme e scalari.
> La funzione $x\mapsto x^2$ su $\mathbb R$ manda zero in zero, ma $F(1+1)=4\ne2=F(1)+F(1)$: il controllo dello zero è necessario, non sufficiente.
> Una traslazione $v\mapsto v+b$ con $b\ne0$ non è lineare, perché manda zero in $b$. La trasformazione nulla e l'identità sono invece lineari.

## Nucleo e immagine abitano spazi diversi

**Definizioni.** Per $F:V\to W$ lineare poniamo

$$
\ker F=\{v\in V:F(v)=0_W\},
$$

$$
\operatorname{Im}F=\{F(v):v\in V\}
=\{w\in W:\exists v\in V,\ F(v)=w\}.
$$

Il nucleo è un sottoinsieme del **dominio**; l'immagine è un sottoinsieme del **codominio**. Il codominio fa parte della specificazione di $F$; l'immagine si ricava applicando la sua regola.

L'immagine è definita per qualunque funzione. Anche per una funzione non lineare possiamo considerare l'insieme degli ingressi che vanno nello zero, ma saranno la linearità e le sue conseguenze a garantirne la struttura di sottospazio. Nei criteri che seguono la linearità è sempre un'ipotesi.

**Proposizione.** $\ker F$ è un sottospazio di $V$ e $\operatorname{Im}F$ è un sottospazio di $W$.

*Passo 1 — Il nucleo contiene zero ed è chiuso.* Sappiamo che $F(0_V)=0_W$. Se $u,v\in\ker F$, allora

$$
F(u+v)=F(u)+F(v)=0_W.
$$

Se $\lambda\in K$, allora $F(\lambda u)=\lambda F(u)=0_W$. Quindi somma e multipli restano nel nucleo; il criterio di sottospazio conclude.

*Passo 2 — Per l'immagine dobbiamo esibire le preimmagini.* Anche qui lo zero è presente, perché è $F(0_V)$. Se $w,w'\in\operatorname{Im}F$, per definizione esistono $v,v'\in V$ con $F(v)=w$ e $F(v')=w'$. Allora

$$
w+w'=F(v)+F(v')=F(v+v'),
$$

quindi la somma appartiene all'immagine. Analogamente $\lambda w=F(\lambda v)$. Il criterio di sottospazio conclude in $W$.

Il passaggio sulle preimmagini è essenziale: non possiamo prendere $F(w)$ se $w$ appartiene al codominio e non è stato specificato come ingresso. In una dimostrazione, rispettare gli ambienti evita operazioni prive di significato.

### Un esempio in coordinate

Consideriamo

$$
T:\mathbb R^3\to\mathbb R^2,\qquad
T(x,y,z)=(x+y,y+z).
$$

La linearità segue distribuendo le due somme sulle coordinate. Per il nucleo risolviamo

$$
x+y=0,\qquad y+z=0.
$$

Ponendo $y=s$ otteniamo

$$
\ker T=\{(-s,s,-s):s\in\mathbb R\}
=\operatorname{span}\{(-1,1,-1)\}.
$$

Per l'immagine prendiamo un risultato arbitrario $(a,b)\in\mathbb R^2$. Il vettore $(a,0,b)$ soddisfa $T(a,0,b)=(a,b)$. Quindi

$$
\operatorname{Im}T=\mathbb R^2.
$$

La prova ha affrontato due problemi differenti: per il nucleo ha imposto un'uscita nulla, per l'immagine ha cercato gli ingressi di un'uscita generica.

### Un esempio in cui i vettori sono polinomi

Sul campo reale prendiamo

$$
D:\mathbb R[t]_{\le2}\to\mathbb R[t]_{\le1},\qquad D(p)=p'.
$$

La derivata è qui l'operazione formale sui coefficienti:

$$
D(a_0+a_1t+a_2t^2)=a_1+2a_2t.
$$

Sommare polinomi o moltiplicarli per uno scalare e poi derivare dà gli stessi coefficienti che derivare prima: $D$ è lineare. Il nucleo è formato dalle costanti, perché $a_1=2a_2=0$ su $\mathbb R$ implica $a_1=a_2=0$.

L'immagine è tutto $\mathbb R[t]_{\le1}$. Infatti, dato $b_0+b_1t$, possiamo scegliere

$$
p(t)=b_0t+\frac{b_1}{2}t^2
$$

e ottenere $D(p)=b_0+b_1t$. La costante di $p$ non influisce sul risultato. Questa libertà è precisamente il nucleo.

L'esempio usa che $2$ sia non nullo e invertibile. La derivata formale resta lineare su ogni campo, ma nucleo e immagine possono cambiare quando un intero si annulla nel campo: l'esercizio 5 mette alla prova questa distinzione.

## Iniettività e suriettività si leggono su nucleo e immagine

Per riconoscere l'iniettività di una funzione generica si confrontano due ingressi arbitrari. Per una funzione lineare, la loro differenza permette di concentrarsi su un solo risultato: lo zero.

> [!abstract] Concetto chiave — Il nucleo controlla l'iniettività
> Per $F:V\to W$ lineare,
> $$
> F\text{ iniettiva}\quad\Longleftrightarrow\quad\ker F=\{0_V\}.
> $$
> La trasformazione distingue tutti gli ingressi esattamente quando non annulla nessuna direzione non nulla.

**Dimostrazione.** Se $F$ è iniettiva e $v\in\ker F$, allora $F(v)=0_W=F(0_V)$; l'iniettività impone $v=0_V$. Il vettore nullo appartiene comunque al nucleo, dunque il nucleo è esattamente $\{0_V\}$.

Viceversa, supponiamo $\ker F=\{0_V\}$ e $F(u)=F(v)$. Per linearità,

$$
F(u-v)=F(u)-F(v)=0_W.
$$

Quindi $u-v\in\ker F$, perciò $u-v=0_V$ e $u=v$. È la definizione di iniettività.

Il ragionamento dà una descrizione più precisa:

$$
F(u)=F(v)\quad\Longleftrightarrow\quad u-v\in\ker F.
$$

Il nucleo elenca tutte le possibili differenze fra ingressi indistinguibili. Per la trasformazione $T(x,y,z)=(x+y,y+z)$, ad esempio, aggiungere un multiplo di $(-1,1,-1)$ non cambia il risultato.

La **suriettività** riguarda invece l'uguaglianza

$$
\operatorname{Im}F=W.
$$

Non basta che l'immagine sia un sottospazio importante o grande. Nella proiezione $\pi:\mathbb R^3\to\mathbb R^3$, l'immagine è un piano e quindi $\pi$ non è suriettiva. Restringendo il codominio a quel piano, la stessa regola diventa suriettiva. Il nucleo rimane l'asse verticale e la funzione rimane non iniettiva.

> [!warning] Attenzione — Il criterio del nucleo richiede linearità
> Controllo redazionale: per $f:\mathbb R\to\mathbb R$, $f(x)=x^2$, l'unica preimmagine di zero è zero; eppure $f(1)=f(-1)$. Senza linearità non possiamo trasformare l'uguaglianza $f(u)=f(v)$ nella relazione $f(u-v)=0$.
> Inoltre, **nucleo nullo** significa nucleo composto dal solo vettore zero; **trasformazione nulla** significa invece $F(v)=0$ per ogni $v$. Quest'ultima ha nucleo uguale a tutto il dominio.

## Le fibre sono traslati del nucleo

Fissiamo un risultato $w\in W$. La sua **fibra** è

$$
F^{-1}(\{w\})=\{v\in V:F(v)=w\}.
$$

La notazione indica una controimmagine di insiemi e non richiede che $F$ ammetta una funzione inversa. La fibra può essere vuota: succede esattamente quando $w\notin\operatorname{Im}F$.

Supponiamo ora di aver trovato un ingresso $v_p$ con $F(v_p)=w$. Per la linearità, aggiungergli una direzione annullata non cambia il risultato.

**Teorema sulla struttura delle fibre.** Se $F:V\to W$ è lineare e $F(v_p)=w$, allora

$$
F^{-1}(\{w\})=v_p+\ker F
=\{v_p+u:u\in\ker F\}.
$$

*Passo 1 — Ogni vettore costruito così funziona.* Se $u\in\ker F$,

$$
F(v_p+u)=F(v_p)+F(u)=w+0=w.
$$

Quindi $v_p+\ker F\subseteq F^{-1}(\{w\})$.

*Passo 2 — Ogni soluzione differisce da quella fissata per un vettore del nucleo.* Se $F(v)=w$, allora

$$
F(v-v_p)=F(v)-F(v_p)=w-w=0.
$$

Dunque $u=v-v_p\in\ker F$ e $v=v_p+u$. È l'inclusione opposta.

La mappa $u\mapsto v_p+u$ è una biezione fra nucleo e fibra: è suriettiva per la formula appena provata ed è iniettiva per cancellazione di $v_p$. L'inversa manda $v$ in $v-v_p$. Tutte le fibre non vuote hanno quindi la stessa libertà e la stessa cardinalità, anche se occupano posizioni diverse.

### La geometria di un risultato fissato

Per $T(x,y,z)=(x+y,y+z)$, il risultato $(a,b)$ ha la preimmagine particolare $(a,0,b)$. Tutte le preimmagini sono

$$
(x,y,z)=(a,0,b)+s(-1,1,-1)
=(a-s,s,b-s).
$$

È una retta parallela al nucleo. Se cambiamo $(a,b)$ cambia la posizione della retta, non la sua direzione.

Per $w=0$ la fibra è il nucleo, dunque è un sottospazio. Per $w\ne0$, una fibra non vuota non contiene zero, perché $F(0)=0\ne w$: non è un sottospazio vettoriale. Si chiama **traslato** di un sottospazio, o sottospazio affine; qui ne usiamo soltanto questa descrizione concreta.

Una preimmagine particolare non è unica quando il nucleo non è nullo. Sceglierne un'altra non cambia l'insieme descritto: se $v_p'=v_p+u_0$ con $u_0\in\ker F$, allora

$$
v_p'+\ker F=v_p+(u_0+\ker F)=v_p+\ker F.
$$

L'ultima uguaglianza segue perché aggiungere un elemento di un sottospazio permuta i suoi elementi.

> [!example] Esempi e controesempi — Esistenza e unicità della soluzione
> Un risultato fuori dall'immagine non ha preimmagini, qualunque sia il nucleo.
> Un risultato nell'immagine ha un'unica preimmagine se il nucleo è nullo.
> Se il nucleo contiene $u\ne0$ e $v_p$ è una preimmagine, allora $v_p$ e $v_p+u$ sono due preimmagini distinte.
> Dire che il nucleo è nullo assicura l'unicità **quando** la preimmagine esiste; non assicura che ogni risultato del codominio sia raggiunto.

## Rango e nullità contano due aspetti diversi

Una base del nucleo conta quante direzioni indipendenti possiamo aggiungere senza cambiare risultato. Una base dell'immagine conta quante direzioni indipendenti possiamo ottenere in uscita.

Nel seguito supponiamo che il dominio $V$ abbia dimensione finita $n$. Il nucleo è un sottospazio di $V$, quindi ha dimensione finita. Anche l'immagine ha dimensione finita: è generata dalle immagini degli $n$ vettori di una base di $V$. Non occorre che l'intero codominio sia finito dimensionale.

Definiamo

$$
\operatorname{rank}(F)=\dim\operatorname{Im}F,
\qquad
\operatorname{null}(F)=\dim\ker F.
$$

Il primo numero è il **rango**; il secondo si chiama **nullità**. Quando non serve un simbolo separato, scriveremo direttamente $\dim\ker F$.

Nell'esempio $T:\mathbb R^3\to\mathbb R^2$ il nucleo è una retta e l'immagine è tutto il piano:

$$
\dim\ker T=1,\qquad \operatorname{rank}(T)=2.
$$

Per la derivata $D:\mathbb R[t]_{\le2}\to\mathbb R[t]_{\le1}$ il nucleo è lo spazio delle costanti, di dimensione $1$, e l'immagine ha base $(1,t)$, quindi rango $2$. In entrambi i casi, il dominio ha dimensione $3$.

Questa somma di dimensioni non è una coincidenza. Dobbiamo però provarla senza assumere che immagini di vettori indipendenti rimangano indipendenti: una trasformazione può annullare direzioni e creare nuove dipendenze fra le immagini.

Il rango è zero se e solo se l'immagine è $\{0_W\}$, ossia se e solo se la trasformazione è nulla. La nullità è zero se e solo se il nucleo è $\{0_V\}$, ossia se e solo se la trasformazione è iniettiva.

## La prova di rango-nullità costruisce una base

> [!abstract] Concetto chiave — Teorema rango-nullità
> Sia $F:V\to W$ lineare su $K$, con $\dim V=n<\infty$. Allora
> $$
> \dim V=\dim\ker F+\dim\operatorname{Im}F.
> $$
> In particolare, se il rango è $r$, la nullità è $n-r$. È sufficiente la finitezza del dominio; il codominio può essere qualunque spazio vettoriale sullo stesso campo.

La strategia è scegliere una base che separi già gli ingressi annullati dagli altri. I vettori aggiunti alla base del nucleo saranno proprio quelli le cui immagini servono a descrivere l'uscita.

*Passo 1 — Iniziare dal nucleo.* Sia

$$
(u_1,\ldots,u_k)
$$

una base di $\ker F$. Completiamola a una base di $V$:

$$
B=(u_1,\ldots,u_k,v_1,\ldots,v_{n-k}).
$$

Il completamento è lecito per il teorema del capitolo 07. I primi $k$ vettori hanno immagine zero. Consideriamo la famiglia

$$
F(v_1),\ldots,F(v_{n-k})
$$

nel codominio e dimostriamo che sia una base dell'immagine.

*Passo 2 — Genera l'immagine.* Se $w\in\operatorname{Im}F$, esiste $v\in V$ con $F(v)=w$. Sviluppando $v$ nella base $B$,

$$
v=\sum_{i=1}^k a_i u_i+\sum_{j=1}^{n-k}b_jv_j.
$$

Per linearità,

$$
w=F(v)=\sum_{i=1}^k a_iF(u_i)+\sum_{j=1}^{n-k}b_jF(v_j)
=\sum_{j=1}^{n-k}b_jF(v_j).
$$

I termini nel nucleo non contribuiscono. Quindi ogni elemento dell'immagine è generato dalla famiglia scelta.

*Passo 3 — È indipendente.* Supponiamo che

$$
\sum_{j=1}^{n-k}c_jF(v_j)=0.
$$

Per linearità,

$$
F\left(\sum_{j=1}^{n-k}c_jv_j\right)=0.
$$

Poniamo $z=\sum_jc_jv_j$. La formula dice che $z\in\ker F$, perciò esistono coefficienti $d_i$ tali che

$$
z=\sum_{i=1}^k d_i u_i.
$$

Otteniamo così la relazione

$$
\sum_{j=1}^{n-k}c_jv_j-\sum_{i=1}^k d_i u_i=0
$$

sulla **base completa $B$ del dominio**. Per la sua indipendenza tutti i coefficienti sono nulli. In particolare $c_j=0$ per ogni $j$. Le immagini scelte sono indipendenti.

Il punto decisivo è che $z$ è contemporaneamente combinazione dei vettori aggiunti e dei vettori del nucleo; queste due rappresentazioni si confrontano nella stessa base $B$. Non basta sapere che ogni singolo $v_j$ sia fuori dal nucleo.

*Passo 4 — Contare la base costruita.* L'immagine ha una base di $n-k$ vettori, quindi

$$
\dim\operatorname{Im}F=n-k.
$$

Poiché $\dim\ker F=k$, segue $k+(n-k)=n$. Questo conclude la prova.

I casi estremi sono già compresi. Se il nucleo è nullo, la sua base è vuota e le immagini di un'intera base di $V$ formano una base dell'immagine. Se il nucleo è tutto $V$, non ci sono vettori da aggiungere e l'immagine è lo spazio nullo, con base vuota. Per $V=\{0\}$ entrambi i contributi sono zero.

### La decomposizione corretta avviene nel dominio

Poniamo

$$
C=\operatorname{span}(v_1,\ldots,v_{n-k}).
$$

Dalla base completa si ricava

$$
V=\ker F\oplus C.
$$

Il sottospazio $C$ è un supplementare del nucleo. La restrizione

$$
F|_C:C\to\operatorname{Im}F
$$

è biettiva: ogni risultato è generato dalle immagini dei $v_j$, quindi proviene da $C$; se un vettore di $C$ va in zero, appartiene a $C\cap\ker F=\{0\}$, quindi è zero e la restrizione è iniettiva.

Questo precisa l'intuizione della formula: una parte del dominio viene annullata, mentre un supplementare viene mandato in modo reversibile sull'immagine. Il supplementare non è unico; le dimensioni coinvolte lo sono.

> [!warning] Attenzione — Una somma di dimensioni non è una somma diretta di sottospazi
> Controllo redazionale: rango-nullità non afferma $V=\ker F\oplus\operatorname{Im}F$. Il nucleo sta in $V$ e l'immagine in $W$: una loro somma interna richiederebbe anzitutto di collocarli in un ambiente comune.
> Anche quando $V=W$, nucleo e immagine possono coincidere. Per $N(x,y)=(y,0)$ entrambi sono l'asse $x$: le dimensioni sommano a $2$, ma la loro somma è soltanto una retta. È un supplementare $C$ del nucleo, non necessariamente l'immagine stessa, a completare il dominio.

## Le dimensioni riconoscono gli isomorfismi

Supponiamo ora che entrambi gli spazi abbiano dimensione finita:

$$
\dim V=n,\qquad\dim W=m,
$$

e scriviamo $r=\operatorname{rank}(F)$. Dalla formula appena provata,

$$
\dim\ker F=n-r.
$$

Perciò $F$ è iniettiva se e solo se $r=n$. In tal caso necessariamente $n\le m$, perché l'immagine è un sottospazio di $W$.

La suriettività equivale a $\operatorname{Im}F=W$, dunque implica $r=m$. Vale anche il viceversa: se $r=m$, l'immagine è un sottospazio di $W$ della stessa dimensione finita, quindi coincide con $W$. Qui l'inclusione è essenziale.

| Proprietà | Condizione equivalente | Ostacolo dimensionale |
|---|---|---|
| $F$ iniettiva | $\ker F=\{0\}$, oppure $r=n$ | Occorre $n\le m$ |
| $F$ suriettiva | $\operatorname{Im}F=W$, oppure $r=m$ | Occorre $n\ge m$ |
| $F$ biettiva | $r=n=m$ | Le dimensioni devono coincidere |

Se $n>m$, ogni applicazione lineare ha nucleo di dimensione almeno $n-m$: non può essere iniettiva. Se $n<m$, nessuna può essere suriettiva. Le disuguaglianze necessarie non rendono automaticamente iniettiva o suriettiva una mappa scelta: fra spazi della stessa dimensione positiva, ad esempio, la trasformazione nulla non è né iniettiva né suriettiva.

### Isomorfismi e linearità dell'inversa

Un'**applicazione lineare biettiva** si chiama **isomorfismo**. La biiezione dice che ogni vettore di arrivo ha un'unica preimmagine; la linearità dice che questa corrispondenza rispetta le operazioni.

Se $F$ è un isomorfismo, la funzione inversa $G=F^{-1}:W\to V$ è anch'essa lineare. Per provarlo, prendiamo $w_1,w_2\in W$ e chiamiamo $v_i=G(w_i)$ le loro preimmagini. Allora

$$
F(v_1+v_2)=F(v_1)+F(v_2)=w_1+w_2.
$$

L'unica preimmagine di $w_1+w_2$ è dunque $v_1+v_2$, cioè

$$
G(w_1+w_2)=G(w_1)+G(w_2).
$$

Analogamente $F(\lambda v_1)=\lambda w_1$, quindi l'unicità della preimmagine dà

$$
G(\lambda w_1)=\lambda G(w_1).
$$

Un isomorfismo manda basi in basi. Le immagini generano per suriettività e conservazione delle combinazioni. Se $\sum_j a_jF(v_j)=0$, applicando $G$ e la sua linearità otteniamo $\sum_j a_jv_j=0$; l'indipendenza della base iniziale annulla i coefficienti. In particolare, gli spazi finito dimensionali isomorfi hanno la stessa dimensione.

Vale anche l'esistenza nel verso opposto: se due spazi hanno la stessa dimensione finita, scegliamo basi $(v_1,\ldots,v_n)$ e $(w_1,\ldots,w_n)$ e definiamo

$$
\Phi\left(\sum_{j=1}^n a_jv_j\right)=\sum_{j=1}^n a_jw_j.
$$

L'unicità delle coordinate rende la definizione ben posta. Le coordinate di una somma e di un multiplo mostrano che $\Phi$ è lineare. Scambiando le due basi costruiamo l'inversa; quindi $\Phi$ è un isomorfismo.

> [!abstract] Concetto chiave — Stessa dimensione e reversibilità
> Su uno stesso campo, due spazi di dimensione finita sono isomorfi se e solo se hanno la stessa dimensione.
> Per una specifica applicazione lineare fra spazi della stessa dimensione finita, sono equivalenti iniettività, suriettività e biettività.
> La prima frase afferma che **esiste** un isomorfismo; non dice che ogni applicazione fra quei due spazi lo sia.

Un'applicazione lineare $F:V\to V$ si chiama **endomorfismo**. In dimensione finita basta quindi provarne una fra iniettività e suriettività per ottenere anche l'altra. L'identità è un esempio; la trasformazione nulla su uno spazio non nullo non possiede nessuna delle due proprietà. Sullo spazio nullo, invece, l'unica applicazione in sé è contemporaneamente nulla, identità e isomorfismo: le definizioni comprendono anche questo caso.

## Le matrici ritrovano nucleo e immagine

Sia $A\in M_{m,n}(K)$. La trasformazione

$$
F_A:K^n\to K^m,\qquad F_A(x)=Ax
$$

è lineare: le proprietà del prodotto matrice-vettore danno $A(x+y)=Ax+Ay$ e $A(\lambda x)=\lambda Ax$.

Se $A_1,\ldots,A_n$ sono le colonne, dal capitolo 09 sappiamo che

$$
Ax=\sum_{j=1}^n x_jA_j.
$$

Variando $x$, si ottengono esattamente tutte le combinazioni delle colonne. Quindi

$$
\operatorname{Im}F_A=\operatorname{span}(A_1,\ldots,A_n),
\qquad
\ker F_A=\{x\in K^n:Ax=0\}.
$$

La prima è un'uguaglianza di **sottospazi**, non soltanto delle loro dimensioni. La seconda identifica il nucleo con le soluzioni dell'omogeneo.

Definiamo il **rango della matrice** come la dimensione del suo spazio delle colonne:

$$
\operatorname{rank}(A)
=\dim\operatorname{span}(A_1,\ldots,A_n)
=\operatorname{rank}(F_A).
$$

Rango-nullità applicato a $F_A$ dà

$$
\boxed{\dim\ker F_A=n-\operatorname{rank}(A).}
$$

Compare $n$, numero delle colonne e dimensione del **dominio**, non il numero delle equazioni $m$. Il rango soddisfa $0\le\operatorname{rank}(A)\le\min\{m,n\}$: l'immagine è un sottospazio di $K^m$ ed è generata da $n$ colonne.

Il metodo di Gauss del capitolo 10 ha già costruito una base dell'omogeneo con un vettore per ogni variabile libera. Se una riduzione presenta $p$ pivot nei coefficienti, quella costruzione dà $\dim\ker F_A=n-p$. Confrontandola con rango-nullità otteniamo $\operatorname{rank}(A)=p$. In questo modo il numero dei pivot acquista un significato strutturale; non abbiamo usato l'uguaglianza fra rango per righe e rango per colonne, che sarà sviluppata nel capitolo 12.

### Un sistema come problema di esistenza e di libertà

Per $Ax=b$, la compatibilità significa esattamente

$$
b\in\operatorname{Im}F_A.
$$

Quando una soluzione particolare $x_p$ esiste,

$$
\{x:Ax=b\}=x_p+\ker F_A.
$$

Se $(u_1,\ldots,u_d)$ è una base del nucleo, con $d=n-\operatorname{rank}(A)$, tutte e sole le soluzioni sono

$$
x=x_p+\sum_{j=1}^d t_ju_j,\qquad t_j\in K.
$$

Ogni scelta dei parametri dà una soluzione; scelte diverse danno soluzioni diverse per l'indipendenza della base. Questa è una corrispondenza biunivoca fra $K^d$ e l'insieme delle soluzioni.

**Esempio svolto.** Per

$$
A=\begin{pmatrix}1&1&0\\0&1&1\end{pmatrix},
$$

le colonne $(1,0)^T$ e $(0,1)^T$, prima e terza, generano $K^2$. Quindi il rango è $2$ e il nucleo ha dimensione $3-2=1$. Risolvendo $Ax=0$ troviamo una base $((-1,1,-1)^T)$, come per $T$.

Per $b=(a,b_2)^T$ scegliamo $x_p=(a,0,b_2)^T$ e scriviamo

$$
x=\begin{pmatrix}a\\0\\b_2\end{pmatrix}
+s\begin{pmatrix}-1\\1\\-1\end{pmatrix}.
$$

Moltiplicando per $A$ il primo vettore otteniamo il termine noto e il secondo viene annullato: il controllo torna al sistema originario.

### Contare le soluzioni richiede conoscere il campo

Se $K$ ha $q$ elementi, ogni parametro ha $q$ scelte indipendenti. Un sistema compatibile ha pertanto

$$
q^{\,n-\operatorname{rank}(A)}
$$

soluzioni. In particolare, se il nucleo è nullo, ne ha $q^0=1$; se ha dimensione positiva, ne ha più di una ma comunque un numero finito.

Se $K$ è infinito e $d>0$, fissando tutti i parametri tranne uno otteniamo una famiglia infinita di soluzioni distinte. Se $d=0$, la soluzione è unica anche su un campo infinito. Per un sistema incompatibile il numero è invece zero: le formule precedenti richiedono l'esistenza di $x_p$.

> [!warning] Attenzione — Parametri liberi non significa sempre infinite soluzioni
> La [[_transcripts/Geometria 1/2026-10-22 - Sistemi lineari e algoritmo di eliminazione di Gauss|lezione del 22 ottobre su Gauss]] distingue il campo infinito dal campo finito. Alcune formulazioni sintetiche delle note omettono questa precisazione: il libro mantiene l'ipotesi sul campo.
> Prima domanda: il termine noto è nell'immagine? Solo dopo puoi contare la libertà del nucleo. La nullità positiva non produce soluzioni di un sistema il cui termine noto non sia raggiungibile.

## Dove serve davvero la dimensione finita

Nucleo, immagine, criterio di iniettività e formula delle fibre non hanno richiesto dimensione finita. Il criterio «endomorfismo iniettivo se e solo se suriettivo» l'ha invece usata nel confronto delle dimensioni. Non possiamo trasportarlo automaticamente agli spazi infiniti.

Sullo spazio $K[t]$ consideriamo la moltiplicazione per $t$:

$$
M(p)=tp.
$$

È lineare. Se $tp=0$, il confronto dei coefficienti impone $p=0$: è iniettiva. La sua immagine contiene esattamente i polinomi con termine costante nullo, quindi non contiene $1$: non è suriettiva.

Consideriamo anche lo spostamento dei coefficienti verso il basso,

$$
S(a_0+a_1t+\cdots+a_dt^d)
=a_1+a_2t+\cdots+a_dt^{d-1},
$$

con $S$ delle costanti uguale a zero. È lineare perché opera sui coefficienti. Ogni $q$ è immagine di $tq$, quindi è suriettiva; le costanti vengono tutte annullate, quindi non è iniettiva.

Vale $S(M(p))=p$, ma

$$
M(S(p))=p-p(0).
$$

Una composizione è l'identità; l'altra perde il termine costante. Non ci sono contraddizioni: $K[t]$ non ha dimensione finita. Le basi infinite usano sempre combinazioni a supporto finito e non autorizzano a sottrarre dimensioni infinite come se fossero interi.

## Fonti

Definizione di applicazione lineare, distinzione fra operazioni nel dominio e nel codominio, nucleo, immagine, prove che siano sottospazi, criterio di iniettività e struttura delle soluzioni come traslato provengono dalla [[Notes/Geometria 1/Lectures/2026-10-22 - Sistemi lineari, nucleo, immagine e rango|nota del 22 ottobre su nucleo e immagine]] e dalla [[_transcripts/Geometria 1/2026-10-22 - Sistemi lineari, nucleo, immagine e rango|trascrizione corrispondente]]. La stessa fonte dimostra rango-nullità completando una base del nucleo; la prova qui ne esplicita i passaggi e i casi limite.

Il collegamento fra immagine e spazio delle colonne, la formula $\dim\ker F_A=n-\operatorname{rank}(A)$ e le fibre dei sistemi sono ripresi anche dalla [[Notes/Geometria 1/Lectures/2026-10-27 - Rango, sistemi lineari e matrici elementari|nota del 27 ottobre]] e dalla [[_transcripts/Geometria 1/2026-10-27 - Rango, sistemi lineari e matrici elementari|relativa trascrizione]]. La nozione di rango di un'applicazione è ripresa nella [[Notes/Geometria 1/Lectures/2026-11-04 - Applicazioni lineari e matrici associate|nota del 4 novembre sulle applicazioni lineari]] e nella [[_transcripts/Geometria 1/2026-11-04 - Applicazioni lineari e matrici associate|trascrizione]]. La rappresentazione matriciale su basi arbitrarie è sviluppata nel capitolo 14, senza essere usata come prerequisito della dimostrazione di questo capitolo.

Il conteggio sui campi finiti è coerente con il chiarimento della [[Notes/Geometria 1/Lectures/2026-10-22 - Sistemi lineari e algoritmo di eliminazione di Gauss|nota su Gauss del 22 ottobre]] e soprattutto della [[_transcripts/Geometria 1/2026-10-22 - Sistemi lineari e algoritmo di eliminazione di Gauss|trascrizione]], che distingue esplicitamente campi finiti e infiniti. Le frasi che omettono tale distinzione vengono qui precisate.

Sono raccordi e completamenti didattici l'uguaglianza fra immagine di uno span e span delle immagini, la formulazione generale delle fibre, la restrizione a un supplementare del nucleo, la prova della linearità dell'inversa, il confronto degli isomorfismi attraverso le basi e gli esempi che mostrano il ruolo della dimensione finita. Proiezioni, matrici, applicazioni sui polinomi, esercizi e riscontri sono redazionali: non ricostruiscono coefficienti incerti della lavagna. Per il quadro complessivo: [[Books/Geometria-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

## Riscontri degli esercizi

Apri il riscontro dopo un tentativo scritto. In una prova controlla soprattutto dove hai usato linearità, indipendenza e finitezza. Nei calcoli, sostituisci le soluzioni nella regola iniziale e ricostruisci gli oggetti del dominio, non soltanto i loro coefficienti.

### Riscontro 1

> [!tip]- Riscontro 1
> $F$ è lineare: per $u=(x,y)$ e $v=(x',y')$, ogni componente di $F(u+v)$ si separa nella somma delle componenti di $F(u)$ e $F(v)$; moltiplicando entrambi gli ingressi per $\lambda$ si raccoglie $\lambda$ in entrambe le uscite. $G$ non è lineare perché $G(0,0)=(1,0)\ne0$. $H$ manda zero in zero ma $H(1+1)=8\ne2=H(1)+H(1)$, dunque non è additiva.
> Il coniugio è additivo e commuta con gli scalari reali, quindi è lineare su $\mathbb R$. Non lo è su $\mathbb C$: $C(i\cdot1)=-i\ne iC(1)=i$. Il campo fa parte del problema. Il caso $H$ confuta la sufficienza della sola condizione $F(0)=0$.

Torna a [[#Esercizio 1 — La formula non basta da sola (linearità e campo)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> Dalla linearità $F(0)=F(0)+F(0)$ e la cancellazione danno $F(0)=0$. Per una combinazione di $s+1$ termini, separa l’ultimo, usa l’additività e applica l’ipotesi induttiva ai primi $s$; la proprietà sugli scalari tratta ogni singolo addendo. Se $x\in F(\operatorname{span}S)$, esiste una combinazione finita $\sum_j\lambda_js_j$ la cui immagine è $x$. Per linearità $x=\sum_j\lambda_jF(s_j)$, dunque appartiene allo span delle immagini. Viceversa ogni combinazione di immagini è l'immagine della stessa combinazione degli $s_j$. Per $S=\varnothing$, $F(\{0_V\})=\{0_W\}=\operatorname{span}\varnothing$.
> Se $S$ genera $V$, l'uguaglianza dà $F(V)=\operatorname{span}F(S)$. Il nucleo contiene zero; somme e multipli di vettori annullati sono annullati. L'immagine contiene $F(0)=0$; per $w=F(v)$ e $w'=F(v')$, la somma è $F(v+v')$ e il multiplo $\lambda w$ è $F(\lambda v)$. Queste sono preimmagini esplicite, quindi il criterio di sottospazio si applica nei rispettivi ambienti.

Torna a [[#Esercizio 2 — Portare una costruzione attraverso la trasformazione (combinazioni e span)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> La formula distribuisce somme e scalari, quindi $P$ è lineare. Il nucleo è descritto da $x=-z$, $y=z$:
> $$
> \ker P=\operatorname{span}\{(-1,1,1)\}.
> $$
> Ogni immagine ha terza coordinata zero e ogni $(a,b,0)$ è $P(a,b,0)$, quindi $\operatorname{Im}P=\{z=0\}$, con base $(e_1,e_2)$. Il nucleo non è nullo, dunque $P$ non è iniettiva. Non è suriettiva su $\mathbb R^3$, ma lo diventa con codominio il piano raggiunto.
> Se $P(v)=(x+z,y-z,0)$, applicando ancora $P$ non cambia nulla: $P(P(v))=P(v)$. Le preimmagini richieste sono $(2,-1,0)+s(-1,1,1)$. La direzione annullata è obliqua rispetto al piano: non è un multiplo di $(0,0,1)$. La linearità, da sola, non impone ortogonalità.

Torna a [[#Esercizio 3 — Un piano raggiunto da direzioni oblique (nucleo e immagine)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Nell'omogeneo poni $x_3=s$, $x_4=t$. La seconda equazione dà $x_2=-s-t$, la prima $x_1=3s+2t$. Quindi
> $$
> \ker F_A=\operatorname{span}\{u,v\},\quad
> u=(3,-1,1,0)^T,\quad v=(2,-1,0,1)^T.
> $$
> Generano perché descrivono ogni soluzione; sono indipendenti leggendo la terza e la quarta coordinata. Le prime due colonne di $A$, $(1,0)^T$ e $(2,1)^T$, sono indipendenti e generano $K^2$, quindi l'immagine è tutto $K^2$ e il rango è $2$.
> Una soluzione particolare è $x_p=(4,-1,0,0)^T$: $Ax_p=(2,-1)^T$. Il calcolo diretto dà $Au=Av=0$. Tutte le soluzioni sono $x_p+su+tv$ e i parametri sono unici. Su $\mathbb R$ sono infinite, su $\mathbb F_5$ sono $5^2=25$. Le identità restano valide modulo $5$ e, più in generale, interpretando gli interi nel campo.

Torna a [[#Esercizio 4 — Una soluzione e tutte le altre (sistemi e fibre)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> Per $p=a_0+a_1t+a_2t^2+a_3t^3$ vale $p'=a_1+2a_2t+3a_3t^2$; la dipendenza dai coefficienti è lineare su ogni campo.
> Su $\mathbb R$, annullare la derivata impone $a_1=a_2=a_3=0$, quindi il nucleo ha base $(1)$. Ogni $b_0+b_1t+b_2t^2$ è derivata di $b_0t+(b_1/2)t^2+(b_2/3)t^3$, quindi l'immagine ha base $(1,t,t^2)$. Rango e nullità sono $3$ e $1$, con somma $4$. Le soluzioni di $p'=1+2t$ sono $p=c+t+t^2$.
> Su $\mathbb F_2$, $2=0$ e $3=1$, quindi $p'=a_1+a_3t^2$. Il nucleo ha base $(1,t^2)$ e l'immagine ha base $(1,t^2)$, nei rispettivi ambienti di partenza e arrivo. Le dimensioni sono $2+2=4$. Non puoi dividere per $2$ per risalire dal coefficiente di $t$ a quello di $t^2$: quel coefficiente della derivata è sempre zero.

Torna a [[#Esercizio 5 — Derivare può annullare coefficienti diversi (polinomi e caratteristica)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> Sviluppa un ingresso generico nella base completa e applica $F$: i termini lungo gli $u_i$ scompaiono, quindi le immagini dei $v_j$ generano. Per l'indipendenza, una relazione $\sum_jc_jF(v_j)=0$ dice che $z=\sum_jc_jv_j$ appartiene al nucleo. Scrivendo anche $z=\sum_id_iu_i$ e sottraendo si ottiene una relazione sulla base completa, quindi tutti i $c_j$ e $d_i$ sono nulli. Il confronto avviene in una sola base del dominio; è questo a escludere relazioni nascoste.
> Per $F(x,y)=x+y$, i vettori $e_1,e_2$ sono indipendenti e nessuno è nel nucleo, ma hanno entrambi immagine $1$. Nel codominio reale i due vettori $1,1$ sono dipendenti. Non basta scegliere singoli vettori esterni: il loro span deve essere un supplementare del nucleo. Qui $e_1-e_2=(1,-1)$ appartiene al nucleo, perciò lo span di $(e_1,e_2)$ lo interseca in modo non nullo.

Torna a [[#Esercizio 6 — Il passaggio decisivo della dimostrazione (rango-nullità)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> Per rango-nullità $r=5-\dim\ker F$. Se la nullità è $2$, il rango è $3$ e l'immagine, inclusa in $W$, ha la sua stessa dimensione: $F$ è suriettiva ma non iniettiva. Se la nullità è $4$, il rango è $1$, quindi non è né suriettiva né iniettiva. La nullità $1$ darebbe rango $4>3$, impossibile.
> I valori possibili della nullità sono $2,3,4,5$, corrispondenti a ranghi $3,2,1,0$. Per realizzare un rango $r$ fra $0$ e $3$, scegli basi $(v_1,\ldots,v_5)$ e $(w_1,w_2,w_3)$ e poni
> $$
> F\left(\sum_{j=1}^5a_jv_j\right)=\sum_{j=1}^r a_jw_j.
> $$
> La formula è ben definita per unicità delle coordinate ed è lineare. Le immagini dei primi $r$ vettori generano uno spazio di dimensione $r$; gli altri $5-r$ vettori formano una base del nucleo.
> Se $V=W$ ha dimensione finita $n$, iniettività significa rango $n$, che equivale a suriettività. La trasformazione nulla su $V\ne\{0\}$ ha rango $0$ e nucleo $V$, quindi non è né iniettiva né suriettiva. Per $V=\{0\}$ l'unica funzione in sé è anche l'identità: è biettiva e lineare.

Torna a [[#Esercizio 7 — Dimensioni che consentono o impediscono (iniettività e suriettività)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> La formula è lineare. Risolvendo $a-b=c_0$, $a+b=c_1$ su $\mathbb R$ ottieni
> $$
> T^{-1}(c_0+c_1t)=
> \left(\frac{c_0+c_1}{2},\frac{c_1-c_0}{2}\right).
> $$
> Sostituendo si ricostruiscono entrambi i coefficienti e, nell'altro verso, entrambi i parametri. L’inversa è lineare perché le sue due componenti sono combinazioni lineari dei coefficienti. In generale, se $G=F^{-1}$, la linearità di $F$ mostra che $G(w_1)+G(w_2)$ è una preimmagine di $w_1+w_2$; l’unicità impone che sia $G(w_1+w_2)$. Lo stesso argomento per $\lambda G(w)$ prova $G(\lambda w)=\lambda G(w)$.
> Su $\mathbb F_2$ il meno coincide con il più e $T(a,b)=(a+b)(1+t)$. Il nucleo è $\operatorname{span}\{(1,1)\}$ e l'immagine è $\operatorname{span}\{1+t\}$; il rango è $1$. Le dimensioni del dominio e del codominio sono entrambe $2$, ma questa specifica mappa non è iniettiva né suriettiva. L'uguaglianza delle dimensioni garantisce l'esistenza di qualche isomorfismo, non l'invertibilità di tutte le mappe.

Torna a [[#Esercizio 8 — Tornare dai coefficienti ai parametri (isomorfismi)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> La valutazione conserva somme e scalari, quindi $E$ è lineare. Un polinomio nel nucleo si annulla in $0$ e in $1$; il criterio del fattore dà, per il grado al più $2$,
> $$
> \ker E=\operatorname{span}\{t(t-1)\}.
> $$
> Equivalentemente, per $p=a+bt+ct^2$ le condizioni sono $a=0$, $b+c=0$, dunque $p=c(t^2-t)$. Ogni $(u,v)$ è immagine di $u+(v-u)t$, quindi $\operatorname{Im}E=\mathbb R^2$ e il rango è $2$; $1+2=3$ verifica rango-nullità.
> Una preimmagine di $(2,5)$ è $2+3t$, quindi tutte sono
> $$
> p(t)=2+3t+c\,t(t-1),\qquad c\in\mathbb R.
> $$
> È un traslato del nucleo e non è un sottospazio, perché non contiene il polinomio nullo. Prescrivendo $(0,0)$ si ottiene esattamente il nucleo, che è un sottospazio.

Torna a [[#Esercizio 9 — Prescrivere due valori di un polinomio (fibre di una valutazione)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> Nell'omogeneo $x_1=x_2$ e $x_3=x_2+x_4$. Ponendo $x_2=s$, $x_4=t$,
> $$
> x=s(1,1,1,0)+t(0,0,1,1).
> $$
> I due generatori sono indipendenti leggendo la seconda e la quarta coordinata. Le immagini di $e_1$ ed $e_3$ sono $(1,0)$ e $(0,1)$, quindi l'immagine è tutto $\mathbb F_2^2$. Il rango è $2$, la nullità è $2$.
> Una preimmagine di $(1,0)$ è $e_1$. Le quattro sono
> $$
> (1,0,0,0),\quad(0,1,1,0),\quad
> (1,0,1,1),\quad(0,1,0,1).
> $$
> Ogni altra fibra è un traslato dello stesso nucleo e ha quattro elementi. Ci sono $2^4=16$ ingressi e $2^2=4$ risultati: quattro fibre disgiunte di quattro elementi esauriscono il dominio.

Torna a [[#Esercizio 10 — Quattro ingressi per ogni risultato (campi finiti)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> Il nucleo è un sottospazio del dominio e l'immagine del codominio: per spazi diversi la somma diretta proposta non è definita come somma interna senza un'ulteriore collocazione comune. Per $N(x,y)=(y,0)$, $\ker N=\operatorname{span}(e_1)=\operatorname{Im}N$. La loro intersezione non è nulla e la somma resta una retta, benché $1+1=2$.
> Scegli $C=\operatorname{span}(e_2)$: $\mathbb R^2=\ker N\oplus C$ e $N(te_2)=te_1$ è una corrispondenza lineare biettiva da $C$ all'immagine.
> Nucleo nullo significa iniettività; rango nullo significa trasformazione nulla. La trasformazione nulla ha nucleo uguale al dominio, che è nullo soltanto se il dominio stesso è lo spazio nullo.

Torna a [[#Esercizio 11 — Un conto giusto non è una decomposizione (errori sulle dimensioni)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> Entrambe le regole operano linearmente sui coefficienti. Per $M$, il prodotto $tp$ è zero soltanto se tutti i coefficienti di $p$ sono zero; il nucleo è nullo e l'immagine è l'insieme dei polinomi con termine costante nullo. Quindi $M$ è iniettiva ma non suriettiva, perché non raggiunge $1$.
> Per $S$, il nucleo è lo spazio delle costanti; ogni $q$ è immagine di $tq$, quindi $S$ è suriettiva e non iniettiva. Le composizioni soddisfano $S(M(p))=p$ e $M(S(p))=p-p(0)$. Il teorema che rende equivalenti iniettività e suriettività per un endomorfismo richiede dimensione finita; $K[t]$ non la possiede.

Torna a [[#Esercizio 12 — Spostare i coefficienti di un posto (limite dei criteri finiti)|esercizio 12]].

Il capitolo è acquisito quando sai scegliere il corretto ambiente per nucleo e immagine, ricostruire una fibra da una preimmagine e una base del nucleo, e dimostrare rango-nullità spiegando perché le immagini dei vettori aggiunti siano indipendenti. Nei criteri dimensionali, indica sempre dove entrano l'inclusione fra sottospazi, la finitezza e il campo degli scalari.

---

[[Books/Geometria-I/10 - Il metodo di Gauss|← 10 · Il metodo di Gauss]] · [[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|12 · Rango invertibilità e matrici elementari →]]
