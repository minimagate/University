---
type: lecture-note
course: Aritmetica
date: 2026-11-10
title: Ordine moltiplicativo e congruenze esponenziali
source_transcript: _transcripts/Aritmetica/2026-11-10 - Ordine moltiplicativo e
  congruenze esponenziali.md
source_hash: sha256:7d0c932f2ca19b88227456b8f1a66681a9007ae879d82cc52733606584c903df
teaching_model: anthropic/claude-opus-5.5
taught_at: 2026-11-12T10:47:06.995Z
---

# Ordine moltiplicativo e congruenze esponenziali

> [!note] Fonte
> La registrazione di questa esercitazione era molto frammentaria. La nota è stata completata con gli appunti del corso (Del Corso, Bresciani, *Appunti personali del corso di Aritmetica 26/27*, Lez. 21 del 10/11/2026, pp. 149–151). Da lì vengono i testi degli esercizi e le soluzioni.

## Idea generale: dalla congruenza esponenziale alla congruenza lineare

La strategia illustrata a lezione per risolvere una congruenza esponenziale modulo un primo $p$ si articola in tre passi:

1. Scegliere una base $g$ ed esprimere tutti i termini della congruenza come potenze di $g$ modulo $p$.
2. Usare l'ordine di $g$ per confrontare gli esponenti.
3. Ottenere così una congruenza lineare classica negli esponenti, risolvibile con i metodi già noti, eventualmente spezzandola in un sistema.

Il fatto chiave è il seguente. Sia $d = \operatorname{ord}_m(g)$, l'ordine moltiplicativo di $g$ modulo $m$, con $\gcd(g,m)=1$. Allora

$$
g^{s} \equiv g^{t} \pmod m \iff d \mid s-t \iff s \equiv t \pmod d .
$$

L'equivalenza vale perché $g^s \equiv g^t$ equivale a $g^{s-t}\equiv 1 \pmod m$, e una potenza di $g$ è congrua a $1$ se e solo se l'ordine divide l'esponente.

A lezione questa equivalenza è stata espressa dicendo che «l'ordine di $7$ modulo $11$ divide» la differenza degli esponenti, una quantità trascritta come «$4x$ meno $a$».

## Esercizio 1: un sistema con una congruenza esponenziale

**Testo.** Determinare per quali $a$ ha soluzione il sistema

$$
\begin{cases}
3^x\equiv 7^a \pmod{11}\\
(a+3)\,x\equiv 2 \pmod 5
\end{cases}
$$

e trovarne le soluzioni.

### Scrivere $3$ come potenza di $7$

Il motivo per cui interessa la base $7$ è che permette di scrivere $3$ come potenza di $7$ modulo $11$:

$$
7^4 \equiv 3 \pmod{11}.
$$

Verifica: $7^2 = 49 \equiv 5 \pmod{11}$, quindi $7^4 \equiv 5^2 = 25 \equiv 3 \pmod{11}$.

Sostituendo $3=7^4$, la prima congruenza diventa

$$
7^{4x}\equiv 7^{a}\pmod{11}\iff 7^{4x-a}\equiv 1\pmod{11}\iff \operatorname{ord}_{11}(7)\mid 4x-a .
$$

È la quantità «$4x$ meno $a$» citata a lezione.

### Calcolo dell'ordine di $7$ modulo $11$

Per il piccolo teorema di Fermat, poiché $11$ è primo e $11 \nmid 7$, si ha

$$
7^{10} \equiv 1 \pmod{11}.
$$

Quindi $\operatorname{ord}_{11}(7)$ divide $10 = \varphi(11)$. I candidati sono i divisori di $10$:

$$
\operatorname{ord}_{11}(7) \in \{1,\,2,\,5,\,10\}.
$$

Si escludono i primi tre controllando direttamente:

$$
\begin{aligned}
7^1 &\equiv 7 \not\equiv 1 \pmod{11},\\
7^2 &= 49 \equiv 5 \not\equiv 1 \pmod{11},\\
7^5 &= 7^4\cdot 7 \equiv 3\cdot 7 = 21 \equiv 10 \equiv -1 \not\equiv 1 \pmod{11}.
\end{aligned}
$$

Dunque necessariamente

$$
\operatorname{ord}_{11}(7) = 10 .
$$

In altre parole, $7$ è un generatore (radice primitiva) modulo $11$.

