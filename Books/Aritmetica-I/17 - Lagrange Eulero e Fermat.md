# Lagrange, Eulero e Fermat

Prerequisiti: [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|gruppi e sottogruppi]], [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|unità e teorema cinese]], [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|ordine di un elemento]]. Torna all’[[Books/Aritmetica-I/00 - Indice e piano di studio|indice]].

## Una potenza prevedibile senza calcolarla

Come possiamo sapere che $7^{40}\equiv1\pmod{100}$ senza costruire quell’enorme intero? Nei capitoli precedenti abbiamo imparato che le potenze di una classe invertibile, lavorando fra un numero finito di classi, tornano all’identità. Ma questo assicura l’esistenza di un esponente; non spiega ancora perché proprio $40$ debba funzionare.

La risposta parte da un problema di conteggio. Le potenze di $[7]_{100}$ formano un sottogruppo del gruppo delle classi invertibili. Se riuscissimo a dividere tutto il gruppo in blocchi grandi quanto quel sottogruppo, il numero di elementi del sottogruppo dovrebbe dividere il totale. L’ordine di $[7]_{100}$ dividerebbe allora $40$, e la potenza cercata sarebbe obbligata a valere uno.

Il passaggio decisivo consiste dunque nel costruire blocchi senza sovrapposizioni. Le classi laterali servono esattamente a questo: trasformano una proprietà algebrica in una partizione da contare.

## Traslare un sottogruppo

Sia $H$ un sottogruppo di un gruppo $G$, scritto moltiplicativamente. Per $g\in G$ definiamo la **classe laterale sinistra**

$$
gH=\{gh:h\in H\}.
$$

È una copia di $H$ traslata mediante la moltiplicazione a sinistra per $g$. La parola «sinistra» specifica dove mettiamo $g$: in un gruppo non commutativo l’ordine dei fattori conta.

Per capire perché queste copie non si sovrappongano parzialmente, introduciamo su $G$ la relazione

$$
x\sim y\quad\Longleftrightarrow\quad x^{-1}y\in H.
$$

Verifichiamo che è un’equivalenza. È riflessiva perché $x^{-1}x=e\in H$. È simmetrica perché, se $x^{-1}y\in H$, il suo inverso $y^{-1}x$ appartiene a $H$. Infine, se $x^{-1}y\in H$ e $y^{-1}z\in H$, la chiusura di $H$ dà

$$
(x^{-1}y)(y^{-1}z)=x^{-1}z\in H,
$$

quindi è transitiva. Non abbiamo scambiato alcun fattore.

La classe di equivalenza di $g$ è precisamente $gH$: infatti

$$
g\sim y
\iff g^{-1}y\in H
\iff y=gh\text{ per qualche }h\in H.
$$

Come per ogni equivalenza, le classi ricoprono $G$ e due classi sono uguali oppure disgiunte. Possiamo anche vedere direttamente il passaggio cruciale: se $z=gh=kh'$ appartiene sia a $gH$ sia a $kH$, allora $k=g h(h')^{-1}$. Dunque ogni $kt$, con $t\in H$, appartiene a $gH$; invertendo i ruoli si ottiene l’altra inclusione. Una sola intersezione forza l’uguaglianza.

Resta da contare gli elementi di ciascun blocco. L’applicazione

$$
H\longrightarrow gH,\qquad h\longmapsto gh
$$

è suriettiva per definizione di $gH$ ed è iniettiva per cancellazione: $gh_1=gh_2$ implica $h_1=h_2$. La sua inversa manda $x\in gH$ in $g^{-1}x\in H$. Perciò ogni classe laterale ha la stessa cardinalità di $H$.

Qui le classi laterali sono soltanto insiemi. Per contarle non serve definire un’operazione fra classi né chiedere altre proprietà a $H$.

### Un esempio additivo

Nel gruppo $G=(\mathbb Z/12\mathbb Z,+)$ prendiamo

$$
H=\{[0]_{12},[4]_{12},[8]_{12}\}.
$$

