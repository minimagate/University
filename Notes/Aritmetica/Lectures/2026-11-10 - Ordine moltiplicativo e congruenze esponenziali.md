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

> [!warning] Stato della fonte
> La registrazione di questa lezione è in larghissima parte incomprensibile: molte frasi sono spezzate e prive di contesto, e mancano quasi del tutto le formule scritte alla lavagna. Queste note riportano con sicurezza solo i passaggi chiaramente ricostruibili, cioè il calcolo dell'ordine di $7$ modulo $11$ e l'idea di trasformare una congruenza esponenziale in una congruenza lineare. Gli altri frammenti sono raccolti in fondo, con l'indicazione esplicita della loro incertezza. Non sono stati inventati dati mancanti.

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

## Esempio: potenze di $7$ modulo $11$

### Scrivere $3$ come potenza di $7$

Il motivo per cui interessa la base $7$ è che permette di scrivere $3$ come potenza di $7$ modulo $11$:

$$
7^4 \equiv 3 \pmod{11}.
$$

Verifica: $7^2 = 49 \equiv 5 \pmod{11}$, quindi $7^4 \equiv 5^2 = 25 \equiv 3 \pmod{11}$.

Sostituendo $3 = 7^4$ nella congruenza di partenza (che il professore ha «distribuito» nell'esponente), tutti i termini diventano potenze di $7$. Si arriva così a una relazione del tipo $7^{(\dots)} \equiv 7^{(\dots)} \pmod{11}$, in cui compare un esponente $4x$.

> [!note] Incertezza
> Il testo esatto della congruenza esponenziale di partenza non è ricostruibile dalla registrazione. Compaiono solo l'espressione «$4x$ meno $a$» e, più avanti, «$4x$ congruo [...] modulo $10$».

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

Poiché l'ordine è $10$, l'uguaglianza tra potenze di $7$ modulo $11$ equivale alla congruenza degli esponenti modulo $10$. La congruenza esponenziale diventa così una congruenza lineare classica:

$$
4x \equiv (\dots) \pmod{10}.
$$

Il termine noto non è leggibile dalla registrazione. Il commento del professore è stato: «abbiamo così trasformato la nostra congruenza esponenziale in una bella congruenza classica; ora è facile».

### Riduzione a un sistema

Il passaggio successivo, solo parzialmente ricostruibile, consiste nel riscrivere il problema come un sistema di congruenze. Poiché $10 = 2\cdot 5$ con $\gcd(2,5)=1$, una congruenza modulo $10$ equivale, per il teorema cinese del resto, al sistema formato dalla stessa congruenza modulo $5$ e modulo $2$:

$$
\begin{cases}
(\dots) \pmod 5\\[2pt]
4x \equiv a \pmod 2
\end{cases}
$$

Nella trascrizione si sentono il modulo $5$, il modulo $2$ e l'espressione «$4x$ congruo ad $a$ modulo $2$». Il professore ha anche accennato a semplificare ulteriormente una delle equazioni.

> [!note] Osservazione di verifica
> Modulo $2$ si ha $4x \equiv 0$ per ogni $x$. Una congruenza del tipo $4x \equiv a \pmod 2$ è quindi risolubile se e solo se $a$ è pari, e in quel caso non impone condizioni su $x$. Il contenuto esatto del sistema discusso a lezione non è però ricostruibile.

## Frammenti di altri esercizi (contenuto incerto)

Nella seconda parte della lezione sono stati discussi altri esercizi, probabilmente svolti insieme agli studenti. Dalla registrazione emergono solo frammenti. Li riporto senza completarli.

- **Quadrati.** Compare un ragionamento su $x+1$ e sui quadrati: «$2$ al quadrato», «$3$ al quadrato è $9$, $9-1$», «$4$ al quadrato». Sembra trattarsi dello studio dei quadrati modulo qualche intero per determinare le possibili classi di $x$. Ricorrono anche le classi «$0$, $2$, $5$, $3$». Modulo e testo non sono ricostruibili.

- **Numeri della forma $5^\alpha$ e conteggio dei coprimi.** In un esercizio si discuteva il caso $m \geq 2$ contro $m = 1$:
  - per contare gli elementi invertibili modulo $m$ si guardano le classi di resto modulo $m$ e si contano quelle coprime con $m$;
  - se $m \geq 2$, la classe di $m$ (cioè $0$) va esclusa, perché $m$ non è coprimo con sé stesso;
  - se $m = 1$, invece, $1$ è coprimo con $m$.

  Il professore ha concluso che deve essere $m = 1$, e quindi $n = 5^\alpha$. Più avanti compare l'espressione «$5^\alpha - 1$», plausibilmente legata a $\varphi$ o a un conteggio di elementi, ma il collegamento non è chiaro. Si sentono anche «$2^\beta$» e «questi due devono essere uguali», suggerendo un confronto tra due fattorizzazioni o tra due conteggi.

- **Argomento su generatori ed elementi «grandi».** Compaiono frasi come «esiste un unico», «il più piccolo primo che...», «$d$ divide $n$», «almeno un primo uguale a $n+2$», «per far funzionare il ragionamento ci basterà trovare un elemento», «se uno dei due è uguale all'altro...». Il professore ha anche osservato che è «un po' difficile formalizzare questo problema». L'enunciato e la struttura della dimostrazione non sono ricostruibili.

- **Uguaglianza in una disuguaglianza.** Il professore ha chiesto quando si ottiene l'uguaglianza in una certa stima («Quando è che si ottiene?»). La risposta non è comprensibile.

- **Altri moduli.** Vengono nominati il modulo $9$ e il modulo $3$, in un contesto non ricostruibile.