> [!warning] Errore da evitare
> Il professore ha corretto uno studente: non basta affermare che l'ordine è $10$. Bisogna giustificarlo dicendo che l'ordine divide $10$ e che **non** può essere $1$, $2$ o $5$, perché le corrispondenti potenze non danno $1$.

Per completezza, ecco la tabella delle potenze di $7$ modulo $11$. È un calcolo di verifica, coerente con i valori citati a lezione.

| $k$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|
| $7^k \bmod 11$ | 7 | 5 | 2 | 3 | 10 | 4 | 6 | 9 | 8 | 1 |

### Trasformazione in congruenza lineare

Poiché l'ordine è $10$, la prima congruenza diventa

$$
4x\equiv a\pmod{10}.
$$

Il commento del professore: «abbiamo così trasformato la nostra congruenza esponenziale in una bella congruenza classica».

### Riduzione a un sistema

Per il teorema cinese del resto ($10=2\cdot5$), la congruenza modulo $10$ si spezza in due. Il sistema diventa

$$
\begin{cases}
4x\equiv a \pmod 5\\
4x\equiv a\equiv 0 \pmod 2\\
(a+3)\,x\equiv 2 \pmod 5
\end{cases}
$$

Modulo $2$ si ha $4x\equiv0$ per ogni $x$, quindi la seconda riga impone solo che $a$ sia **pari**, senza condizioni su $x$.

Si sostituisce $a\equiv4x$ nella terza congruenza:

$$
(4x+3)\,x\equiv 2 \pmod 5\iff 4x^2+3x-2\equiv0\iff x^2+2x+2\equiv 0\pmod 5,
$$

dove l'ultimo passaggio moltiplica per $4^{-1}\equiv4$ (infatti $16\equiv1$, $12\equiv2$, $-8\equiv2$).

### La congruenza quadratica

Completando il quadrato:

$$
x^2+2x+2=(x+1)^2+1\equiv0\iff (x+1)^2\equiv-1\equiv 4\pmod 5 .
$$

Quindi $x+1$ è una radice quadrata di $-1$ modulo $5$. Provando i quadrati ($1^2=1$, $2^2=4$, $3^2=9\equiv4$, $4^2=16\equiv1$) si trova $x+1\equiv2$ oppure $3$, cioè

$$
x\equiv 1 \ \text{oppure}\ x\equiv 2\pmod 5 .
$$

È il calcolo con «$2$ al quadrato», «$3$ al quadrato è $9$» che si sentiva nella registrazione. In alternativa, $x^2+2x+2\equiv x^2-3x+2=(x-1)(x-2)\pmod5$ dà subito le due radici.

> [!warning] Svista negli appunti
> Negli appunti si legge «$(x+1)\equiv-1$»: va letto $(x+1)^2\equiv-1\pmod5$.

### Soluzioni

Da $a\equiv4x\pmod5$ e $a$ pari:

| $x \pmod 5$ | $a \pmod 5$ | $a \pmod{10}$ |
|---|---|---|
| $1$ | $4$ | $4$ |
| $2$ | $8\equiv3$ | $8$ |

Il sistema ha soluzione **se e solo se $a\equiv4$ oppure $a\equiv8\pmod{10}$**. Le soluzioni sono $x\equiv1\pmod5$ se $a\equiv4$, e $x\equiv2\pmod5$ se $a\equiv8$.

**Verifica.** Con $x=1$, $a=4$: $3^1=3\equiv7^4\pmod{11}$ e $(4+3)\cdot1=7\equiv2\pmod5$. Con $x=2$, $a=8$: $3^2=9$ e $7^8=(7^4)^2\equiv9\pmod{11}$; $(8+3)\cdot2=22\equiv2\pmod5$.

## Esercizio 2: $\varphi(n)=\frac25 n$

**Testo.** Trovare gli $n>0$ tali che $\varphi(n)=\frac25 n$.

**Soluzione (dagli appunti).**