Le classi laterali, scritte additivamente, sono

$$
\begin{aligned}
[0]_{12}+H&=\{[0]_{12},[4]_{12},[8]_{12}\},\\
[1]_{12}+H&=\{[1]_{12},[5]_{12},[9]_{12}\},\\
[2]_{12}+H&=\{[2]_{12},[6]_{12},[10]_{12}\},\\
[3]_{12}+H&=\{[3]_{12},[7]_{12},[11]_{12}\}.
\end{aligned}
$$

Ogni elemento compare una volta: abbiamo quattro blocchi da tre elementi. La classe $[4]_{12}+H$ coincide già con $H$, quindi scegliere un nuovo rappresentante non produce necessariamente un nuovo blocco.

## Lagrange: la divisibilità nasce dalla partizione

**Teorema di Lagrange.** Se $G$ è un gruppo finito e $H\le G$, allora

$$
|H|\mid |G|.
$$

**Dimostrazione.** Le classi laterali sinistre di $H$ costituiscono una partizione di $G$. Poiché $G$ è finito, ci sono un numero finito $k\ge1$ di classi distinte. Ognuna contiene esattamente $|H|$ elementi, quindi il principio della somma dà

$$
|G|=\underbrace{|H|+\cdots+|H|}_{k\text{ volte}}=k|H|.
$$

Questa uguaglianza è precisamente l’affermazione che $|H|$ divide $|G|$. Il numero $k$ si chiama **indice** di $H$ in $G$ e si indica $[G:H]$. $\square$

Applichiamo ora il teorema al sottogruppo ciclico $\langle g\rangle$ generato da un elemento $g\in G$. Dal [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|capitolo 16]] sappiamo che, in un gruppo finito, l’ordine di $g$ esiste ed è uguale a $|\langle g\rangle|$. Otteniamo così

$$
\boxed{\operatorname{ord}(g)\mid |G|.}
$$

Se $|G|=t\operatorname{ord}(g)$, allora

$$
g^{|G|}=\bigl(g^{\operatorname{ord}(g)}\bigr)^t=e.
$$

Distinguiamo i due argomenti che ora abbiamo a disposizione. La proprietà $g^m=e\iff\operatorname{ord}(g)\mid m$ viene dalla divisione euclidea degli esponenti, già dimostrata nel capitolo 16. La proprietà $\operatorname{ord}(g)\mid|G|$ viene invece dalla partizione di $G$ in classi laterali. La seconda collega il comportamento di un singolo elemento alla dimensione dell’intero gruppo.

## Quante classi sono invertibili? La funzione di Eulero

Per $n\ge2$ ricordiamo il gruppo

$$
U(n)=(\mathbb Z/n\mathbb Z)^\times
=\{[a]_n:\gcd(a,n)=1\}.
$$

Definiamo la **funzione di Eulero** mediante

$$
\varphi(n)=|U(n)|.
$$

In altre parole, contiamo i rappresentanti $a\in\{0,\ldots,n-1\}$ coprimi con $n$. Poniamo inoltre $\varphi(1)=1$ come convenzione di conteggio; le applicazioni ai gruppi modulari di questo capitolo avranno sempre $n\ge2$.

Se $p$ è primo ed $s\ge1$, un intero non è coprimo con $p^s$ esattamente quando è multiplo di $p$. Fra $0$ e $p^s-1$ questi multipli sono

$$
0,p,2p,\ldots,(p^{s-1}-1)p,
$$

in tutto $p^{s-1}$. Togliendoli dalle $p^s$ classi otteniamo

$$
\boxed{\varphi(p^s)=p^s-p^{s-1}=p^s\left(1-\frac1p\right).}
$$

In particolare, $\varphi(p)=p-1$.

Per passare dalle potenze prime a un modulo qualsiasi usiamo il teorema cinese strutturale del [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|capitolo 15]]. Se $m,n\ge2$ sono coprimi, la mappa

$$
U(mn)\longrightarrow U(m)\times U(n),\qquad
[a]_{mn}\longmapsto([a]_m,[a]_n)
$$

