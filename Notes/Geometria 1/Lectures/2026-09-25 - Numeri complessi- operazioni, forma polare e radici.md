---
type: lecture-note
course: Geometria 1
date: 2026-09-25
title: Numeri complessi- operazioni, forma polare e radici
source_transcript: _transcripts/Geometria 1/2026-09-25 - Numeri complessi-
  operazioni, forma polare e radici.md
source_hash: sha256:5a8f706bd903b1fde9fbd3d3ae6bd71d9611dddfc9d36122fc7f52eb951c7757
teaching_model: openai/gpt-5.6-luna
taught_at: 2026-09-25T18:16:05.917Z
---

# Numeri complessi: operazioni, forma polare e radici

## 1. Costruzione dell’insieme dei numeri complessi

I numeri complessi costituiscono un ulteriore esempio di campo, oltre ai numeri razionali, reali e ai campi finiti già considerati.

Si introduce il simbolo $i$, detto **unità immaginaria**, con la proprietà

$$
i^2=-1.
$$

Un numero complesso è scritto nella forma

$$
z=a+ib,
$$

dove $a,b\in\mathbb{R}$.

L’insieme dei numeri complessi è quindi

$$
\mathbb{C}
=
\{a+ib\mid a,b\in\mathbb{R}\}.
$$

Ogni numero complesso è determinato univocamente dalla coppia $(a,b)\in\mathbb{R}^2$. Per questo motivo si può pensare a $\mathbb{C}$ come all’insieme delle coppie ordinate di numeri reali:

$$
a+ib \longleftrightarrow (a,b).
$$

Nella scrittura $z=a+ib$:

- $a$ è la **parte reale** di $z$ e si indica con $\operatorname{Re}(z)$;
- $b$ è la **parte immaginaria** di $z$ e si indica con $\operatorname{Im}(z)$.

Quindi:

$$
\operatorname{Re}(z)=a,
\qquad
\operatorname{Im}(z)=b.
$$

La scrittura $a+ib$ è una forma di rappresentazione del numero complesso. Il simbolo $+$ che compare all’interno della scrittura non deve essere confuso con l’operazione di somma tra numeri complessi: in quel contesto serve semplicemente a separare la parte reale dalla parte immaginaria.

---

## 2. Somma di numeri complessi

La somma è definita **componente per componente**. Se

$$
z=a+ib,
\qquad
w=c+id,
$$

allora si pone

$$
z+w
:=
(a+c)+i(b+d).
$$

Qui $a+c$ e $b+d$ sono somme tra numeri reali.

In termini di coppie:

$$
(a,b)+(c,d)=(a+c,b+d).
$$

La definizione è dunque ottenuta usando le operazioni già note sui numeri reali, applicate separatamente alla parte reale e alla parte immaginaria.

### Esempio

$$
(2+i)+(3-2i)
=
(2+3)+i(1-2)
=
5-i.
$$

Il simbolo $:=$ o, equivalentemente, il simbolo $:= $ con due punti prima dell’uguale, indica che si sta dando una **definizione**. Non si tratta soltanto di una trasformazione algebrica di un’espressione già nota: si sta stabilendo il significato dell’operazione a sinistra.

---

## 3. Prodotto di numeri complessi

Anche il prodotto prende due numeri complessi e restituisce un numero complesso. Se

$$
z=a+ib,
\qquad
w=c+id,
$$

si definisce il prodotto sviluppando formalmente le parentesi e usando la relazione $i^2=-1$:

$$
\begin{aligned}
zw
&=(a+ib)(c+id)\\
&=ac+aid+ibc+i^2bd\\
&=ac+iad+ibc-bd\\
&=(ac-bd)+i(ad+bc).
\end{aligned}
$$

Quindi la definizione esplicita del prodotto è

$$
(a+ib)(c+id)
:=
(ac-bd)+i(ad+bc).
$$

I prodotti $ac$, $bd$, $ad$ e $bc$ sono prodotti di numeri reali.

La presenza del termine $-bd$ nella parte reale deriva precisamente dalla sostituzione

$$
i^2=-1.
$$

### Esempio

Calcoliamo

$$
(2+i)(3-2i).
$$

Applicando la formula:

$$
\begin{aligned}
(2+i)(3-2i)
&=(2\cdot 3-1\cdot(-2))
+i\bigl(2\cdot(-2)+1\cdot 3\bigr)\\
&=(6+2)+i(-4+3)\\
&=8-i.
\end{aligned}
$$

È importante distinguere:

- il simbolo $+$ nella scrittura $a+ib$;
- l’operazione di somma tra numeri complessi;
- le somme e i prodotti tra numeri reali che compaiono nella formula del prodotto complesso.

---

## 4. Il significato di $i^2=-1$

Dalla definizione del prodotto, ponendo $z=w=i$, oppure scrivendo $i=0+i\cdot 1$, si ottiene

$$
i^2=-1.
$$

Infatti:

$$
(0+i)(0+i)
=
(0\cdot 0-1\cdot 1)+i(0\cdot 1+1\cdot 0)
=
-1+0i
=
-1.
$$

Analogamente,

$$
i(-1)=-i.
$$

Queste non sono proprietà aggiunte informalmente: sono conseguenze delle definizioni date per somma e prodotto.

---

## 5. Interpretazione geometrica: il piano complesso

Il numero complesso

$$
z=a+ib
$$

può essere rappresentato nel piano cartesiano mediante il punto di coordinate $(a,b)$.

- L’asse orizzontale rappresenta i numeri reali.
- L’asse verticale rappresenta i numeri della forma $ib$, con $b\in\mathbb{R}$.
- Il numero complesso $a+ib$ corrisponde al vettore che parte dall’origine e arriva al punto $(a,b)$.

In questo senso:

$$
\mathbb{C}\simeq\mathbb{R}^2.
$$

### I numeri reali dentro $\mathbb{C}$

Un numero reale $a$ può essere identificato con il numero complesso

$$
a+i\cdot 0.
$$

Per questo motivo si considera $\mathbb{R}$ come sottoinsieme di $\mathbb{C}$:

$$
\mathbb{R}\subseteq\mathbb{C}.
$$

Quando si sommano o si moltiplicano due numeri complessi con parte immaginaria nulla, le definizioni appena date coincidono con le usuali operazioni sui numeri reali. Per esempio:

$$
(a+i0)+(c+i0)=(a+c)+i0,
$$

e

$$
(a+i0)(c+i0)=ac+i0.
$$

Quindi $\mathbb{R}$ è un sottoinsieme di $\mathbb{C}$ chiuso rispetto alle stesse operazioni di somma e prodotto.

### Somma come parallelogramma

Se $z$ e $w$ sono rappresentati come vettori nel piano, la somma $z+w$ si ottiene con la regola del parallelogramma. Se

$$
z=a+ib,
\qquad
w=c+id,
$$

allora

$$
z+w=(a+c)+i(b+d),
$$

che corrisponde alla somma delle coordinate dei due vettori.

---

## 6. Verifica delle proprietà di campo

La lezione introduce le operazioni, ma inizialmente non dimostra ancora che $\mathbb{C}$ sia un campo. Per ottenere questo risultato bisogna verificare le proprietà richieste dagli assiomi di campo.

Molte verifiche sono dirette e si riducono alle proprietà già note dei numeri reali.

### Elemento neutro della somma

L’elemento neutro della somma è

$$
0+0i.
$$

Infatti:

$$
(a+ib)+(0+0i)=a+ib.
$$

### Opposto additivo

L’opposto di

$$
z=a+ib
$$

è

$$
-z=-a-ib.
$$

Infatti:

$$
(a+ib)+(-a-ib)=0+0i.
$$

### Associatività della somma

Per $z,w,u\in\mathbb{C}$ si verifica che

$$
(z+w)+u=z+(w+u).
$$

La verifica si fa scrivendo i tre numeri in forma cartesiana e usando l’associatività della somma in $\mathbb{R}$, separatamente per parte reale e parte immaginaria.

### Commutatività della somma

Analogamente:

$$
z+w=w+z.
$$

Questa proprietà segue dalla commutatività della somma tra numeri reali.

Le altre proprietà del campo, inclusa la distributività e l’esistenza dell’inverso moltiplicativo per ogni numero complesso non nullo, devono essere verificate a partire dalle definizioni. Non bisogna assumere automaticamente che siano vere soltanto perché si è dichiarato che $\mathbb{C}$ è un campo.

