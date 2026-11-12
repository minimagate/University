---
type: lecture-note
course: Analisi 1
date: '2026-11-05'
title: Serie a segni alterni, convergenza assoluta ed esercizi
source_files:
- AM1_26_L037.pdf
- AM1_26_L038.pdf
source_date: '2025-11-05'
teaching_model: anthropic/claude-sonnet-5.5
---

# Serie a segni alterni, convergenza assoluta ed esercizi

Questa nota riunisce le parti **037 e 038** della lezione del **5 novembre 2026**. La prima parte tratta le **serie a termini di segno variabile**: il **criterio di Leibniz** per le serie a segni alterni (con dimostrazione), il **lemma delle due sottosuccessioni**, il **lemma dei carabinieri per serie**, la **convergenza assoluta** e due primi esempi. La seconda raccoglie **sette esercizi** che usano confronto, confronto asintotico, criterio della radice, Leibniz e convergenza assoluta. Per le serie a termini positivi (confronto, radice, rapporto) si veda [[2026-11-03 - Serie numeriche, condizione necessaria e criteri di convergenza]].

## 1. Serie a segno variabile: i due strumenti

Per le serie a termini di segno qualsiasi la lezione introduce due strumenti: il **criterio di Leibniz** (serie a segni alterni) e la **convergenza assoluta**.

## 2. Criterio di Leibniz

Si consideri la serie

$$
\sum_{n=0}^{\infty}(-1)^n\alpha_n .
$$

**Teorema (criterio di Leibniz).** Supponiamo che

1. $\alpha_n\ge0$ definitivamente (cioè la serie è a segni alterni);
2. $\alpha_{n+1}\le\alpha_n$ definitivamente (cioè $\alpha_n$ è debolmente decrescente);
3. $\alpha_n\to0$ (condizione necessaria).

Allora la serie **converge**.

**Osservazioni.**

- Se non sono verificate la (i) e/o la (ii), non si può concludere nulla (*"BOH"*).
- Se non è verificata la (iii), la serie **di sicuro non converge** (la condizione necessaria $\alpha_n\to0$ è violata); restano aperte tre possibilità: diverge a $+\infty$, diverge a $-\infty$, è indeterminata.

### 2.1 Dimostrazione

**Idea.** Si rappresentano le somme parziali $S_n$ sul piano cartesiano: $S_0=\alpha_0$, poi ogni passo scende di $\alpha_1$, sale di $\alpha_2$, scende di $\alpha_3$, ecc. Le somme parziali di indice pari e dispari si muovono quindi in versi opposti.

Si assume, senza perdita di generalità, che (i) e (ii) valgano **sempre** e non solo definitivamente.

**Passo 1.** $S_{2n+2}\le S_{2n}$, perché

$$
S_{2n+2}=S_{2n}\underbrace{-\alpha_{2n+1}+\alpha_{2n+2}}_{\le0\ \text{per (ii)}}\le S_{2n}.
$$

Analogamente $S_{2n+3}\ge S_{2n+1}$. Dunque le somme parziali pari sono debolmente decrescenti, quelle dispari debolmente crescenti.

**Passo 2.** $S_{2n}\ge S_{2m+1}$ per ogni $n,m\in\mathbb N$ (tutte le somme parziali pari sono maggiori di tutte le dispari).

- *Caso 1: $m\ge n$.* Allora $S_{2n}\ \underset{\text{passo 1}}{\ge}\ S_{2m}\ \ge\ S_{2m+1}$, dove l'ultima disuguaglianza segue da $S_{2m+1}=S_{2m}-\alpha_{2m+1}$.
- *Caso 2: $m<n$.* Allora $S_{2m+1}\ \underset{\text{dispari crescono}}{\le}\ S_{2n-1}\ \le\ S_{2n}$, dove $S_{2n}=S_{2n-1}+\alpha_{2n}$.

**Passo 3.** La successione $S_{2n}$ è debolmente decrescente e limitata inferiormente (perché $S_{2n}\ge S_1$). Per il teorema sulle successioni monotone,
$$
S_{2n}\to\ell_1 .
$$
Analogamente $S_{2n+1}$ è debolmente crescente e limitata superiormente ($S_{2n+1}\le S_0$), quindi
$$
S_{2n+1}\to\ell_2\quad(\le\ell_1).
$$

**Passo 4.** $\ell_1=\ell_2$. Infatti da $S_{2n+1}=S_{2n}-\alpha_{2n+1}$, con $S_{2n+1}\to\ell_2$, $S_{2n}\to\ell_1$ e $\alpha_{2n+1}\to0$, si ottiene $\ell_2=\ell_1-0$.