è un isomorfismo, quindi in particolare una biiezione. Ogni coppia di classi invertibili corrisponde a un’unica classe invertibile modulo $mn$. Contando le coppie si conclude

$$
\boxed{\varphi(mn)=\varphi(m)\varphi(n)\quad\text{se }\gcd(m,n)=1.}
$$

Se uno dei moduli è $1$, l’identità vale direttamente grazie a $\varphi(1)=1$.

Ora fattorizziamo $n\ge2$ come $n=p_1^{s_1}\cdots p_r^{s_r}$, con primi distinti. Le potenze prime sono a due a due coprime: applicando ripetutamente la moltiplicatività,

$$
\begin{aligned}
\varphi(n)
&=\prod_{i=1}^r\varphi(p_i^{s_i})
=\prod_{i=1}^r p_i^{s_i}\left(1-\frac1{p_i}\right)\\
&=\boxed{n\prod_{p\mid n}\left(1-\frac1p\right)}.
\end{aligned}
$$

Nel prodotto ogni primo compare una volta sola. Per esempio, $360=2^3\cdot3^2\cdot5$, dunque

$$
\varphi(360)=360\cdot\frac12\cdot\frac23\cdot\frac45=96.
$$

Equivalentemente, possiamo contare separatamente le unità modulo $8$, $9$ e $5$: sono $4$, $6$ e $4$, quindi in totale $4\cdot6\cdot4=96$.

## Eulero e Fermat

**Teorema di Eulero.** Se $n\ge2$, $a\in\mathbb Z$ e $\gcd(a,n)=1$, allora

$$
\boxed{a^{\varphi(n)}\equiv1\pmod n.}
$$

**Dimostrazione.** La classe $[a]_n$ appartiene al gruppo finito $U(n)$, che contiene $\varphi(n)$ elementi. Lagrange dà $\operatorname{ord}_n(a)\mid\varphi(n)$; elevare $[a]_n$ a un multiplo del suo ordine produce $[1]_n$. $\square$

Il lemma sulle potenze modulari incontrato nella lezione del 14 ottobre assicurava che un ritorno a uno esistesse. Eulero fornisce ora un esponente esplicito, calcolabile dalla fattorizzazione del modulo.

**Piccolo teorema di Fermat.** Se $p$ è primo e $p\nmid a$, allora

$$
\boxed{a^{p-1}\equiv1\pmod p.}
$$

Infatti $\gcd(a,p)=1$ e $\varphi(p)=p-1$, quindi basta applicare Eulero. Una forma valida per **ogni** intero $a$ è

$$
\boxed{a^p\equiv a\pmod p.}
$$

Se $p\nmid a$, moltiplichiamo la precedente congruenza per $a$. Se invece $p\mid a$, entrambi i membri sono congrui a zero. Questo secondo caso va trattato: non possiamo applicare Eulero alla classe zero.

> [!warning] Attenzione — La coprimalità decide se possiamo tornare a uno
> Per $a=2$ e $n=8$ abbiamo $\varphi(8)=4$, ma $2^4\equiv0\pmod8$. Il teorema di Eulero richiede $\gcd(a,n)=1$. La forma $a^p\equiv a\pmod p$ di Fermat ammette anche i multipli di $p$, proprio perché conclude qualcosa di diverso dal ritorno a uno.

### Potenze grandi e inversi

Calcoliamo $7^{2026}\pmod{100}$. Poiché $100=2^2\cdot5^2$,

$$
\varphi(100)=100\cdot\frac12\cdot\frac45=40.
$$

Eulero dà $7^{40}\equiv1$. Scrivendo $2026=50\cdot40+26$, possiamo ridurre l’esponente a $26$. Ma un controllo mirato migliora molto il calcolo:

$$
7^2=49,\qquad 7^4=2401\equiv1\pmod{100}.
$$

Poiché $2026=506\cdot4+2$, otteniamo direttamente

$$
7^{2026}\equiv7^2\equiv49\pmod{100}.
$$

