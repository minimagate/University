---
type: lecture-note
course: Fondamenti di Programmazione
date: 2026-09-19
title: Pensiero computazionale, algoritmi e modelli di calcolo
---

# Pensiero computazionale, algoritmi e modelli di calcolo

## 1. Obiettivi e percorso del corso

Il corso introduce alcuni concetti fondamentali dell'informatica per sviluppare il **pensiero computazionale**, cioè la capacità di:

- formulare i problemi in modo preciso;
- individuare soluzioni algoritmiche;
- descrivere e verificare programmi con rigore.

Il percorso comprende concetti introduttivi, logica proposizionale e del primo ordine, principi della programmazione imperativa e programmazione in **C**. In seguito verranno affrontati i costrutti di base del linguaggio, la programmazione modulare e ricorsiva, i puntatori, l'allocazione dinamica e strutture dati come liste concatenate e alberi binari.

## 2. Pensiero computazionale

Il **pensiero computazionale** è un modo di affrontare i problemi che mira a renderli descrivibili, risolvibili e verificabili da un esecutore. Si basa su quattro componenti principali:

1. **Astrazione**: isolare gli aspetti rilevanti e ignorare i dettagli non essenziali.
2. **Scomposizione**: dividere un problema complesso in sottoproblemi più semplici.
3. **Riconoscimento di schemi**: individuare regolarità ricorrenti nei dati e nei problemi.
4. **Algoritmo e automazione**: descrivere una procedura eseguibile e verificarne l'effetto.

Questo punto di vista permette di passare progressivamente da un problema informale a una specifica, poi a un algoritmo e infine a un programma.

## 3. Che cos'è l'informatica

L'informatica non coincide con:

- la scienza e la tecnica dei calcolatori;
- lo studio delle applicazioni dei calcolatori e del software;
- il semplice apprendimento della scrittura di programmi.

La definizione proposta dall'**ACM** la presenta invece come lo studio sistematico degli algoritmi che descrivono e trasformano l'informazione, comprendendone teoria, analisi, progetto, efficienza, realizzazione e applicazione.

Il centro dell'informatica è quindi l'**algoritmo**, non la macchina particolare che lo esegue.

## 4. Algoritmi: idea e origini

Un **algoritmo** è una sequenza di passi che, se eseguita da un opportuno esecutore, consente di ottenere i risultati attesi a partire dai dati forniti. Gli algoritmi non appartengono soltanto all'informatica: compaiono anche nelle istruzioni di montaggio, nell'uso di una lavastoviglie o nel prelievo da uno sportello automatico.

Una volta descritto un algoritmo, il procedimento corrispondente può essere automatizzato.

Il termine *algoritmo* deriva dalla latinizzazione del nome del matematico persiano **Abū Jaʿfar Muḥammad ibn Mūsā al-Khwārizmī** (circa 780-850), le cui opere contribuirono alla diffusione in Europa della numerazione posizionale con lo zero.

### 4.1 La moltiplicazione egizia

Il papiro di Ahmes, o papiro di Rhind, risalente circa al 1650 a.C. e copia di un testo ancora più antico, contiene uno dei primi algoritmi documentati. La moltiplicazione di $A$ per $B$ viene ricondotta a raddoppi, dimezzamenti e addizioni:

$$
\begin{aligned}
A = 1 &\implies A \cdot B = B, \\
A \text{ pari} &\implies A \cdot B = \frac{A}{2} \cdot (2B), \\
A \text{ dispari} &\implies A \cdot B = (A-1) \cdot B + B.
\end{aligned}
$$

I passi relativi ai casi pari e dispari vengono ripetuti finché $A$ diventa $1$.

### 4.2 L'algoritmo di Euclide per il MCD

Per calcolare il massimo comune divisore di $x$ e $y$ non è necessario elencare tutti i divisori. Si possono sfruttare le proprietà:

$$
\begin{aligned}
\operatorname{MCD}(x,x) &= x, \\
\operatorname{MCD}(x,y) &= \operatorname{MCD}(x-y,y) && \text{se } x>y, \\
\operatorname{MCD}(x,y) &= \operatorname{MCD}(x,y-x) && \text{se } x<y.
\end{aligned}
$$