> [!warning]
> Le proprietà delle operazioni sui numeri complessi vanno dedotte dalle definizioni. La verifica può essere meccanica e talvolta noiosa, ma è necessaria per distinguere una proprietà effettivamente dimostrata da una semplice affermazione.

---

## 7. Modulo o norma di un numero complesso

Sia

$$
z=a+ib.
$$

Il **modulo** o **norma** di $z$ è definito da

$$
|z|:=\sqrt{a^2+b^2}.
$$

Il modulo è un numero reale non negativo:

$$
|z|\in\mathbb{R}_{\geq 0}.
$$

Geometricamente, se $z$ è rappresentato dal punto $(a,b)$, allora $|z|$ è la distanza di quel punto dall’origine.

La formula deriva dal teorema di Pitagora: il segmento che congiunge l’origine al punto $(a,b)$ è l’ipotenusa di un triangolo rettangolo con cateti di lunghezza $|a|$ e $|b|$.

La presenza di $i$ non compare nella formula del modulo perché il modulo è definito direttamente a partire dalle coordinate reali $a$ e $b$.

### Esempi

Se $z=3$, allora formalmente $z=3+0i$ e

$$
|z|=\sqrt{3^2+0^2}=3.
$$

Se $z=-2$, allora

$$
|-2|=\sqrt{(-2)^2+0^2}=2.
$$

Il modulo di un numero reale coincide quindi con il suo valore assoluto.

---

## 8. Quando il modulo è nullo

Poiché $a^2\geq 0$ e $b^2\geq 0$, si ha

$$
|z|=\sqrt{a^2+b^2}=0
$$

se e solo se

$$
a^2+b^2=0.
$$

Una somma di due quadrati reali è nulla se e solo se entrambi i quadrati sono nulli. Pertanto:

$$
|z|=0
\iff
a=0\ \text{e}\ b=0
\iff
z=0.
$$

Quindi l’unico numero complesso di modulo zero è il numero complesso nullo.

---

## 9. Coniugio complesso

Il **coniugato** del numero complesso

$$
z=a+ib
$$

è definito come

$$
\overline{z}:=a-ib.
$$

Il coniugio mantiene invariata la parte reale e cambia segno alla parte immaginaria:

$$
\operatorname{Re}(\overline z)=\operatorname{Re}(z),
$$

$$
\operatorname{Im}(\overline z)=-\operatorname{Im}(z).
$$

### Interpretazione geometrica

Nel piano complesso, il coniugio corrisponde alla riflessione rispetto all’asse reale.

Il punto $(a,b)$ viene mandato nel punto $(a,-b)$. I punti dell’asse reale rimangono fissi.

### Numeri reali come punti fissi del coniugio

Si ha

$$
z=\overline z
$$

se e solo se

$$
a+ib=a-ib.
$$

Questo accade esattamente quando

$$
b=0.
$$

Pertanto:

$$
z=\overline z
\iff
\operatorname{Im}(z)=0
\iff
z\in\mathbb{R}.
$$

Il coniugio, quindi, è una trasformazione interna a $\mathbb{C}$ che permette di riconoscere i numeri reali contenuti nei complessi.

---

## 10. Proprietà del coniugio

Per $z,w\in\mathbb{C}$ valgono le proprietà:

$$
\overline{z+w}=\overline z+\overline w,
$$

$$
\overline{zw}=\overline z\,\overline w,
$$

e

$$
\overline{\overline z}=z.
$$

L’ultima uguaglianza è evidente perché il cambiamento di segno della parte immaginaria viene applicato due volte.

### Verifica della proprietà rispetto alla somma

Siano

$$
z=a+ib,
\qquad
w=c+id.
$$

Allora:

$$
z+w=(a+c)+i(b+d),
$$

quindi

$$
\overline{z+w}
=
(a+c)-i(b+d).
$$

D’altra parte:

$$
\overline z+\overline w
=
(a-ib)+(c-id)
=
(a+c)-i(b+d).
$$

I due risultati coincidono:

$$
\overline{z+w}=\overline z+\overline w.
$$

La verifica della proprietà rispetto al prodotto si esegue nello stesso modo, usando la formula del prodotto complesso.

---

## 11. Relazione tra modulo e coniugio