Eulero produce anche un inverso: per una classe invertibile,

$$
a\,a^{\varphi(n)-1}\equiv1\pmod n,
\qquad
[a]_n^{-1}=[a^{\varphi(n)-1}]_n.
$$

Se il modulo è primo, l’inverso di $[a]_p\ne[0]_p$ è $[a^{p-2}]_p$. Per $p=2$ l’esponente è zero: l’unica unità è $[1]_2$, e la sua potenza zero è proprio $[1]_2$.

Nell’esempio modulo $100$, sapere già che $7^4\equiv1$ permette di usare $7^3=343\equiv43$ come inverso: infatti $7\cdot43=301\equiv1\pmod{100}$. L’esponente $\varphi(n)-1$ funziona sempre sotto le ipotesi, ma un ordine più piccolo può abbreviare il lavoro.

## Determinare l’ordine: quali divisori sopravvivono?

Da Lagrange segue

$$
\operatorname{ord}_n(a)\mid\varphi(n)
\qquad(\gcd(a,n)=1).
$$

Quindi si cercano i candidati fra i **divisori** di $\varphi(n)$, non fra tutti gli interi positivi. Se troviamo un divisore $d$ con $a^d\equiv1$, l’ordine divide già $d$. Per concludere che è esattamente $d$, escludiamo i divisori propri di $d$.

Per $7$ modulo $100$, i candidati iniziali sono

$$
1,2,4,5,8,10,20,40.
$$

Il calcolo $7^4\equiv1$ riduce tutto a $1,2,4$. Poiché $7^2\equiv49\not\equiv1$, l’ordine non divide $2$, quindi non può essere né $1$ né $2$. Resta

$$
\boxed{\operatorname{ord}_{100}(7)=4.}
$$

Un criterio utile rende breve anche l’esclusione: sapendo $a^d\equiv1$, basta verificare $a^{d/\ell}\not\equiv1$ per ogni primo $\ell\mid d$. Infatti, se l’ordine $r$ fosse un divisore proprio di $d$, il rapporto $d/r>1$ avrebbe un divisore primo $\ell$. Allora $r\mid d/\ell$, contro quella verifica.

> [!warning] Attenzione — Un esponente che funziona non è necessariamente l’ordine
> Da $a^{\varphi(n)}\equiv1$ segue che l’ordine **divide** $\varphi(n)$. Per $7$ modulo $100$ l’ordine è $4$, mentre il gruppo ha $40$ elementi. Avere un gruppo di $40$ elementi non significa che ogni elemento lo generi.

## Due limiti delle conclusioni

### Le unità modulo un prodotto di due primi dispari

Siano $p,q$ primi dispari distinti. Il gruppo $U(pq)$ ha $(p-1)(q-1)$ elementi. Poniamo

$$
L=\operatorname{mcm}(p-1,q-1).
$$

Per ogni $[a]_{pq}\in U(pq)$, Fermat dà $a^{p-1}\equiv1\pmod p$ e $a^{q-1}\equiv1\pmod q$. Poiché $L$ è multiplo di entrambi gli esponenti, $a^L\equiv1$ sia modulo $p$ sia modulo $q$. Dal teorema cinese segue $a^L\equiv1\pmod{pq}$, dunque

$$
\operatorname{ord}_{pq}(a)\mid L.
$$

Ma $p-1$ e $q-1$ sono entrambi pari, quindi

$$
L=\frac{(p-1)(q-1)}{\gcd(p-1,q-1)}
\le\frac{\varphi(pq)}2<\varphi(pq).
$$

Nessun elemento ha ordine pari alla cardinalità del gruppo: **$U(pq)$ non è ciclico**. È una conclusione per questi moduli, non una classificazione generale di tutti i gruppi $U(n)$.

### Fermat non certifica la primalità

Se un intero $n>1$ è primo, ogni base $a$ coprima con $n$ soddisfa $a^{n-1}\equiv1\pmod n$. Il contrario per una singola base è falso. Infatti