1. $\frac25n$ deve essere intero, quindi $5\mid n$. Si scrive $n=5^\alpha n'$ con $\alpha\ge1$ e $\gcd(n',5)=1$.
2. Per la moltiplicatività, $\varphi(n)=\varphi(5^\alpha)\varphi(n')=4\cdot5^{\alpha-1}\varphi(n')$. Imponendo $\varphi(n)=\frac25\cdot5^\alpha n'=2\cdot5^{\alpha-1}n'$ e semplificando:
   $$\varphi(n')=\tfrac12 n'.$$
3. Si ripete lo stesso ragionamento con $2$ al posto di $5$. $n'$ deve essere pari: $n'=2^\beta n''$ con $\beta\ge1$ e $n''$ dispari. Allora $\varphi(n')=2^{\beta-1}\varphi(n'')$ e $\frac12n'=2^{\beta-1}n''$, quindi
   $$\varphi(n'')=n''.$$
4. Per $m\ge2$ vale $\varphi(m)<m$, perché $m$ non è coprimo con sé stesso. Per $m=1$ invece $\varphi(1)=1$. Quindi $n''=1$.

**Risultato:** $n=2^\beta\cdot5^\alpha$ con $\alpha,\beta\ge1$. Per esempio $n=10$: $\varphi(10)=4=\frac25\cdot10$.

Sono il «$5^\alpha$», il «$2^\beta$» e il caso «$m=1$» che si sentivano nella registrazione.

> [!warning] Svista negli appunti
> Negli appunti si legge «$\frac25\cdot5^{-\alpha}n'$»: va letto $\frac25\cdot5^{\alpha}n'$.

## Esercizio 3: $\varphi(n)+d(n)$

Sia $d(n)$ il numero dei divisori positivi di $n$.

1. Dimostrare che $\varphi(n)+d(n)\le n+1$.
2. Caratterizzare gli $n$ tali che $\varphi(n)+d(n)=n$.

### Punto 1 (dagli appunti)

Siano

$$
E=\{1\le a\le n:\gcd(a,n)=1\},\qquad D=\{1\le a\le n: a\mid n\},
$$

con $|E|=\varphi(n)$ e $|D|=d(n)$. Un numero che è sia coprimo con $n$ sia divisore di $n$ è necessariamente $1$, quindi $E\cap D=\{1\}$. Per inclusione-esclusione:

$$
n\ \ge\ |E\cup D|=|E|+|D|-|E\cap D|=\varphi(n)+d(n)-1 .
$$

### Punto 2

Dagli appunti: $\varphi(n)+d(n)=n$ equivale a $|E\cup D|=n-1$. Cioè esiste un **unico** $a\in\{1,\dots,n\}$ con $\gcd(a,n)\ne1$ e $a\nmid n$. Per esempio, per $n=6$ è $a=4$.

L'idea indicata è cercare numeri "grandi" che non siano coprimi con $n$. Sia $p$ il più piccolo primo che divide $n$. I numeri $n-p$ e $n-2p$ non sono coprimi con $n$ (sono multipli di $p$) e, se abbastanza grandi, non dividono $n$. Gli appunti si fermano qui.

> [!tip] Completamento *(aggiunto)*
> - $n=1$ e $n$ primo non vanno bene: lì $\varphi(n)+d(n)=n+1$.
> - Sia allora $n$ composto, $p$ il suo più piccolo primo e $n=pm$, con $m\ge p\ge2$. I multipli di $p$ in $\{1,\dots,n\}$ sono $kp$ con $1\le k\le m$: nessuno è coprimo con $n$, e $kp\mid pm\iff k\mid m$. Quindi tra loro ci sono esattamente $m-d(m)$ numeri "cattivi".
> - Serve allora $m-d(m)\le1$. I divisori di $m$ diversi da $m$ sono al massimo $m/2$, quindi $d(m)\le \frac m2+1$, da cui $m-d(m)\ge\frac m2-1\ge2$ per $m\ge6$. Controllando a mano $m=2,\dots,5$, si ha $m-d(m)=0,1,1,3$. Restano $m\in\{2,3,4\}$, con $p\le m$ e $p$ il più piccolo primo di $pm$:
>   - $m=2$: $n=4$, dove $\varphi+d=2+3=5=n+1$. Non va bene.
>   - $m=3$: $n=6$ ($2+4=6$) e $n=9$ ($6+3=9$). Vanno bene.
>   - $m=4$: $p=2$, $n=8$ ($4+4=8$). Va bene. ($p=3$ darebbe $n=12$, il cui primo più piccolo è $2$.)
>
> **Risultato:** $\varphi(n)+d(n)=n\iff n\in\{6,8,9\}$. Nel punto 1, invece, l'uguaglianza $\varphi(n)+d(n)=n+1$ vale esattamente per $n=1$, per $n$ primo e per $n=4$; gli appunti dicevano «probabilmente ce ne sono altri». Entrambi i risultati sono verificati al computer per $n<3000$.

> [!note]
> La registrazione nomina anche il modulo $9$ e il modulo $3$, in un contesto che né l'audio né gli appunti permettono di ricostruire.