Questo basta per concludere che **tutta** la successione $S_n\to\ell_1=\ell_2$, grazie al lemma seguente.

### 2.2 Lemma delle due sottosuccessioni

**Lemma.** Se $a_n$ ha due sottosuccessioni che

- esauriscono tutti i termini,
- hanno lo stesso limite $\ell\in\overline{\mathbb R}$ *(nel PDF: $\ell\in\mathbb R$)*,

allora tutta la successione tende allo stesso $\ell$.

*Dimostrazione.* Basta prendere un indice "definitivamente comune": da un certo punto in poi i termini di entrambe le sottosuccessioni sono vicini a $\ell$, e ogni termine della successione appartiene a una delle due.

**Osservazioni (dal PDF).**

- Il lemma vale anche con **2025 sottosuccessioni** (basta il massimo di 2025 indici).
- Resta una domanda: vale anche se le sottosuccessioni sono **infinite**? Il PDF la propone come *"esercizio molto interessante"* con punto interrogativo, senza risposta.

## 3. Convergenza assoluta

**Definizione.** Una serie $\sum_{n=0}^\infty a_n$ si dice **assolutamente convergente** se $\sum_{n=0}^\infty|a_n|$ è convergente.

**Teorema (criterio della convergenza assoluta).**
$$
\boxed{\sum_{n=0}^{\infty}|a_n|\ \text{conv.}\ \Longrightarrow\ \sum_{n=0}^{\infty}a_n\ \text{conv.}}
$$

**Utilizzo operativo.** Devo studiare $\sum a_n$; provo a studiare $\sum|a_n|$.

- Se converge, converge anche quella iniziale.
- Se diverge (e non può fare altro, essendo a termini $\ge0$), allora non si può concludere (*"BOH"*).

Per $\sum|a_n|$, serie a termini $\ge0$, si hanno a disposizione molti strumenti (confronto, confronto asintotico, radice, rapporto).

### 3.1 Il lemma dei carabinieri per serie

Per dimostrare la convergenza assoluta il PDF indica due strategie:

- usare la **completezza dei numeri reali** (rimandato al secondo semestre);
- usare l'**ordinamento** (carabinieri per serie), che è quella seguita qui.

**Lemma (carabinieri per serie).** Siano $a_n,b_n,c_n$ tre successioni (nessuna ipotesi di segno) tali che
$$
a_n\le b_n\le c_n\quad\text{definitivamente}.
$$
Se $\sum a_n$ e $\sum c_n$ convergono, allora $\sum b_n$ converge.

*Dimostrazione.*

- **Passo 1.** $\sum(c_n-a_n)$ converge (differenza di due serie convergenti).
- **Passo 2.** $\sum(b_n-a_n)$ converge: infatti $0\le b_n-a_n\le c_n-a_n$, e la convergenza segue dal confronto tra serie a termini $\ge0$.
- **Passo 3.** $\sum b_n=\sum\bigl[a_n+(b_n-a_n)\bigr]$ è somma di due serie convergenti, quindi converge.

### 3.2 Dimostrazione del criterio di convergenza assoluta

Basta osservare che
$$
-|a_n|\le a_n\le|a_n|,
$$
e le due serie laterali ($\sum(-|a_n|)$ e $\sum|a_n|$) convergono: si applica il lemma dei carabinieri per serie.

## 4. Primi esempi

### Esempio 1: $\displaystyle\sum_{n=1}^\infty\frac{(-1)^n}{n}=-1+\frac12-\frac13+\frac14-\cdots$

*(Il PDF annota che "un giorno la somma sarà $-\log 2$".)*

- **Non converge assolutamente**, perché con i valori assoluti diventa $\sum\frac1n$, la serie armonica.
- **Converge per Leibniz** con $\alpha_n=\frac1n$ ($\alpha_n\ge0$, decrescente, $\alpha_n\to0$).

Allo stesso modo, per la serie
$$
\sum_{n=1}^{\infty}\frac{(-1)^n}{n^a}
$$
si ha:

- converge assolutamente $\iff a>1$;
- converge $\iff a>0$ (Leibniz con $\alpha_n=\frac1{n^a}$).

### Esempio 2: $\displaystyle\sum_{n=0}^\infty(-1)^n\frac{n^2+5}{n^4-3n+8}$

