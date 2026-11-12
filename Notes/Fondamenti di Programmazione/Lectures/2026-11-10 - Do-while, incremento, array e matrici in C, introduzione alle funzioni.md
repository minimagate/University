---
type: lecture-note
course: Fondamenti di Programmazione
date: '2026-11-10'
title: Do-while, incremento, array e matrici in C, introduzione alle funzioni
source: Lezione_16.pdf (slide 487-527)
teaching_model: anthropic/claude-sonnet-5.5
---

# Do-while, incremento, array e matrici in C, introduzione alle funzioni

La lezione riprende i cicli e i comandi della [[2026-11-05 - Tipi e conversioni in C, selezione e cicli for|lezione 15]]. Aggiunge l'iterazione indefinita con `while` e `do-while`, l'assegnamento come espressione, gli operatori di incremento e decremento, le forme abbreviate dell'assegnamento e l'espressione condizionale. Tratta poi i vettori e le matrici in C, con inizializzazione, errori tipici ed esercizi. Si chiude con la modularizzazione e le prime nozioni sulle funzioni.

I frammenti sono codice C da inserire nel corpo di `main`, con `#include <stdio.h>` quando servono `printf` e `scanf`. Le precisazioni e le correzioni rispetto alle slide sono segnalate. Questa lezione non contiene verifica formale di correttezza con triple di Hoare: le uniche considerazioni su invarianti sono *precisazioni aggiunte*.

## 1. Iterazione indefinita

In molti casi il numero di iterazioni **non è noto prima di iniziare il ciclo**, perché dipende dal verificarsi di una condizione. Esempio: leggere una sequenza di interi che termina con `0` e calcolarne la somma.

- **Input:** $n_1,\dots,n_k,0$ con $n_i\neq0$.
- **Output:** $\sum_{i=1}^{k} n_i$.

```c
int dato, somma = 0;
scanf("%d", &dato);
while (dato != 0) {
    somma = somma + dato;
    scanf("%d", &dato);
}
printf("%d", somma);
```

Si legge **prima** il primo dato, poi nel ciclo si aggiunge il dato corrente e si legge il successivo. Il valore `0` è il **terminatore**: non entra nella somma.

*Precisazione aggiunta:* invariante: all'ingresso di ogni controllo della guardia, `somma` è la somma dei dati letti diversi da zero prima di `dato`. All'uscita `dato == 0`, quindi `somma` è la somma richiesta. Se il primo valore è `0`, il ciclo non viene eseguito e si stampa 0.

## 2. L'istruzione `do-while`

Nel `while` la condizione è controllata all'**inizio** di ogni iterazione. Nel `do-while` è controllata alla **fine**.

**Sintassi:**

```c
do
    istruzione
while (espressione);
```

Notare il punto e virgola finale.

**Semantica:** è equivalente a

```c
istruzione
while (espressione)
    istruzione
```

Quindi **un'iterazione viene eseguita comunque**. Ha senso usare `do-while` quando si sa che deve essere eseguita almeno un'iterazione.

### 2.1 Lunghezza di una sequenza terminata da 0

```c
main() {
    int lunghezza = 0;   /* lunghezza della sequenza */
    int dato;            /* dato letto di volta in volta */
    printf("Inserisci una sequenza di interi (0 fine seq.)\n");
    do {
        scanf("%d", &dato);
        lunghezza = lunghezza + 1;
    } while (dato != 0);
    printf("La sequenza e' lunga %d\n", lunghezza - 1);
}
```

Il corpo legge e conta. Il ciclo si ripete finché `dato != 0`. Lo `0` finale viene **conteggiato** da `lunghezza` perché il contatore cresce anche per lui: per questo si stampa `lunghezza - 1`. Lo `0` non fa parte della sequenza, fa da terminatore.

*Precisazioni:* la slide scrive `main()` senza tipo di ritorno e `è` accentato nel testo; qui si è usato `e'` per evitare problemi di codifica. In C moderno si preferisce `int main()`.

## 3. Assegnamento come espressione

In C, l'operazione di assegnamento `x = exp` è un'**espressione**:

- il **valore** dell'espressione è il valore di `exp` (che è a sua volta un'espressione);
- la valutazione ha un **side-effect**: assegnare alla variabile `x` il valore di `exp`.

Quindi `=` è in realtà un **operatore**, **associativo a destra**. Per esempio `x = y = 4` equivale a `x = (y = 4)`:

- `y = 4` è un'espressione di valore 4, con modifica di `y`;
- `x = (y = 4)` è un'espressione di valore 4, con ulteriore modifica di `x`.

L'uso eccessivo di assegnamenti come espressioni rende il codice difficile da comprendere e quindi da correggere o modificare.

## 4. Operatori di incremento e decremento

Assegnamenti del tipo `i = i + 1` e `i = i - 1` sono molto comuni. Per questo esistono l'operatore di **incremento** `++` e quello di **decremento** `--`. In realtà ciascuno corrisponde a due operatori, **postfisso** e **prefisso**.

| Forma | Nome | Valore dell'espressione | Side-effect |
|---|---|---|---|
| `i++` | postincremento | valore di `i` (prima dell'incremento) | incrementa `i` di 1 |
| `++i` | preincremento | valore di `i+1` | incrementa `i` di 1 |

Gli operatori di decremento `i--` e `--i` si comportano in modo analogo.

```c
int i, j;
i = 6;
j = i++;    /* j = 6, i = 7 */
```

```c
int i, j;
i = 6;
j = ++i;    /* j = 7, i = 7 */
```

### 4.1 Uso sconsigliato dentro altri assegnamenti

Esempio della slide, con `x = 4` e `y = 2`:

| | Istruzione | `x` | `y` | `z` |
|---|---|---|---|---|
| 1 | `int x, y, z;` | ? | ? | ? |
| 2 | `x = 4;` | 4 | ? | ? |
| 3 | `y = 2;` | 4 | 2 | ? |
| 4a | `z = (x + 1) + y;` | 4 | 2 | 7 |
| 4b | `z = (x++) + y;` | 5 | 2 | 6 |
| 4c | `z = (++x) + y;` | 5 | 2 | 7 |

**N.B.: non usare mai in questo modo.** In un'istruzione di assegnamento non devono esserci altri side-effect oltre a quello dell'operatore di assegnamento. Si riscrive così:

```c
/* 4b */
z = x + y;
x++;

/* 4c */
x++;
z = x + y;
```

## 5. Ordine di valutazione degli operandi

In generale il C **non stabilisce** l'ordine di valutazione degli operandi nelle espressioni: dipende dal compilatore. Esempio:

```c
int x, y, z;
x = 2;
y = 4;
z = x++ + (x * y);
```

Valore di `z`?

- se si valuta prima `x++`: $2 + (3\cdot4) = 14$;
- se si valuta prima `x*y`: $(2\cdot4) + 2 = 10$.

*Precisazione aggiunta:* nello standard C questa espressione modifica e legge `x` senza un punto di sequenza che le ordini: il comportamento è **indefinito**, non soltanto dipendente dal compilatore. Il risultato non va quindi assunto nemmeno fra i due valori elencati. La regola pratica della slide 493 (nessun altro side-effect in un assegnamento) evita il problema.

## 6. Forme abbreviate dell'assegnamento

| Forma estesa | Forma abbreviata |
|---|---|
| `a = a + b;` | `a += b;` |
| `a = a - b;` | `a -= b;` |
| `a = a * b;` | `a *= b;` |
| `a = a / b;` | `a /= b;` |
| `a = a % b;` | `a %= b;` |

## 7. Espressioni condizionali

Al posto di

```c
int x, y, z;
if (x > y)
    z = x;
else
    z = y;
```

si può scrivere, parafrasando:

```c
int x, y, z;
z = (x > y) ? x : y;
```

Si è usata una **espressione condizionale**, di sintassi

```c
(espr-1) ? espr-2 : espr-3
```

A seconda dell'esito della valutazione della prima espressione, si valuta la seconda oppure la terza. Qui `z` riceve il massimo di `x` e `y`.

## 8. Tipi di dato strutturati: array

Il primo tipo di dato **strutturato** visto in C è l'**array**, già introdotto nel linguaggio didattico.

- Un array è composto da **elementi omogenei** (tutti dello stesso tipo).
- Ogni elemento è identificato da un numero d'ordine, l'**indice**.
- Il numero di elementi è prefissato e si chiama **lunghezza** (o **dimensione**).
- Gli array permettono di rappresentare tabelle, matrici, matrici $n$-dimensionali.

### 8.1 Vettori: dichiarazione e accesso

**Sintassi della dichiarazione:**

```c
tipo-elementi nome-array [lunghezza];
```

Esempio: `int vet[6];` dichiara un vettore di 6 elementi interi. Alla dichiarazione vengono riservate (allocate) **6 locazioni di memoria consecutive**, ciascuna contenente un intero. La lunghezza è 6.

La lunghezza deve essere una **costante**, nota a tempo di compilazione. *Precisazione aggiunta:* standard più recenti ammettono array di lunghezza variabile (VLA), ma il corso li esclude e questa lezione non li usa.

Ogni elemento è una **variabile**, identificata dal nome del vettore e da un indice, per esempio `vet[2]`. **Sintassi dell'accesso:** `nome-array[espressione]`.

**Attenzione:** `espressione` deve essere di tipo intero e il suo valore deve essere compreso fra `0` e `lunghezza-1` (si ricordi `def(E)` dalla semantica delle espressioni).

| indice | variabile |
|---|---|
| 0 | `vet[0]` |
| 1 | `vet[1]` |
| 2 | `vet[2]` |
| 3 | `vet[3]` |
| 4 | `vet[4]` |
| 5 | `vet[5]` |

Gli elementi appena dichiarati hanno valore indefinito (nella slide, `?`).

`vet[i]` è l'elemento di indice `i`. Ogni elemento è una variabile intera come le altre: può stare a sinistra di un assegnamento o dentro un'espressione.

```c
int vet[6], a;
vet[0] = 15;
a = vet[0];
vet[1] = vet[0] + a;
printf("%d", vet[0] + vet[1]);
```

Qui `vet[0]` vale 15, `a` vale 15, `vet[1]` vale 30 e si stampa 45 *(valori calcolati da me)*.

L'indice è un'espressione:

```c
index = 2;
vet[index + 1] = 23;    /* assegna a vet[3] */
```

## 9. Inizializzazione di vettori

Gli elementi possono essere inizializzati con **valori costanti** (valutabili a tempo di compilazione) **contestualmente alla dichiarazione**.

```c
int n[4] = {11, 22, 33, 44};
```

L'inizializzazione deve essere contestuale alla dichiarazione:

```c
int n[4];
n = {11, 22, 33, 44};    /* errore! */
```

Regole illustrate dalla slide:

- **Meno inizializzatori degli elementi:** i rimanenti sono posti a 0.

  ```c
  int n[10] = {3};        /* azzera i rimanenti 9 elementi */
  float af[5] = {0.0};    /* pone a 0.0 i 5 elementi */
  int x[5] = {};          /* errore! (secondo la slide) */
  ```

- **Più inizializzatori degli elementi:** errore a tempo di compilazione.

  ```c
  int v[2] = {1, 2, 3};   /* errore! */
  ```

- **Lunghezza omessa:** con una sequenza di valori iniziali si può omettere la lunghezza, che viene presa dalla sequenza.

  ```c
  int n[] = {1, 2, 3};    /* equivale a int n[3] = {1, 2, 3}; */
  ```

*Precisazione aggiunta:* `{3}` assegna 3 al solo primo elemento e 0 agli altri. `{0}` è l'idioma per azzerare tutto il vettore. Il caso `{}` è errore nello standard C fino a C17, accettato dal C23 e da alcuni compilatori come estensione: si segue la slide.

## 10. Accessi fuori dai limiti e valori non inizializzati

Cosa succede con un indice fuori da $[0, \mathtt{dim}-1]$?

```c
int vet[6], x;
...
vet[10] = 15;        /* accesso in scrittura */
...
x = vet[24] + 1;     /* accesso in lettura */
```

Dal punto di vista concettuale è un **errore** (si ricordino `def` nella semantica delle espressioni e l'aggiornamento selettivo). Ciò che succede dipende dal sistema:

- l'errore **in generale non è rilevabile a tempo di compilazione** (l'indice può essere un'espressione il cui valore dipende dallo stato);
- a tempo di esecuzione si può ottenere un errore (es. *segmentation fault*) che segnala l'accesso a una posizione di memoria «vietata»;
- in molti casi **nessun errore, ma comportamenti non prevedibili**.

Leggere da un array non inizializzato (`int vet[6]; ... x = vet[1];`) dà un risultato **non affidabile**.

## 11. Manipolazione di vettori

La manipolazione avviene di solito con cicli `for`. L'indice varia in genere da `0` a `lunghezza-1`. Spesso conviene definire la lunghezza come costante con la direttiva `#define`.

### 11.1 Lettura e stampa di un vettore

```c
#include <stdio.h>
#define LUNG 5

int main () {
    int v[LUNG];   /* vettore di LUNG elementi, indicizzati da 0 a LUNG-1 */
    int i;

    for (i = 0; i < LUNG; i++) {
        printf("Inserire il %do elemento: ", i+1);
        scanf("%d", &v[i]);
    }
    printf("Indice Elemento\n");
    for (i = 0; i < LUNG; i++) {
        printf("%6d %8d\n", i, v[i]);
    }
}
```

Punti da notare:

- `#define LUNG 5` sostituisce `LUNG` con `5` prima della compilazione, quindi vale come costante in `v[LUNG]`.
- Nella stringa di controllo `%do` è il formato `%d` seguito dal carattere `o` (suffisso ordinale italiano: «1o elemento»).
- `&v[i]` è l'indirizzo dell'elemento di indice `i`, come per una variabile semplice.
- `%6d` e `%8d` stampano interi in campi di ampiezza minima 6 e 8, quindi incolonnati.

### 11.2 Nessuna assegnazione fra vettori

Come nel linguaggio didattico, in C l'**unica operazione possibile sugli array è l'accesso ai singoli elementi**. Non si possono fare assegnamenti diretti fra vettori:

```c
int a[3] = {11, 22, 33};
int b[3];
b = a;      /* errore! */
```

Per copiare servono un ciclo che copi un elemento alla volta. *(Precisazione aggiunta, non esplicita nella slide.)*

## 12. Esempi con vettori

### 12.1 Somma degli elementi

```c
int a[10], i, somma = 0;
...
for (i = 0; i < 10; i++)
    somma += a[i];
printf("%d", somma);
```

*Precisazione aggiunta:* invariante: all'inizio di ogni iterazione `somma` è la somma di `a[0..i-1]`, con $0\leq i\leq 10$; la funzione di terminazione è $10-i$. Si assume che i valori di `a` siano stati letti prima.

### 12.2 Valori maggiori di `y`

Leggere $N$ interi e stampare quelli maggiori di un valore `y` letto in input.

```c
#include <stdio.h>
#define N 4

int main() {
    int ris[N];
    int y, i;

    printf("Inserimento di %d valori\n", N);
    for (i = 1; i <= N; i++) {
        printf("Inserire valore n. %d: ", i);
        scanf("%d", &ris[i-1]);
    }
    printf("Inserire il valore y:\n");
    scanf("%d", &y);

    printf("*** Stampa i valori maggiori di %d: ***\n", y);
    for (i = 0; i < N; i++)
        if (ris[i] > y)
            printf("Il %do elemento: %d e' maggiore di %d\n", i+1, ris[i], y);
}
```

Il primo ciclo conta da 1 a `N` per mostrare all'utente la numerazione naturale, ma accede con `ris[i-1]` perché gli indici partono da 0. Il secondo conta da 0.

### 12.3 Frequenza delle cifre in una linea

Leggere una sequenza di caratteri terminata da `\n` e stampare le frequenze delle cifre da `'0'` a `'9'`.

Si usa un vettore `freq` di 10 elementi: `freq[0]` conta le occorrenze di `'0'`, ..., `freq[9]` quelle di `'9'`. Un ciclo acquisisce i caratteri e incrementa una posizione dell'array ogni volta che il carattere letto è una cifra.

```c
int i;
char ch;
int freq[10] = {0};    /* tutti gli elementi sono inizializzati a 0 */
do {
    ch = getchar();
    switch (ch) {
        case '0': freq[0]++; break;
        case '1': freq[1]++; break;
        case '2': freq[2]++; break;
        case '3': freq[3]++; break;
        case '4': freq[4]++; break;
        case '5': freq[5]++; break;
        case '6': freq[6]++; break;
        case '7': freq[7]++; break;
        case '8': freq[8]++; break;
        case '9': freq[9]++; break;
    }
} while (ch != '\n');
printf("Le frequenze sono:\n");
for (i = 0; i < 10; i++)
    printf("Freq. di %d: %d\n", i, freq[i]);
```

Si è usato `do-while` perché almeno un carattere va letto prima di decidere se fermarsi. Dopo il `switch` senza `default`, i caratteri non cifra vengono ignorati. Il `\n` finale non è una cifra e non incrementa nulla.

**Versione più compatta.** Nel ciclo `do-while`, il `switch` si può sostituire con un `if`:

```c
if (ch >= '0' && ch <= '9')
    freq[ch - '0']++;
```

Infatti i codici dei caratteri da `'0'` a `'9'` sono **consecutivi**, quindi per un carattere `ch` l'espressione intera `ch - '0'` è la **distanza** del suo codice da quello di `'0'`: `'0' - '0' = 0`, `'1' - '0' = 1`, ..., `'9' - '0' = 9`. È proprio l'indice cercato.

*Precisazioni aggiunte:* `getchar` restituisce un `int` e può restituire `EOF`; la slide lo assegna a un `char` e termina solo con `\n`, quindi se l'input finisce senza `\n` il ciclo non termina. Il confronto `ch >= '0' && ch <= '9'` si basa sulla consecutività dei codici delle cifre, garantita dallo standard C.

## 13. Esercizi su vettori

1. Leggere da tastiera e memorizzare una sequenza di interi di lunghezza prefissata `DIM`. Stampare quindi la sequenza in ordine inverso.
2. Leggere da tastiera i risultati (reali) di 20 esperimenti. Stampare il numero d'ordine e il valore degli esperimenti per i quali il risultato è minore del 50% della media.

*Nota:* l'enunciato a slide 508 dice «float», quello a slide 510 «reali».

### 13.1 Soluzione dell'esercizio 1

```c
#include <stdio.h>
#define DIM 20

int main() {
    int Mem[DIM];
    int i = 0;

    /* inserimento dei valori */
    printf("Inserire i %d interi della sequenza:\n", DIM);
    for (i = 0; i < DIM; i++) {
        printf("Inserire l'intero n. %d: ", i+1);
        scanf("%d", &Mem[i]);
    }
    /* stampa in ordine inverso */
    for (i = DIM - 1; i >= 0; i--)
        printf("%d\n", Mem[i]);
}
```

Il primo ciclo riempie il vettore, il secondo lo scorre da `DIM-1` fino a `0` con `i--`.

### 13.2 Soluzione dell'esercizio 2

```c
#include <stdio.h>
#define DIM 20

int main() {
    float ris[DIM], media;
    int i;

    /* inserimento dei valori */
    printf("Inserire i %d risultati dell'esperimento:\n", DIM);
    for (i = 0; i < DIM; i++) {
        printf("Inserire risultato n. %d: ", i+1);
        scanf("%f", &ris[i]);
    }
    /* calcolo della media */
    media = 0.0;
    for (i = 0; i < DIM; i++)
        media = media + ris[i];
    media = media / DIM;
    printf("Valore medio: %f\n", media);

    /* stampa dei valori minori di media*0.5 */
    printf("Stampa dei valori minori di media*0.5:\n");
    for (i = 0; i < DIM; i++)
        if (ris[i] < media * 0.5)
            printf("Risultato n. %d: %f\n", i, ris[i]);
}
```

`media / DIM` è una divisione fra `float` e `int`: `DIM` viene convertito a `float`, quindi la divisione è reale.

*Correzione/segnalazione:* il messaggio stampa `i` e non `i+1`, a differenza della numerazione usata in lettura («risultato n. 1» per `ris[0]`). Per mostrare il numero d'ordine coerente con l'inserimento servirebbe `i+1`.

### 13.3 Possibili ottimizzazioni

- Calcolare la media **mano a mano** che si leggono i valori, risparmiando un `for`.
- Dichiarare una variabile `soglia` in cui memorizzare `media * 0.5`, da usare nei confronti senza ricalcolarlo ogni volta.

## 14. Array multidimensionali

**Sintassi:**

```c
tipo-elementi nome-array [lung1][lung2]...[lungn];
```

Esempio: `int mat[3][4];` è una matrice $3\times4$ (3 righe, 4 colonne). Per ogni dimensione $i$ l'indice va da $0$ a $\mathtt{lung}_i-1$.

| | col. 0 | col. 1 | col. 2 | col. 3 |
|---|---|---|---|---|
| riga 0 | ? | ? | ? | ? |
| riga 1 | ? | ? | ? | ? |
| riga 2 | ? | ? | ? | ? |

Esempio con tre dimensioni: `int marketing[10][5][12];` (gli indici potrebbero rappresentare prodotti, venditori, mesi dell'anno).

### 14.1 Accesso agli elementi

```c
int i, mat[3][4];
...
i = mat[0][0];                      /* riga 0, colonna 0 (primo elemento) */
mat[2][3] = 28;                     /* riga 2, colonna 3 (ultimo elemento) */
mat[2][1] = mat[0][0] * mat[1][3];
```

Come per i vettori, l'unica operazione possibile sulle matrici è l'accesso agli elementi tramite l'operatore `[]`.

### 14.2 Lettura e stampa di una matrice

```c
#include <stdio.h>
#define RIG 2
#define COL 3

int main() {
    int mat[RIG][COL];
    int i, j;

    /* lettura matrice */
    printf("Lettura matrice %d x %d;\n", RIG, COL);
    for (i = 0; i < RIG; i++)
        for (j = 0; j < COL; j++)
            scanf("%d", &mat[i][j]);

    /* stampa matrice */
    printf("La matrice e':\n");
    for (i = 0; i < RIG; i++) {
        for (j = 0; j < COL; j++)
            printf("%6d ", mat[i][j]);
        printf("\n");    /* a capo dopo ogni riga */
    }
}
```

Il ciclo esterno scorre le righe, quello interno le colonne. Il `printf("\n")` è nel ciclo esterno e fuori dall'interno: stampa un a capo per ogni riga.

### 14.3 Somma di due matrici $M\times N$

Programma che legge due matrici $M\times N$ (ad esempio $4\times3$) e calcola la matrice somma:

```c
for (i = 0; i < M; i++)
    for (j = 0; j < N; j++)
        c[i][j] = a[i][j] + b[i][j];
```

### 14.4 Inizializzazione di matrici

```c
int mat[2][3] = {{1,2,3}, {4,5,6}};
int mat[2][3] = {1,2,3,4,5,6};
```

Entrambe danno

| 1 | 2 | 3 |
|---|---|---|
| 4 | 5 | 6 |

```c
int mat[2][3] = {{1,2,3}};
int mat[2][3] = {1,2,3};
```

Entrambe danno

| 1 | 2 | 3 |
|---|---|---|
| 0 | 0 | 0 |

```c
int mat[2][3] = {{1}, {2,3}};
```

dà

| 1 | 0 | 0 |
|---|---|---|
| 2 | 3 | 0 |

Con le graffe interne si riempie riga per riga e il resto di ogni riga è 0. Senza graffe interne i valori riempiono la matrice per righe e il resto è 0.

*Precisazione aggiunta:* le due righe di ciascuna coppia sono forme alternative della *stessa* inizializzazione, non da scrivere insieme nello stesso programma (ridichiarerebbero `mat`).

### 14.5 Esercizio: prodotto di matrici

Programma che legge una matrice $A$ ($M\times P$) e una matrice $B$ ($P\times N$) e calcola la matrice $C$ prodotto di $A$ e $B$. $C$ è $M\times N$ e

$$
C_{ij}=\sum_{k=0}^{P-1}A_{ik}\cdot B_{kj}.
$$

**Soluzione** (si omette la lettura di `a` e `b`; `M`, `N`, `P` sono definite con `#define`):

```c
int a[M][P], b[P][N], c[M][N];
...
/* calcolo prodotto */
for (i = 0; i < M; i++)
    for (j = 0; j < N; j++) {
        c[i][j] = 0;
        for (k = 0; k < P; k++)
            c[i][j] = c[i][j] + a[i][k] * b[k][j];
    }
```

Per ogni coppia $(i,j)$ si azzera l'accumulatore `c[i][j]` e si somma sul ciclo interno `k`.

Alternativa: tutti gli elementi di `c` possono essere inizializzati a 0 alla dichiarazione:

```c
int a[M][P], b[P][N], c[M][N] = {0};
...
for (i = 0; i < M; i++)
    for (j = 0; j < N; j++)
        for (k = 0; k < P; k++)
            c[i][j] += a[i][k] * b[k][j];
```

*Precisazione aggiunta:* in `c[M][N] = {0}` solo `c` è inizializzato (a zero): `a` e `b` no. Va ricordato che `i`, `j`, `k` devono essere dichiarati. Invariante del ciclo più interno: dopo `k` iterazioni `c[i][j]` vale $\sum_{h=0}^{k-1}A_{ih}B_{hj}$.

## 15. Modularizzazione

Nella vita quotidiana un problema complesso viene spesso **suddiviso in sottoproblemi** (di solito più semplici) risolti separatamente, poi le soluzioni si combinano. Esempio delle slide: i bignè alla crema richiedono di preparare la pasta choux, depositarne piccole quantità sulla teglia, cuocerle 7-8 minuti, preparare la crema e farcire. Ma per preparare pasta choux e crema servono le relative **ricette**.

La **scomposizione** o **modularizzazione** vale anche per la programmazione:

- si suddivide un problema complesso in problemi via via più semplici;
- i sottoproblemi sufficientemente elementari si risolvono direttamente;
- le soluzioni dei sottoproblemi si combinano per ottenere la soluzione del problema di partenza.

Due approcci:

- **top-down:** si parte dall'alto, considerando il problema nella sua interezza, e si procede verso il basso per raffinamenti successivi fino a ridurlo a sottoproblemi elementari;
- **bottom-up:** ci si occupa prima di risolvere singole parti del problema, per poi risalire con aggiustamenti successivi fino alla soluzione globale.

I linguaggi di programmazione offrono meccanismi di **astrazione** che favoriscono l'approccio modulare:

- **astrazione sui dati:** si possono definire nuovi tipi specifici per il problema (**tipi di dato astratti**), cioè collezioni di valori più le relative operazioni;
- **astrazione funzionale:** si possono definire **sottoprogrammi** per sottoproblemi specifici. Di solito sono **parametrici** e in C si realizzano con le **funzioni**; possono essere (ri)usati come le operazioni predefinite del linguaggio.

## 16. Funzioni

In una funzione matematica $y=f(x)$, a ogni valore della **variabile indipendente** (o **argomento**) $x$ corrisponde un valore della **variabile dipendente** $y$. In C:

- le variabili indipendenti sono i **parametri formali**;
- il risultato viene restituito con il comando **`return`**.

Un programma C è definito come un **insieme di funzioni**, una obbligatoria: il `main`.

In prima approssimazione una funzione è una **scatola nera**: riceve parametri di ingresso e produce un valore calcolato. Risolve un sottoproblema specifico e scambia informazioni con il `main` e con altre funzioni tramite parametri e risultato. Esempi: `abs` ($x\mapsto|x|$), `mcd` ($(x,y)\mapsto\mathrm{mcd}(x,y)$), `exp` ($(b,e)\mapsto b^e$).

### 16.1 Un esempio: `abs`

```c
int abs(int x)
{
    int ris;
    if (x < 0)
        ris = -x;
    else
        ris = x;
    return ris;
}
```

Uso:

```c
main()
{
    int x1, x2, z, w;
    ...
    z = abs(x1);
    ...
    printf("%d\n", w + abs(x2));
    ...
}
```

Una chiamata è usabile in un assegnamento oppure come operando in un'espressione.

*Precisazione aggiunta:* `abs` e `exp` sono nomi di funzioni della libreria standard (`<stdlib.h>`, `<math.h>`). Definirle con gli stessi nomi può dare conflitti se i relativi header sono inclusi: è un esempio didattico.

### 16.2 Perché le funzioni

La stesura di un programma riflette l'analisi funzionale del problema. L'uso delle funzioni nasconde i dettagli implementativi, ponendo l'accento su **cosa fa** il programma rispetto a **come lo fa**. Consente:

- **modularità**;
- **chiarezza e leggibilità**;
- **fattorizzazione del codice:** ogni funzione si tratta separatamente dal resto e se ne può cambiare l'implementazione senza modificare il programma che la usa;
- **riuso del codice:** chi scrive la funzione può non coincidere con chi la usa e la stessa funzione serve in altri programmi.

### 16.3 Definizione e chiamata

Due momenti distinti:

- la **definizione** della funzione: definisce il codice che realizza l'operazione astratta;
- la **chiamata**: corrisponde all'utilizzo della funzione.

A una stessa definizione possono corrispondere diverse chiamate (`z = abs(x1)` e `w + abs(x2)` nell'esempio precedente). Nella definizione, il codice fa riferimento ai **parametri formali** (qui `x`): un parametro formale non è un valore vero e proprio, ma un riferimento simbolico a un argomento della funzione.

La definizione consta di due parti: **intestazione** e **blocco** (come nel `main()`).

```c
int exp(int base, int esponente)    // INTESTAZIONE
{
    int ris = 1;
    while (esponente > 0)
    {
        ris = ris * base;
        esponente = esponente - 1;
    }
    return ris;
}
```

I parametri formali sono `base` ed `esponente`. L'intestazione indica il tipo del risultato (`int`), il nome (`exp`) e, per ogni parametro, tipo e nome.

*Precisazione aggiunta:* il codice calcola $\mathtt{base}^{\mathtt{esponente}}$ per `esponente` $\geq0$. Invariante del `while`: $\mathtt{ris}\cdot\mathtt{base}^{\mathtt{esponente}}=b_0^{e_0}$, dove $b_0,e_0$ sono i valori iniziali dei parametri; funzione di terminazione: `esponente`. All'uscita `esponente == 0`, quindi `ris` vale $b_0^{e_0}$. Per `esponente` negativo il ciclo non viene eseguito e la funzione restituisce 1.

### 16.4 Parametri attuali

Alla chiamata vengono forniti i valori degli argomenti, o **parametri attuali**, rispetto ai quali effettuare il calcolo.

```c
int exp(int base, int esponente)
{...}

int main() {
    int b, e, r1, r2;
    ...
    r1 = exp(2, 5);
    ...
    scanf("%d %d", &b, &e);
    r2 = exp(b, e);
    ... }
```

- Prima chiamata `exp(2,5)`: `2` è il parametro attuale corrispondente a `base`, `5` a `esponente`.
- Seconda chiamata `exp(b,e)`: `b` corrisponde a `base`, `e` a `esponente`.

*Precisazione aggiunta:* in `exp` il parametro `esponente` viene modificato nel corpo. In C i parametri sono passati **per valore**: la funzione lavora su una copia, quindi `e` nel `main` non cambia. Le slide non trattano ancora esplicitamente il meccanismo di passaggio.

## Fonte e precisazioni

- Paolo Mancarella, *Fondamenti di Programmazione*, Lezione 16, 10 novembre 2026, slide 487-527, originale: [Lezione_16.pdf](file:///Users/michelangelogubinelli/Downloads/Lezione_16.pdf).
- Le slide mostrano apici tipografici in `'0'`, `"%d"` e simili e un `>=` scritto come `> =` nell'esempio dell'ordine inverso: nel codice qui sono normalizzati a C valido.
- Sono aggiunte mie, indicate come precisazioni: comportamento indefinito di `x++ + (x*y)`, VLA, idioma `{0}` e `{}`, uso di `getchar` con `EOF`, nomi `abs`/`exp` della libreria standard, passaggio per valore e gli invarianti degli esempi.
- Segnalazioni: la stampa di `i` invece di `i+1` nell'esercizio 2; l'errore a tempo di compilazione per `int x[5] = {};` è valido nello standard C fino a C17.