$$
341=11\cdot31,\qquad 2^{10}=1024=3\cdot341+1.
$$

Quindi $2^{340}=(2^{10})^{34}\equiv1\pmod{341}$, benché $341$ sia composto. Abbiamo controllato la base $2$; non abbiamo affermato nulla su tutte le altre basi. Un fallimento della congruenza, per una base coprima, esclude la primalità; un successo da solo non la dimostra.

## Fonti

L’esposizione riprende [[Notes/Aritmetica/Lectures/2026-11-01 - Gruppi ciclici, ordini e sottogruppi modulari|la nota del 1° novembre]] e i passaggi pertinenti della [[_transcripts/Aritmetica/2026-11-01 - Gruppi ciclici, ordini e sottogruppi modulari|trascrizione]], in particolare ordini, Eulero, l’esempio di $7$ modulo $100$ e il limite alla ciclicità per prodotti di primi dispari. Per il passaggio del teorema cinese alle unità: [[Notes/Aritmetica/Lectures/2026-10-22 - Omomorfismi tra anelli e teorema cinese|nota del 22 ottobre]] e [[_transcripts/Aritmetica/2026-10-22 - Omomorfismi tra anelli e teorema cinese|trascrizione]]. Per il contesto dei sottogruppi: [[Notes/Aritmetica/Lectures/2026-10-27 - Gruppi ciclici, sottogruppi e permutazioni|nota del 27 ottobre]] e [[_transcripts/Aritmetica/2026-10-27 - Gruppi ciclici, sottogruppi e permutazioni|trascrizione]]. Il precedente lemma di esistenza di una potenza congrua a uno compare nella [[Notes/Aritmetica/Lectures/2026-10-14 - Sviluppi decimali razionali e fattorizzazione dei denominatori|nota del 14 ottobre]] e nella [[_transcripts/Aritmetica/2026-10-14 - Sviluppi decimali razionali e fattorizzazione dei denominatori|trascrizione]].

La costruzione delle classi laterali e la dimostrazione completa di Lagrange sono un’integrazione didattica: il risultato è richiamato nelle fonti senza questo sviluppo. Sono inoltre ricostruite le prove della formula di $\varphi$, delle conseguenze di Fermat e dei criteri usati nei calcoli. Il controesempio $341$ e gli esercizi completano autonomamente l’esposizione; non sono citazioni del docente.

## Esercizi per verificare la comprensione

Gli esercizi 1–6 sono fondamentali; 7–8 collegano i risultati del capitolo ad altre idee.

1. Calcola $\varphi(72)$ e $\varphi(125)$ spiegando quali fattori primi intervengono. Perché non puoi usare $\varphi(8\cdot9)=\varphi(8)\varphi(9)$ senza controllare un’ipotesi?

> [!tip]- Riscontro 1
> $72=2^3\cdot3^2$ e $\gcd(8,9)=1$, quindi $\varphi(72)=4\cdot6=24$. Inoltre $\varphi(125)=125-25=100$. La moltiplicatività richiede moduli coprimi; qui l’ipotesi è soddisfatta.

2. Calcola il resto di $10^{2026}$ modulo $77$ usando Eulero e poi potenze brevi. Specifica perché il teorema è applicabile.

> [!tip]- Riscontro 2
> $\gcd(10,77)=1$ e $\varphi(77)=6\cdot10=60$. Dunque l’esponente può essere ridotto modulo $60$. Ma $10^2\equiv23$ e $10^3\equiv230\equiv-1\pmod{77}$, perciò $10^6\equiv1$. Siccome $2026=337\cdot6+4$, il resto è $10^4\equiv-10\equiv67\pmod{77}$.

3. Trova l’inverso di $[3]_{40}$ usando un esponente garantito da Eulero. Controlla il risultato con una moltiplicazione.

> [!tip]- Riscontro 3
> $\varphi(40)=16$, quindi l’inverso è $[3^{15}]_{40}$. Poiché $3^4=81\equiv1$, si ha $3^{15}\equiv3^3=27\pmod{40}$. Il controllo è $3\cdot27=81\equiv1\pmod{40}$.