Consideriamo il prodotto tra $z$ e il suo coniugato:

$$
z\overline z
=
(a+ib)(a-ib).
$$

Sviluppando:

$$
\begin{aligned}
z\overline z
&=a^2-abi+abi-i^2b^2\\
&=a^2+b^2.
\end{aligned}
$$

I termini misti si cancellano e, poiché $i^2=-1$, si ottiene

$$
z\overline z=a^2+b^2.
$$

Dalla definizione del modulo,

$$
|z|^2=a^2+b^2.
$$

Quindi:

$$
\boxed{z\overline z=|z|^2}.
$$

Il prodotto $z\overline z$ è sempre un numero reale non negativo.

Questa relazione sarà fondamentale per costruire l’inverso moltiplicativo di un numero complesso non nullo.

---

## 12. Inverso moltiplicativo

Sia $z\neq 0$. Per dimostrare che $\mathbb{C}$ è un campo bisogna trovare un numero complesso $z^{-1}$ tale che

$$
zz^{-1}=1.
$$

Poiché

$$
z\overline z=|z|^2,
$$

e $z\neq 0$ implica $|z|\neq 0$, il numero reale $|z|^2$ è diverso da zero e possiede l’inverso reale

$$
\frac{1}{|z|^2}.
$$

Allora:

$$
z\left(\frac{\overline z}{|z|^2}\right)
=
\frac{z\overline z}{|z|^2}
=
\frac{|z|^2}{|z|^2}
=
1.
$$

Pertanto:

$$
\boxed{
z^{-1}=\frac{\overline z}{|z|^2}
}.
$$

Se $z=a+ib$, la formula diventa

$$
\frac{1}{a+ib}
=
\frac{a-ib}{a^2+b^2},
\qquad
a+ib\neq 0.
$$

Il coniugio permette quindi di eliminare la parte immaginaria dal denominatore.

### Unicità dell’inverso

L’inverso moltiplicativo, quando esiste, è unico. Questo non dipende dai numeri complessi in particolare, ma vale in generale in ogni campo.

Supponiamo che $B$ e $B'$ siano due inversi dello stesso elemento $A$. Allora:

$$
AB=1,
\qquad
AB'=1.
$$

Usando associatività, commutatività e l’elemento neutro:

$$
\begin{aligned}
B
&=B\cdot 1\\
&=B(AB')\\
&=(BA)B'\\
&=1\cdot B'\\
&=B'.
\end{aligned}
$$

Quindi $B=B'$.

---

## 13. Esempio di divisione tra numeri complessi

Calcoliamo

$$
\frac{3-2i}{1-i}.
$$

Si moltiplica numeratore e denominatore per il coniugato del denominatore:

$$
\frac{3-2i}{1-i}
=
(3-2i)\frac{1+i}{|1-i|^2}.
$$

Il modulo al quadrato del denominatore è

$$
|1-i|^2=1^2+(-1)^2=2.
$$

Quindi:

$$
\begin{aligned}
\frac{3-2i}{1-i}
&=\frac{(3-2i)(1+i)}{2}\\
&=\frac{3+3i-2i-2i^2}{2}\\
&=\frac{3+i+2}{2}\\
&=\frac{5+i}{2}.
\end{aligned}
$$

Dunque:

$$
\boxed{
\frac{3-2i}{1-i}
=
\frac52+\frac12 i
}.
$$

---

# 14. Coordinate polari e forma trigonometrica

La rappresentazione cartesiana

$$
z=a+ib
$$

descrive un numero complesso tramite le coordinate del punto $(a,b)$.

Si può usare anche un altro sistema di coordinate: le **coordinate polari**. In questo caso un numero complesso viene descritto mediante:

1. la distanza $\rho$ dall’origine;
2. un angolo $\theta$ che indica la direzione del vettore.

La distanza è il modulo:

$$
\rho=|z|=\sqrt{a^2+b^2}.
$$

L’angolo $\theta$ viene misurato a partire dalla semiretta reale positiva, in senso antiorario.

Se $z\neq 0$, l’angolo è detto **argomento** di $z$ e si scrive

$$
\arg(z)=\theta.
$$

Per $z=0$ l’argomento non è definito: il vettore nullo non ha una direzione determinata.

## 14.1 Periodicità dell’argomento

Gli angoli

$$
\theta,\qquad
\theta+2\pi,\qquad
\theta-2\pi,\qquad
\theta+2k\pi
$$

rappresentano tutti la stessa direzione, dove $k\in\mathbb{Z}$.

Perciò l’argomento non è un singolo numero reale determinato univocamente, ma è definito a meno di multipli interi di $2\pi$:

$$
\arg(z)=\theta+2k\pi,
\qquad
k\in\mathbb{Z}.
$$

Questo non crea problemi quando si usano seno e coseno, perché queste funzioni hanno periodo $2\pi$:

$$
\cos(\theta+2k\pi)=\cos\theta,
$$

$$
\sin(\theta+2k\pi)=\sin\theta.
$$

## 14.2 Passaggio da coordinate polari a cartesiane

Dal triangolo rettangolo associato al punto $(a,b)$ si ricava:

$$
a=\rho\cos\theta,
$$

$$
b=\rho\sin\theta.
$$

Quindi:

$$
\boxed{
z=\rho\cos\theta+i\rho\sin\theta
}
$$

oppure, raccogliendo $\rho$:

$$
\boxed{
z=\rho(\cos\theta+i\sin\theta)
}.
$$

Questa è la **forma trigonometrica** o **forma polare** del numero complesso.

## 14.3 Passaggio da coordinate cartesiane a polari

Dato $z=a+ib$, il modulo si calcola con

$$
\rho=\sqrt{a^2+b^2}.
$$

Per l’angolo, quando $a\neq 0$, si può usare la relazione

$$
\tan\theta=\frac{b}{a}.
$$

In prima approssimazione si può scrivere

$$
\theta=\arctan\left(\frac{b}{a}\right),
$$

ma questa formula deve essere corretta in base al quadrante, perché punti situati in quadranti diversi possono avere lo stesso rapporto $b/a$.

In particolare:

- se $a>0$, l’angolo può essere determinato direttamente tramite l’arco tangente, scegliendo il quadrante corretto;
- se $a<0$, occorre aggiungere o sottrarre $\pi$;
- se $a=0$ e $b>0$, allora $\theta=\frac{\pi}{2}$;
- se $a=0$ e $b<0$, allora $\theta=-\frac{\pi}{2}$ oppure $\frac{3\pi}{2}$;
- se $a=b=0$, l’argomento non è definito.

Il punto fondamentale è che la tangente determina la pendenza, ma non individua da sola il quadrante.

---

# 15. Prodotto in forma polare

La forma cartesiana rende immediata la somma, ma il prodotto appare meno trasparente. In forma polare, invece, il prodotto assume un significato geometrico molto semplice.

Siano

$$
z=\rho(\cos\theta+i\sin\theta),
$$

e

$$
w=\lambda(\cos\varphi+i\sin\varphi).
$$

Allora:

$$
\begin{aligned}
zw
&=
\rho\lambda
(\cos\theta+i\sin\theta)
(\cos\varphi+i\sin\varphi)\\
&=
\rho\lambda
\bigl[
\cos\theta\cos\varphi
-\sin\theta\sin\varphi\\
&\qquad\qquad
+i(\cos\theta\sin\varphi
+\sin\theta\cos\varphi)
\bigr].
\end{aligned}
$$

Usando le formule trigonometriche di addizione:

$$
\cos(\theta+\varphi)
=
\cos\theta\cos\varphi-\sin\theta\sin\varphi,
$$

$$
\sin(\theta+\varphi)
=
\sin\theta\cos\varphi+\cos\theta\sin\varphi,
$$

si ottiene

$$
\boxed{
zw
=
\rho\lambda
\left[
\cos(\theta+\varphi)
+i\sin(\theta+\varphi)
\right]
}.
$$

Di conseguenza:

$$
\boxed{|zw|=|z|\,|w|}
$$

e

$$
\boxed{\arg(zw)=\arg(z)+\arg(w)}
\quad\text{modulo }2\pi.
$$

### Interpretazione geometrica

Per moltiplicare due numeri complessi in forma polare:

- si moltiplicano i moduli;
- si sommano gli argomenti.

Quindi il prodotto corrisponde a:

1. una dilatazione o contrazione con fattore pari al prodotto dei moduli;
2. una rotazione di angolo pari alla somma degli angoli.

Questa interpretazione dà un significato geometrico al prodotto, che in coordinate cartesiane appariva come una formula più complessa.

---

# 16. Potenze di numeri complessi

Se

$$
z=\rho(\cos\theta+i\sin\theta),
$$

allora la potenza $n$-esima si ottiene moltiplicando $z$ per sé stesso $n$ volte.

A ogni prodotto:

- i moduli si moltiplicano;
- gli argomenti si sommano.

Pertanto:

$$
\boxed{
z^n
=
\rho^n
\left[
\cos(n\theta)+i\sin(n\theta)
\right]
}.
$$

Questa formula è la **formula di De Moivre**.

In termini geometrici, elevare un numero complesso alla potenza $n$-esima significa:

- elevare il modulo alla potenza $n$;
- moltiplicare l’argomento per $n$.

La forma polare rende quindi particolarmente semplici i calcoli delle potenze.

---

# 17. Radici $n$-esime di un numero complesso

Si consideri l’equazione

$$
z^n=w,
$$

dove $w$ è un numero complesso noto e si cerca $z$.

Supponiamo inizialmente che

$$
w\neq 0.
$$

Scriviamo $w$ in forma polare:

$$
w=R(\cos\theta+i\sin\theta),
$$

con $R=|w|>0$.

Cerchiamo $z$ nella forma

$$
z=\rho(\cos\varphi+i\sin\varphi).
$$

Dalla formula delle potenze:

$$
z^n
=
\rho^n
\left[
\cos(n\varphi)+i\sin(n\varphi)
\right].
$$

Per avere $z^n=w$ devono valere due condizioni.

## 17.1 Condizione sui moduli

Deve essere

$$
\rho^n=R.
$$

Poiché $R\geq 0$, nei reali esiste un’unica radice $n$-esima non negativa:

$$
\boxed{
\rho=\sqrt[n]{R}
}.
$$

Il modulo della radice è quindi univocamente determinato.

## 17.2 Condizione sugli argomenti

Gli argomenti di $w$ sono

$$
\theta+2k\pi,
\qquad
k\in\mathbb{Z}.
$$

Dunque deve essere

$$
n\varphi=\theta+2k\pi.
$$

Dividendo per $n$:

$$
\boxed{
\varphi_k
=
\frac{\theta+2k\pi}{n}
=
\frac{\theta}{n}+\frac{2k\pi}{n}
}.
$$

Le soluzioni sono quindi

$$
\boxed{
z_k
=
\sqrt[n]{R}
\left[
\cos\left(\frac{\theta+2k\pi}{n}\right)
+
i\sin\left(\frac{\theta+2k\pi}{n}\right)
\right]
}.
$$

Per ottenere tutte le soluzioni distinte è sufficiente prendere

$$
k=0,1,\ldots,n-1.
$$

Se si aumenta $k$ di $n$, infatti:

$$
\frac{\theta+2(k+n)\pi}{n}
=
\frac{\theta+2k\pi}{n}+2\pi,
$$

che rappresenta nuovamente la stessa direzione.

Pertanto, se $w\neq 0$, l’equazione $z^n=w$ ha esattamente $n$ soluzioni complesse distinte.

Geometricamente, le soluzioni sono disposte su una circonferenza di raggio $\sqrt[n]{R}$ e formano i vertici di un poligono regolare con $n$ lati, centrato nell’origine.

---

## 18. Caso particolare: $w=0$

Se

$$
z^n=0,
$$

allora necessariamente

$$
z=0.
$$

Quindi l’equazione ha una sola soluzione distinta:

$$
\boxed{z=0}.
$$

La formula delle radici non si applica nello stesso modo perché l’argomento del numero complesso nullo non è definito.

---

## 19. Esempio: soluzione di $z^3=-8$

Consideriamo

$$
z^3=-8.
$$

Nei numeri reali si vede immediatamente una soluzione:

$$
z=-2.
$$

Nei numeri complessi, però, ci sono in generale tre radici cubiche.

### Modulo

Il modulo del numero a destra è

$$
|-8|=8.
$$

Quindi il modulo di ogni radice è

$$
|z|=\sqrt[3]{8}=2.
$$

### Argomento

Il numero $-8$ si trova sull’asse reale negativo, quindi un suo argomento è

$$
\theta=\pi.
$$

Gli argomenti delle radici sono

$$
\varphi_k
=
\frac{\pi+2k\pi}{3},
\qquad
k=0,1,2.
$$

Si ottengono:

- per $k=0$:

$$
\varphi_0=\frac{\pi}{3};
$$

- per $k=1$:

$$
\varphi_1=\pi;
$$

- per $k=2$:

$$
\varphi_2=\frac{5\pi}{3}.
$$

Le tre radici sono quindi

$$
z_k=2(\cos\varphi_k+i\sin\varphi_k).
$$

Calcolandole:

### Prima radice

$$
z_0
=
2\left(\cos\frac{\pi}{3}+i\sin\frac{\pi}{3}\right)
=
2\left(\frac12+i\frac{\sqrt3}{2}\right)
=
1+i\sqrt3.
$$

### Seconda radice

$$
z_1
=
2(\cos\pi+i\sin\pi)
=
2(-1+0i)
=
-2.
$$

### Terza radice

$$
z_2
=
2\left(\cos\frac{5\pi}{3}+i\sin\frac{5\pi}{3}\right)
=
2\left(\frac12-i\frac{\sqrt3}{2}\right)
=
1-i\sqrt3.
$$

Pertanto:

$$
\boxed{
z\in\{-2,\ 1+i\sqrt3,\ 1-i\sqrt3\}
}.
$$

Le tre soluzioni sono i vertici di un triangolo equilatero inscritto nella circonferenza di raggio $2$ e centrato nell’origine.

---

## 20. Esercizi proposti

Sono stati indicati esercizi del tipo:

$$
z^3=1,
$$

e

$$
z^4=1.
$$

Per risolverli si applica la formula generale delle radici $n$-esime.

Per esempio, se

$$
z^n=1,
$$

si scrive

$$
1=\cos(2k\pi)+i\sin(2k\pi),
$$

e quindi le soluzioni sono

$$
z_k
=
\cos\left(\frac{2k\pi}{n}\right)
+
i\sin\left(\frac{2k\pi}{n}\right),
\qquad
k=0,\ldots,n-1.
$$

Esse sono i vertici di un poligono regolare inscritto nella circonferenza unitaria.

---

# 21. Teorema fondamentale dell’algebra

Il fatto che un numero complesso non nullo abbia esattamente $n$ radici $n$-esime è collegato alla struttura generale dei polinomi complessi.

Il **teorema fondamentale dell’algebra** afferma:

> Ogni polinomio non costante a coefficienti complessi possiede almeno una radice complessa.

In forma matematica, se

$$
P(z)\in\mathbb{C}[z]
$$

è un polinomio non costante, allora esiste $z_0\in\mathbb{C}$ tale che

$$
P(z_0)=0.
$$

Questo risultato non vale analogamente nei numeri reali. Ad esempio, il polinomio

$$
x^2+1
$$

non ha radici reali, perché

$$
x^2+1>0
\qquad
\text{per ogni }x\in\mathbb{R}.
$$

Nei numeri complessi, invece, ha le due radici

$$
x=i
\qquad\text{e}\qquad
x=-i.
$$

I numeri complessi costituiscono quindi un campo sufficientemente grande da garantire l’esistenza di radici per tutti i polinomi non costanti a coefficienti complessi.

## 21.1 Fattorizzazione dopo aver trovato una radice

Se $P(z)$ è un polinomio e $z_0$ è una sua radice, cioè

$$
P(z_0)=0,
$$

allora il polinomio $z-z_0$ divide $P(z)$. Esiste quindi un polinomio $Q(z)$ tale che

$$
P(z)=(z-z_0)Q(z).
$$

Se $P$ ha grado $n$, allora $Q$ ha grado $n-1$.

Ripetendo il procedimento si possono trovare tutte le radici e fattorizzare il polinomio in fattori lineari complessi:

$$
P(z)
=
a_n(z-z_1)(z-z_2)\cdots(z-z_n),
$$

contando le radici con la loro molteplicità.

Il teorema fondamentale dell’algebra non dice necessariamente che tutte le radici siano diverse: una stessa radice può comparire più volte nella fattorizzazione.