Le sottrazioni successive trasformano così il problema iniziale in problemi progressivamente più semplici.

## 5. Calcolabilità e modelli di calcolo

Soltanto a partire dagli anni Trenta del Novecento si è cercato di formalizzare la nozione intuitiva di **procedura effettiva**. Le domande fondamentali sono:

- che cosa significa che un problema è effettivamente calcolabile?
- quali problemi ammettono una soluzione algoritmica?
- esistono problemi per i quali nessun algoritmo può risolvere tutti i casi?

La risposta all'ultima domanda è affermativa: esistono problemi **indecidibili**.

### 5.1 Macchina di Turing

La **macchina di Turing**, introdotta da Alan Turing, è un modello astratto di calcolo. Il calcolo viene rappresentato come manipolazione di insiemi finiti e discreti di simboli secondo un insieme finito di regole.

Turing mostrò inoltre l'esistenza di una **macchina di Turing universale** (MTU), capace di ricevere la descrizione di una macchina di Turing insieme al suo input e di simularne il comportamento. La MTU costituisce quindi un modello teorico di computer a programma memorizzato.

### 5.2 $\lambda$-calcolo e tesi di Church-Turing

Negli stessi anni Alonzo Church introdusse il **$\lambda$-calcolo**, un formalismo basato sulle funzioni e molto diverso dalla macchina di Turing. Nonostante la differenza di impostazione, i due modelli descrivono la stessa classe di funzioni effettivamente calcolabili.

La **tesi di Church-Turing** afferma che le macchine di Turing sono in grado di risolvere tutti i problemi effettivamente risolubili. È una tesi universalmente accettata, non un teorema dimostrabile, perché mette in relazione un modello formale con la nozione intuitiva, e quindi non formalizzata, di risolubilità effettiva.

Tra gli altri modelli di calcolo citati figurano i sistemi di Post, le funzioni ricorsive di Kleene, il calcolo quantistico e il DNA computing. Nella presentazione del corso essi vengono considerati Turing-equivalenti rispetto a ciò che è calcolabile.

### 5.3 Modello di von Neumann

Il **modello di von Neumann**, introdotto intorno al 1945, è un modello concreto di architettura alla base dei calcolatori attuali. È equivalente, quanto a capacità di calcolo, alla macchina di Turing; la sua generalità deriva dal **programma memorizzato**, che permette alla stessa macchina di eseguire calcoli diversi.

## 6. Linguaggi e paradigmi di programmazione

Un calcolatore è **programmabile**: la funzione che svolge dipende dal programma che gli indica quali azioni compiere. Un **linguaggio di programmazione** permette di descrivere gli algoritmi in una forma che il calcolatore possa comprendere ed eseguire.

I linguaggi possono essere classificati in base al loro **paradigma di programmazione**, cioè allo stile e agli strumenti concettuali con cui rappresentano la computazione.

| Paradigma | Idea centrale | Esempi citati |
|---|---|---|
| Imperativo | Sequenza di comandi che modifica lo stato o l'ordine di esecuzione | Assembly, FORTRAN, C, COBOL, Pascal |
| Funzionale | Computazione espressa tramite funzioni | ML, Haskell, Scheme |
| Orientato agli oggetti | Organizzazione tramite oggetti | Java, Smalltalk, Eiffel |
| Logico | Computazione tramite relazioni e inferenza logica | PROLOG |
| Concorrente | Processi che evolvono e interagiscono | CCS, CSP |

Il corso adotta il **paradigma imperativo** e, nella sua seconda parte, il linguaggio C.

## 7. Le quattro fasi della programmazione

La **programmazione** è il procedimento che porta alla definizione di programmi adatti a risolvere problemi. A un primo livello di astrazione si articola in quattro fasi:

$$
\text{specifica} \longrightarrow \text{algoritmo} \longrightarrow \text{codifica} \longrightarrow \text{esecuzione}.
$$

### 7.1 Specifica

La **specifica** consiste nel comprendere e definire il problema. Può essere più o meno rigorosa in base al formalismo impiegato e deve descrivere:

- lo **stato iniziale**, cioè i dati in ingresso (*input*);
- lo **stato finale atteso**, cioè i risultati in uscita (*output*).

La forma concreta degli stati dipende dal problema e dagli oggetti considerati.

Esempi di specifiche informali sono:

1. dati due numeri, trovare il maggiore;
2. dato un elenco telefonico e un nome, trovare il numero corrispondente;
3. dati una rete stradale e i flussi dei veicoli, trovare il percorso più veloce tra due punti;
4. trovare numeri pari maggiori di $2$ che non siano somma di due numeri primi, come richiesto dalla congettura di Goldbach;
5. decidere, per ogni programma e ogni input, se il programma termina su quell'input (**problema dell'arresto**).

Questi esempi evidenziano limiti diversi:

- una specifica non fornisce necessariamente il metodo risolutivo;
- può essere ambigua o imprecisa, per esempio se più persone hanno lo stesso nome;
- per alcuni problemi non è noto alcun metodo risolutivo;
- per altri, come il problema dell'arresto, è stato dimostrato che un metodo risolutivo generale non può esistere.

Nel corso vengono considerati problemi per i quali è nota l'esistenza di un metodo risolutivo, cioè problemi **decidibili**.

### 7.2 Algoritmo

Dopo aver specificato il problema, si individua un procedimento risolutivo. Per essere considerato un algoritmo, tale procedimento deve rispettare almeno tre requisiti:

- **finitezza**: è composto da una sequenza finita di passi elementari;
- **non ambiguità**: ogni azione è interpretata in modo univoco dall'esecutore;
- **eseguibilità**: l'esecutore può completare ogni azione in tempo finito con le risorse disponibili.

Indicazioni come «aggiungere sale quanto basta» non soddisfano il requisito di non ambiguità per un esecutore automatico.

#### Efficienza e ricerca binaria

Algoritmi diversi possono risolvere lo stesso problema con efficienza diversa. Per cercare un nome in un elenco ordinato, la **ricerca binaria** procede così:

1. apre l'elenco a metà e legge il nome trovato;
2. termina se il nome coincide con quello cercato;
3. continua nella prima metà se il nome cercato viene prima in ordine lessicografico;
4. altrimenti continua nella seconda metà;
5. ripete finché trova il nome o conclude che non è presente.

A ogni passo viene esclusa metà dello spazio di ricerca, anziché confrontare tutti i nomi in sequenza.

### 7.3 Codifica

La **codifica** richiede di scegliere:

- una rappresentazione degli oggetti rilevanti;
- una descrizione dell'algoritmo in un linguaggio noto all'esecutore.

Quando l'esecutore è un calcolatore, l'algoritmo viene tradotto in un linguaggio di programmazione e diventa un programma eseguibile. Più il linguaggio usato per descrivere l'algoritmo è vicino al linguaggio di programmazione scelto, più semplice è la traduzione.

Il linguaggio deve permettere di rappresentare:

| Elemento concettuale | Nel programma |
|---|---|
| algoritmo | programma |
| informazioni iniziali | dati in ingresso |
| informazioni usate durante l'elaborazione | dati ausiliari |
| informazioni finali | dati in uscita |

### 7.4 Esecuzione e messa a punto

L'ultima fase è l'**esecuzione** del programma. Essa può far emergere errori nati nella specifica, nell'algoritmo o nella codifica e quindi innescare la revisione di una o più fasi.

I **debugger** sono strumenti che aiutano a individuare gli errori e a mettere a punto il programma.

## 8. Quadro d'insieme

L'intero processo può essere letto come una catena di raffinamenti:

$$
\text{problema informale}
\longrightarrow
\text{specifica precisa}
\longrightarrow
\text{procedimento risolutivo}
\longrightarrow
\text{programma}
\longrightarrow
\text{esecuzione verificata}.
$$

L'astrazione chiarisce che cosa conta, l'algoritmo stabilisce come procedere, il linguaggio rende la procedura eseguibile e la verifica controlla che il risultato ottenuto corrisponda allo stato finale richiesto.

## Fonte

- Paolo Mancarella, *Fondamenti di Programmazione*, Lezione 1, a.a. 2026/2027. La slide di apertura del PDF non riporta una data di lezione.