4. Determina $\operatorname{ord}_7(3)$ considerando i divisori di $\varphi(7)$ ed escludendo quelli propri.

> [!tip]- Riscontro 4
> Fermat dà $3^6\equiv1\pmod7$, quindi l’ordine divide $6$. I divisori sono $1,2,3,6$. Siccome $3^2\equiv2\ne1$ e $3^3\equiv6\ne1$, escludiamo $2,3$ e anche $1$. L’ordine è $6$.

5. Nel gruppo additivo $G=\mathbb Z/15\mathbb Z$ considera $H=\langle[5]_{15}\rangle$. Scrivi tutte le classi laterali distinte, calcola $[G:H]$ e verifica numericamente Lagrange.

> [!tip]- Riscontro 5
> $H=\{[0]_{15},[5]_{15},[10]_{15}\}$. Le cinque classi sono $[r]_{15}+H=\{[r]_{15},[r+5]_{15},[r+10]_{15}\}$ per $r=0,1,2,3,4$. Sono disgiunte perché hanno resti diversi modulo $5$, e ricoprono le quindici classi. Quindi $[G:H]=5$ e $15=5\cdot3$.

6. Diagnostica entrambe le conclusioni: «$\varphi(15)=8$, quindi $[2]_{15}$ ha ordine $8$ e $[3]_{15}^{\,8}=[1]_{15}$». Correggile con calcoli espliciti.

> [!tip]- Riscontro 6
> Per $[2]_{15}$ Eulero dice che l’ordine divide $8$. In realtà $2^4=16\equiv1$ e $2^2\equiv4\ne1$, quindi l’ordine è $4$. Per $[3]_{15}$ manca la coprimalità: non è un’unità. Infatti $3^4\equiv6$ e $3^8\equiv36\equiv6\not\equiv1\pmod{15}$.

7. Sia $G$ un gruppo con un numero primo $p$ di elementi. Dimostra che ogni $g\ne e$ genera tutto $G$. Devi assumere che $G$ sia commutativo?

> [!tip]- Riscontro 7
> Lagrange dà $\operatorname{ord}(g)\mid p$, dunque l’ordine è $1$ oppure $p$. Un elemento ha ordine $1$ soltanto se è $e$, quindi per $g\ne e$ l’ordine è $p$. Il sottogruppo $\langle g\rangle$ ha allora tanti elementi quanti $G$ e coincide con $G$. Non serve assumere commutatività; essa segue dalla ciclicità appena dimostrata.

8. Mostra che ogni elemento di $U(65)$ ha ordine divisore di $12$, mentre $|U(65)|=48$. Determina poi $\operatorname{ord}_{65}(2)$ e spiega perché $[2]_{65}$ non genera tutto $U(65)$.

> [!tip]- Riscontro 8
> $65=5\cdot13$, quindi $\varphi(65)=4\cdot12=48$. Fermat nelle due componenti del teorema cinese dà $a^{12}\equiv1$ modulo $65$ per ogni unità, perché $12=\operatorname{mcm}(4,12)$. Per $2$, $2^6=64\equiv-1$ e $2^4=16\not\equiv1\pmod{65}$. Questi due controlli escludono tutti i divisori propri di $12$: ogni divisore proprio divide $6$ oppure $4$. Quindi $\operatorname{ord}_{65}(2)=12$. Il sottogruppo generato contiene soltanto $12$ delle $48$ unità.

Il capitolo è acquisito quando sai ricostruire il conteggio delle classi laterali e trasformarlo in un vincolo sugli esponenti. Nei calcoli, devi saper distinguere una potenza che vale uno dall’ordine esatto e controllare la coprimalità prima di applicare Eulero.

---

[[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|← 16 · Gruppi ciclici e ordine]] · [[Books/Aritmetica-I/00 - Indice e piano di studio|Indice]] · [[Books/Aritmetica-I/18 - Congruenze esponenziali|18 · Congruenze esponenziali →]]