Volendo usare Leibniz occorrerebbe dimostrare la decrescenza (fastidioso). È più comodo usare la **convergenza assoluta**, che è vera per **confronto asintotico con $\frac1{n^2}$**.

## 5. Esercizi

### Esercizio 1: $\displaystyle\sum_{n=1}^\infty\frac{\cos n}{n^2}$

**Ragionamento sbagliato.** Da $\frac{\cos n}{n^2}\le\frac1{n^2}$ e dalla convergenza della serie a destra si concluderebbe che converge anche la nostra. **NO!** Il confronto vale solo tra serie a termini $\ge0$, e la nostra non lo è.

**Soluzione corretta.** Si passa ai valori assoluti:
$$
0\le\frac{|\cos n|}{n^2}\le\frac1{n^2}.
$$
Poiché $\sum\frac1{n^2}$ converge, per il confronto converge $\sum\frac{|\cos n|}{n^2}$. Dunque $\sum\frac{\cos n}{n^2}$ converge **per convergenza assoluta**.

### Esercizio 2: $\displaystyle\sum_{n=1}^\infty\frac{\cos n+2}{n}$

Qui $\cos n+2\ge1$, quindi
$$
\frac{\cos n+2}{n}\ge\frac1n,
$$
e la serie **diverge per confronto** con la serie armonica.

### Esercizio 3: $\displaystyle\sum_{n=0}^\infty(-1)^n\frac{n^3+5}{n^4-3n+8}$

**Non converge assolutamente**, perché il valore assoluto del termine è $\sim\frac1n$.

**1° modo: Leibniz diretto.** Bisogna dimostrare che $\alpha_{n+1}\le\alpha_n$ definitivamente, cioè
$$
\frac{(n+1)^3+5}{(n+1)^4-3(n+1)+8}\le\frac{n^3+5}{n^4-3n+8},
$$
ovvero
$$
\bigl[(n+1)^3+5\bigr]\bigl(n^4-3n+8\bigr)\le(n^3+5)\bigl[(n+1)^4-3(n+1)+8\bigr].
$$
Basta portare tutto a destra e sperare che la potenza più grande abbia coefficiente $>0$. Si calcolano solo i termini di grado $\ge6$:
$$
(n^3+3n^2+\dots)(n^4+\dots)\le(n^3+\dots)(n^4+4n^3+\dots)
$$
$$
n^7+3n^6+o(n^6)\le n^7+4n^6+o(n^6).
$$
Resta $n^6+o(n^6)\ge0$, che è vero definitivamente. Insieme a $\alpha_n\ge0$ definitivamente e $\alpha_n\to0$, Leibniz dà la convergenza.

**2° modo.** *Brutale:* la frazione è $\sim\frac1n$. *Rigoroso:* si **aggiunge e toglie** $\frac1n$:
$$
\sum_{n=1}^\infty(-1)^n\left[\frac{n^3+5}{n^4-3n+8}-\frac1n\right]+\sum_{n=1}^\infty\frac{(-1)^n}{n}.
$$
- La seconda serie converge per Leibniz.
- La prima si spera converga assolutamente: infatti
$$
\frac{n^3+5}{n^4-3n+8}-\frac1n=\frac{\cancel{n^4}+5n-\cancel{n^4}+3n-8}{n(n^4-3n+8)}\sim\frac{8n}{n^5}\sim\frac8{n^4},
$$
che è sommabile. Quindi la serie converge (somma di due serie convergenti).

### Esercizio 4: $\displaystyle\sum_{n=0}^\infty(-1)^n\frac{n^2+2}{n^2+7}$

Il termine non tende a $0$ (condizione necessaria violata), quindi niente convergenza. Cosa fa delle altre tre possibilità?

*Brutale:* il termine è $\sim(-1)^n$, quindi la serie è **indeterminata**.

**1° modo.** Si entra nella dimostrazione di Leibniz e si arriva fino a $S_{2n}\to\ell_1$ e $S_{2n+1}\to\ell_2$ (a patto di verificare l'ipotesi di monotonia). Nel passo 4 si deduce che $\ell_1-\ell_2=1$ (il limite di $\alpha_{2n+1}$ è $1$, non $0$), quindi $\ell_1\ne\ell_2$ e la serie non ha limite.

**2° modo.** Si aggiunge e toglie $1$ alla frazione:
$$
\sum_{n=0}^\infty(-1)^n+\sum_{n=0}^\infty(-1)^n\left[\frac{n^2+2}{n^2+7}-1\right].
$$
Ora
$$
\frac{n^2+2}{n^2+7}-1=\frac{\cancel{n^2}+2-\cancel{n^2}-7}{n^2+7}=-\frac5{n^2+7},
$$
quindi la seconda serie converge assolutamente, mentre la prima è indeterminata: la somma è **indeterminata**.

### Esercizio 5: $\displaystyle\sum_{n=1}^\infty\frac{\arctan(a^n)}{n^a}$, al variare di $a\in\mathbb R$

Indichiamo con $t_n=\dfrac{\arctan(a^n)}{n^a}$ il termine generale.

- **$a>1$.** $0\le t_n\le\dfrac\pi2\cdot\dfrac1{n^a}$, e quest'ultima serie converge: converge.
- **$a=1$.** $\displaystyle\sum\frac{\arctan 1}{n}=\frac\pi4\sum\frac1n$: diverge.
- **$0<a<1$.** L'argomento dell'arcotangente tende a $0$. *Brutale:* $t_n\sim\dfrac{a^n}{n^a}$, che converge per la radice. *Rigoroso:* confronto asintotico con $b_n=\dfrac{a^n}{n^a}$:
$$
\lim_{n\to+\infty}\frac{t_n}{b_n}=\lim_{n\to+\infty}\frac{\arctan(a^n)}{a^n}=1\ (\ne0,\ne+\infty).
$$
Quindi $\sum t_n$ si comporta come $\sum b_n$. Per quest'ultima si usa la radice: $\sqrt[n]{b_n}\to a\in(0,1)$, dunque $\sum b_n$ converge e anche $\sum t_n$ converge.
- **$a=0$.** Sono tutti $0$ (i termini sono nulli).
- **$-1<a<0$.** **Convergenza assoluta**: $|t_n|=\dfrac{\arctan(|a|^n)}{n^a}$, e come prima si fa il confronto asintotico con $b_n=\dfrac{|a|^n}{n^a}$; quindi converge.
- **$a=-1$.** Diventa $\dfrac\pi4\displaystyle\sum_{n=1}^\infty(-1)^n n$, che non converge. *(Volendo si può capire cosa fa: basta scrivere le somme parziali.)*
- **$a<-1$.** $|t_n|\to+\infty$, quindi la serie non converge.

**Conclusione:**
$$
\boxed{\text{converge}\iff a\in(-1,1)\cup(1,+\infty)}
$$

### Esercizio 6: $\displaystyle\sum_{n=1}^\infty\frac{n^{2025}}{2^{\sqrt n}}$

Si vede che $\sqrt[n]{a_n}\to1$, quindi il criterio della radice non decide (*BOH*). Si prova il **confronto asintotico** con $b_n=\dfrac1{n^7}$:
$$
\frac{a_n}{b_n}=\frac{n^{2032}}{2^{\sqrt n}}=e^{2032\log n-\sqrt n\,\log2}\to0\quad(\text{caso limite!}).
$$
Quindi $a_n\le b_n$ definitivamente, e la serie **converge**.

### Esercizio 7: $\displaystyle\sum_{n=0}^\infty a^n\arcsin\!\left(\frac{n^3}{3^n}\right)$, per quali $a\in\mathbb R$ converge?

*Brutale:* il termine è $\sim a^n\dfrac{n^3}{3^n}$; con il criterio della radice si ottiene $\dfrac a3<1$, cioè $a<3$.

*Rigoroso:*

- per $|a|<3$ si usa la **convergenza assoluta**, il confronto asintotico con $\left(\dfrac{|a|}{3}\right)^n n^3$ e il criterio della radice (converge);
- per $|a|\ge3$ **manca la condizione necessaria** (il termine non tende a $0$): la serie non converge.

*(Il PDF non scrive la conclusione finale; dalle due parti segue che converge per $|a|<3$.)*

## Note e incertezze

- Data della lezione: il PDF riporta **05/11/2025**, conservata in `source_date`; la data nel corso attuale è **05/11/2026**.
- Nel lemma delle due sottosuccessioni il PDF scrive $\ell\in\mathbb R$; si è mantenuta questa lettura.
- La domanda sul caso di **infinite** sottosuccessioni è lasciata aperta nel PDF.
- Nell'Esercizio 5 il PDF indica la serie con indice da $n=1$ e usa $a_n$ per il termine generale; qui si è usato $t_n$ per non confondere il termine con il parametro $a$.
- Esercizio 7: la conclusione per $|a|\ge3$ (non convergenza) segue dall'annotazione "manca cond. nec." del PDF; il termine con $|a|\ge 3$ è un'inferenza, non una dimostrazione esplicita.
