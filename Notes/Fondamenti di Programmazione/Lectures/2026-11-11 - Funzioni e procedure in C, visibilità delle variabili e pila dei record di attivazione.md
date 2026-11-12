---
type: lecture-note
course: Fondamenti di Programmazione
date: '2026-11-11'
title: Funzioni e procedure in C, visibilità delle variabili e pila dei record di attivazione
source: Lezione_17.pdf (slide 528-566)
teaching_model: anthropic/claude-sonnet-5.5
---

# Funzioni e procedure in C, visibilità delle variabili e pila dei record di attivazione

La lezione prosegue la [[2026-11-10 - Do-while, incremento, array e matrici in C, introduzione alle funzioni|lezione 16]] e introduce l'astrazione procedurale in C: definizione e chiamata di **funzioni**, istruzione `return`, **prototipi**, **passaggio dei parametri per valore** e **procedure** (funzioni di tipo `void`). Segue la struttura generale di un programma C, i **blocchi**, le regole di **visibilità** (*scoping*) e di **durata** delle variabili, fino alla gestione a **pila** della memoria a tempo di esecuzione con un esempio di evoluzione dei **record di attivazione**.

I cicli `for` usati negli esempi sono quelli della [[2026-11-05 - Tipi e conversioni in C, selezione e cicli for|lezione 15]]. La data riportata sulla prima slide è l'11 novembre 2026. I frammenti sono codice C; le precisazioni e le correzioni rispetto alle slide sono segnalate.

## 1. Funzioni: definizione

Come le variabili, anche le funzioni vanno **dichiarate**. La **definizione** di una funzione ha la sintassi

```text
intestazione blocco
```

dove `blocco` è il **corpo della funzione** e l'**intestazione** ha la forma

```c
id-tipo identificatore (parametri-formali)
```

- `id-tipo` è il **tipo del risultato** calcolato dalla funzione;
- `identificatore` è il **nome** della funzione, un qualsiasi identificatore C valido;
- `parametri-formali` è una sequenza (eventualmente vuota) di dichiarazioni di parametro (tipo e nome) separate da virgole.

Esempi di intestazioni:

```c
int abs (int x)
int MassimoComunDivisore(int a, int b)
float Potenza(float x, float y)
float media (int vet[], int lung)
```

## 2. Chiamata (invocazione, attivazione)

La sintassi di una **chiamata** è

```c
identificatore (lista-parametri-attuali)
```

dove `identificatore` è il nome della funzione e `lista-parametri-attuali` è una sequenza di **espressioni** separate da virgole. I parametri attuali devono corrispondere, per **numero e tipo**, ai parametri formali, altrimenti viene rilevato un errore di sintassi.

```c
int mcd, x, y1, y2;
float exp, w, v, z;
  ...
mcd = MassimoComunDivisore(x+1, y1+y2);
exp = Potenza(z, 3.0);
  ...
exp = Potenza(z, Potenza(v,w));
```

I parametri attuali sono espressioni qualsiasi (`x+1`, `y1+y2`, `3.0`) e possono essere a loro volta chiamate (`Potenza(v,w)` nell'ultima riga).

*Precisazione aggiunta:* nell'esempio le funzioni `MassimoComunDivisore` e `Potenza` non sono definite sulle slide; sono solo illustrazioni di sintassi. Il nome `exp` coincide con una funzione di `<math.h>`: va evitato in un programma reale che includa quell'intestazione.

### 2.1 Semantica informale di una chiamata

Se nel corpo di una funzione **F** compare la chiamata di un'altra funzione **G**, **F** si dice **chiamante** e **G** **chiamata**. Per esempio, se nel `main` c'è l'assegnamento `x = abs(x);`, `main` è il chiamante e `abs` il chiamato.

Una chiamata di funzione è un'**espressione**, valutata così:

1. l'esecuzione di F viene sospesa e si "cede il controllo" a G, dopo aver associato i parametri attuali ai parametri formali (**passaggio dei parametri**, vedi sezione 5);
2. si eseguono le istruzioni di G, a partire dalla prima;
3. l'esecuzione di G termina con l'istruzione speciale **`return`**, che calcola il risultato della chiamata (il valore dell'espressione corrispondente alla chiamata);
4. al termine di G il controllo ritorna a F, che prosegue dal punto in cui G era stata attivata.

## 3. Il valore calcolato: l'istruzione `return`

Esempio: funzione che restituisce il massimo fra due interi, chiamata dal `main`.

```c
int max(int m, int n) {
    if (m >= n)
        return m;
    else
        return n;
}

int main() {
    int a, b, massimo;
    scanf("%d%d", &a, &b);
    massimo = max(a,b);
    printf("massimo = %d\n", massimo);
}
```

Il `main` **comunica** a `max`, tramite i parametri attuali, i valori (di `a` e `b`) su cui calcolare la funzione; `max` **comunica** il risultato al `main` tramite il valore di ritorno.

Nel corpo **deve** esserci l'istruzione `return espressione;`, la cui esecuzione comporta:

- il calcolo del valore di `espressione`, che viene restituito al chiamante come risultato della funzione;
- la cessione del controllo alla funzione chiamante.

Osservazioni delle slide:

- in `return espressione`, il tipo di `espressione` deve essere lo stesso del tipo del risultato dichiarato nella definizione;
- l'esecuzione di `return espressione` comporta la **terminazione** dell'esecuzione della funzione. Quindi le istruzioni che seguono sono irraggiungibili:

```c
int max(int m, int n) {
    if (m >= n)
        return m;
    else
        return n;
    printf("pippo");   /* non viene mai eseguita */
}
```

*Precisazione aggiunta:* in C, se il tipo dell'espressione differisce da quello del risultato dichiarato, il valore viene convertito implicitamente come in un assegnamento (vedi [[2026-11-05 - Tipi e conversioni in C, selezione e cicli for|lezione 15]]); l'uguaglianza dei tipi richiesta dalla slide è la scelta stilisticamente sicura. Inoltre `int main()` senza `return` finale è accettato: negli standard recenti, per `main`, il raggiungimento della fine equivale a `return 0;`.

## 4. Dichiarazioni di funzione (prototipi) e ordine

I parametri attuali devono corrispondere in numero e tipo (in ordine) ai formali. Per permettere al compilatore questo controllo, **l'intestazione deve essere nota prima della chiamata**. Ci sono due possibilità:

1. la funzione è stata **definita** prima;
2. la funzione è stata **dichiarata** prima.

La **dichiarazione di funzione** (o **prototipo**) ha sintassi

```c
id-tipo identificatore (parametri-formali);
```

cioè l'intestazione seguita da `;` al posto del blocco. Inoltre:

- nella lista dei parametri formali può mancare il nome dei parametri: interessa solo il tipo;
- il compilatore usa la dichiarazione per controllare che l'attivazione sia corretta;
- dopo **deve** esserci una definizione della funzione coerente con la dichiarazione.

### 4.1 Ordine consigliato

Bisogna dichiarare o definire ogni funzione **prima** di usarla. È pratica comune specificare, in quest'ordine:

1. dichiarazioni (prototipi) di tutte le funzioni (tranne `main`);
2. definizione di `main`;
3. definizioni delle funzioni.

In questo modo ogni funzione è dichiarata prima di essere usata. L'ordine delle definizioni non deve necessariamente corrispondere a quello delle dichiarazioni.

### 4.2 Coerenza fra prototipo e definizione

```c
int max(int, int);
int foo(char, int);

int main() ...

int max(int m, int n) ...      /* OK: definizione coerente con il prototipo */
{ ... }

int foo(int z, char c) ...     /* NO: definizione non coerente con il prototipo */
{ ... }
```

Nella definizione di `foo` i parametri formali non sono nell'ordine specificato dal prototipo (`char, int` contro `int, char`).

## 5. Passaggio dei parametri

I parametri permettono lo **scambio di dati** tra chiamante e chiamato:

- nell'intestazione/prototipo c'è la lista dei **parametri formali** (con tipo associato), che sono **variabili**;
- nell'attivazione c'è la lista dei **parametri attuali**, che possono essere espressioni.

Al momento della chiamata **ogni parametro formale viene inizializzato al valore del corrispondente parametro attuale**: il valore del parametro attuale è **copiato** nella locazione di memoria del parametro formale. Questo meccanismo si chiama **passaggio per valore**.

Esempio:

```c
int succ (int);    /* prototipo di succ */

main()
{  int z, w;
   z = 10;
   w = succ(z);
   printf("%d", w);
}

int succ (int x)
{  x = x + 1;
   return x;
}
```

L'effetto della chiamata `succ(z)` può essere **simulato** dal codice seguente:

```c
x = 10;       /* il parametro formale si inizializza con il valore del parametro attuale */
x = x + 1;    /* esecuzione del corpo della funzione succ */
return x;
```

Chiamate diverse corrispondono a inizializzazioni diverse delle variabili dei parametri formali:

| Chiamata | Simulazione | Valore assegnato a `w` |
|---|---|---|
| `w = succ(20);` | `x = 20; x = x + 1; return x;` | 21 |
| `z = 10; w = succ(z+3);` | `x = 13; x = x + 1; return x;` | 14 |

Se non c'è corrispondenza perfetta fra il tipo del parametro formale e quello dell'attuale, viene effettuata una **conversione implicita** di tipo secondo le regole già viste. Il passaggio dei parametri di tipo **array** *non* comporta la copia dei valori dell'array (le slide rimandano alla trattazione successiva).

*Precisazione aggiunta:* in `succ`, `z` nel `main` resta 10 anche dopo la chiamata, perché `x` è una copia. Il programma stampa `11`.

## 6. Procedure

Non sempre le operazioni astratte necessarie si descrivono come funzioni matematiche. Esempio delle slide: un'interfaccia utente per la stampa di figure geometriche, in cui l'utente sceglie (1) la forma, (2) la dimensione, (3) il carattere di riempimento, ecc. Qui il compito dell'operazione astratta non è (o non è soltanto) produrre un valore, ma produrre effetti di altro tipo, tipicamente **modifiche di stato**. Si usano allora le **procedure**:

- le **procedure** sono un'astrazione delle **istruzioni**;
- le **funzioni** sono un'astrazione delle **espressioni**.

### 6.1 Procedure in C

Una procedura è una funzione il cui tipo del risultato è il tipo speciale **`void`**. Definizione, dichiarazione e chiamata sono analoghe a quelle delle funzioni.

```c
void emoticon (int n)
{  /* stampa n volte la sequenza -:) */
   int i;
   for (i=0; i<n; i++)
     {putchar(':'); putchar('-'); putchar(')'); putchar(' ');}
}

main()  {
   ...;
   emoticon(3);
   ...  }
```

`emoticon(3)` stampa `:-) :-) :-) `. Le procedure non contengono di solito un'istruzione `return`; se la contengono è del tipo `return;`, che non calcola alcun valore ma cede soltanto il controllo al chiamante.

La semantica di una chiamata di procedura **P** da una funzione/procedura **F** è analoga a quella della chiamata di funzione, ma una chiamata di procedura è un'**istruzione** (non un'espressione). In particolare:

- il passaggio dei parametri avviene **per valore**, come nelle funzioni;
- il controllo torna al chiamante al termine dell'esecuzione del blocco che costituisce il corpo della procedura, oppure in corrispondenza di un `return;`.

Il C non distingue fra funzioni e procedure (le seconde sono casi particolari delle prime), ma concettualmente conviene vedere le funzioni come astrazioni di espressioni e le procedure come astrazioni di istruzioni.

### 6.2 Esempio: cornice di asterischi

```c
void stampaCornice(int altezza)
{
  int i;
  printf("********************\n");
  for (i=1; i<=altezza; i++)
     printf("*                  *\n");
  printf("********************\n");
  return;
}
```

La procedura stampa una cornice di asterischi con altezza parametrica: una riga di asterischi, `altezza` righe con asterisco ai bordi e spazi interni, una riga di asterischi. *Precisazione:* nell'immagine delle slide la larghezza esatta (numero di asterischi e di spazi) non è leggibile in modo affidabile; qui è ricostruita con 20 asterischi e 18 spazi interni, e la larghezza non influisce sulla logica. Il `return;` finale è facoltativo.

### 6.3 Una procedura che modifica lo stato: `abs` (versione non corretta)

Come astrazione di istruzioni, una procedura può dover **modificare lo stato**. Esempio: una procedura `abs` che assegna a una variabile intera `x` il suo valore assoluto. Il chiamante deve comunicare la variabile `x`; la procedura deve analizzarne il valore e, se necessario, effettuare il rimpiazzamento. La realizzazione seguente **non è corretta**:

```c
void abs(int x)
{    if (x < 0)
         x = -x;   }
```

Simulando la chiamata:

```c
int z = -5;
abs(z);       /* equivale a:   x = -5;
                                 if (x < 0) x = -x;   */
```

La modifica del parametro formale **non si ripercuote** sul parametro attuale (il passaggio è per valore): dopo la chiamata `z` vale ancora $-5$.

*Precisazione aggiunta:* per modificare una variabile del chiamante servirà passare un indirizzo (puntatori), argomento delle lezioni successive. Inoltre `abs` è anche il nome di una funzione di `<stdlib.h>`: definirla di nuovo in un programma reale può dare conflitti.

## 7. Variabili locali

Il blocco che costituisce il corpo di una funzione o procedura può contenere dichiarazioni di variabili:

```c
void stampaCornice(int altezza)
{
  int i;  // variabile LOCALE
  ...
}
```

Le variabili locali:

- sono variabili proprie della funzione;
- hanno **tempo di vita** limitato alla durata della chiamata;
- più in generale, un identificatore dichiarato nel corpo di una funzione è detto **locale** alla funzione e **non è visibile all'esterno** (ad esempio nel `main`), ma solo nel corpo della stessa.

Ciò è un caso particolare di regole generali sulla **visibilità** e sul **tempo di vita** degli identificatori di un programma.

## 8. Struttura generale di un programma C

Un programma C comprende, in ordine:

1. la **parte direttiva**;
2. la **parte dichiarativa globale**: dichiarazioni di costanti, di tipi (che si vedranno più avanti), di variabili (**variabili globali**) e **prototipi** di procedure/funzioni;
3. il **programma principale** (`main`);
4. le **definizioni** di funzioni/procedure.

Esempio:

```c
#include <stdio.h>      /* parte direttiva */
#define LUNG 10

int i = 1;              /* variabili globali */
int j = 2;

int Q(int);             /* prototipi di funzioni e procedure */
void R(float);

int main()              /* programma principale */
{
int x = 10;
float y = 3.4;
char c = 'a';
x = Q(x);
R(y);
}

int Q(int v) { ... }    /* definizioni di funzioni e procedure */
void R(float z) { ... }
```

## 9. Blocchi

Il corpo di una funzione/procedura, come il corpo del programma principale, è un **blocco**. In C un blocco è costituito da:

- una **parte dichiarativa** (può non esserci);
- una **parte esecutiva** (sequenza di istruzioni).

Nel `main` o nel corpo delle funzioni possono comparire diversi blocchi, che possono essere

- **annidati**: un blocco è una delle istruzioni di un altro blocco;
- **paralleli**: blocchi che fanno parte della stessa sequenza di istruzioni.

```c
/* blocchi annidati */          /* blocchi paralleli */
{                               {
   int x;                          int x;
   x = 10;                         x = 10;
   {                               ...
     int z;                     }
     z = 20 ;                   {
     ...                           int z;
   }                               z = 20;
   ...                             ...
}                               }
```

Anche la parte esecutiva del programma principale e di una funzione/procedura è un blocco. Gli identificatori dichiarati nella parte dichiarativa di un blocco sono detti **nomi locali** del blocco e devono essere **tutti diversi** fra loro. Nel caso di una funzione/procedura, fanno parte dei nomi locali anche gli identificatori dei **parametri formali**.

```c
{
int x;   /* NO! identificatore x dichiarato   */
char x;  /* due volte nello stesso blocco     */
...
}

void p(int x, char y)
{
int x;      /* NO! identificatore x già usato per un parametro formale */
...
}
```

In **blocchi diversi** possono invece essere usati gli stessi identificatori:

```c
main()
{
int x;     /* x, y: variabili locali del main */
int y;
...
   {
     char x;    /* x: variabile locale del blocco annidato */
     ...
   }
...
}

void p(int x)
{
int y;         /* x,y: variabili locali della procedura p */
...
}
```

## 10. Ambienti e regole di visibilità (scoping)

Un programma C può avere una struttura molto complessa per via dell'uso di funzioni, procedure e blocchi, quindi servono regole precise per l'uso dei nomi. Definizioni:

- **Ambiente globale**: l'insieme di tutti gli elementi (nomi) dichiarati nella parte dichiarativa globale del programma.
- **Ambiente locale di una funzione**: l'insieme di tutti gli elementi (nomi) dichiarati nella parte dichiarativa della funzione e nella sua intestazione.
- **Ambiente locale di un blocco**: l'insieme di tutti gli elementi (nomi) dichiarati nella parte dichiarativa del blocco.

Ne segue che è possibile dichiarare più volte lo stesso identificatore (anche con significati o tipi diversi) purché in **ambienti diversi**. Ciò evita il proliferare di identificatori, ma pone il problema di stabilire il significato di un riferimento a un identificatore in un punto qualsiasi del programma.

Nell'esempio della sezione 9, se in un punto viene eseguita un'istruzione `x = ...`, a quale delle **tre** dichiarazioni di `x` ci si riferisce? Dipende dal punto in cui si trova l'assegnamento e dalle **regole di visibilità** (o *scoping*).

### 10.1 Le regole

Gli identificatori presenti nell'ambiente

- **globale** sono visibili in tutte le funzioni e in tutti i blocchi del programma (gli identificatori predefiniti del linguaggio si intendono parte dell'ambiente globale);
- **locale di una funzione** sono visibili nel corpo della funzione, compresi eventuali blocchi in esso contenuti;
- **locale di un blocco** sono visibili nella parte esecutiva del blocco, compresi eventuali blocchi in essa contenuti.

Se un identificatore è definito in più punti, la definizione valida è quella dell'**ambiente più vicino al punto di utilizzo**. In particolare una variabile locale "nasconde" un'eventuale variabile omonima definita nell'ambiente superiore (**shadowing** o oscuramento) per tutto il blocco.

In altri termini, l'**ambito di visibilità** di un identificatore è determinato dalla posizione della sua dichiarazione:

| Dove è dichiarato | Ambito | Dove è visibile |
|---|---|---|
| all'interno di un blocco | livello di blocco | solo in quel blocco (compresi i blocchi annidati) |
| all'interno di una funzione (anche nell'intestazione) | livello di funzione | solo nel corpo della funzione (compresi i blocchi annidati) |
| all'esterno delle funzioni e del `main` | livello di programma | ovunque nel programma (variabile **globale**) |

### 10.2 Esempio completo con shadowing

```c
int x1=10, x2=20;
char c='a';

int f(int);

main()
{
int x1=30;    /* nasconde la variabile globale x1 */
x2 = x1+x2;   /* x1 è quella locale, x2 è globale */
printf("x1=%d   x2=%d\n", x1, x2);   /* stampa x1=30  x2=50  */
  { int x3=50;
    x1=f(x3); /* x1 è quella locale al primo blocco */
    printf("x1=%d   x2=%d\n", x1, x2);   /* stampa x1=150  x2=50 */
  }
}

int f(int x1)  /* nasconde la variabile globale x1 */
{ int x2;       /* nasconde la variabile globale x2 */
  x2 = x1 + 100;  /* x1 è il parametro formale, x2 la var. locale */
  return x2;
}
```

Analisi:

- nel `main`, `x1 = 30` nasconde la globale `x1`, mentre `x2` è ancora la globale, quindi `x2 = x1 + x2` assegna $30 + 20 = 50$ alla globale; si stampa `x1=30 x2=50`;
- nel blocco annidato `x3 = 50`; `f(x3)` restituisce $50 + 100 = 150$ (in `f`, `x1` è il parametro formale e `x2` una variabile locale che nasconde la globale) e questo valore va nella `x1` locale al `main`; si stampa `x1=150 x2=50`.

*Precisazione alla slide 554:* nel commento "x1 è quella locale al primo blocco" il riferimento è alla `x1` dichiarata nel blocco del `main`, non a un'altra variabile: il blocco annidato dichiara solo `x3`. Il globale `c` non viene usato.

### 10.3 Rappresentazione grafica: modello a contorni

Ogni ambiente è rappresentato da un rettangolo con gli identificatori in esso contenuti, e gli ambienti annidati sono rettangoli interni. Per l'esempio precedente:

- ambiente **globale**: `x1, x2, c`;
  - ambiente di **`main`**: `x1`;
    - ambiente del **blocco** annidato: `x3`;
  - ambiente di **`f`**: `x1, x2`.

Il rettangolo di `f` è dentro quello globale ma **non** dentro quello di `main`: da `f` non si vedono le variabili di `main`.

## 11. Durata delle variabili

Una variabile ha un suo **tempo di vita**: viene **creata** (le viene riservato uno spazio di memoria) e viene (o può essere) **distrutta** (viene rilasciato lo spazio di memoria corrispondente). Si distinguono due classi:

- variabili **automatiche**: vengono create ogni volta che si entra nel loro ambiente di visibilità e distrutte all'uscita di tale ambiente. Esempi: le variabili **locali di un blocco** vengono create all'ingresso del blocco, `{`, e distrutte all'uscita, `}`; le variabili **locali di una funzione** sono create al momento della chiamata e distrutte all'uscita;
- variabili **statiche**: vengono create una sola volta e distrutte solo al termine dell'esecuzione del programma (il corso non ne farà uso).

Per funzioni o blocchi eseguiti più volte (funzione chiamata in punti diversi, blocco all'interno di un ciclo) le variabili automatiche corrispondenti possono essere associate di volta in volta a locazioni di memoria diverse; quindi il loro valore **non persiste** tra un'esecuzione e la successiva.

*Precisazione aggiunta:* le variabili globali hanno anch'esse durata statica (per l'intera esecuzione), anche se la slide le discute solo nel contesto della visibilità; la parola chiave `static` per variabili locali non viene trattata.

## 12. Gestione della memoria a tempo di esecuzione

Codice macchina e dati risiedono entrambi in memoria, ma in zone separate:

- la memoria per il codice macchina è fissata a tempo di compilazione;
- la memoria per i dati (in particolare per le variabili automatiche) cresce e decresce dinamicamente durante l'esecuzione ed è gestita a **pila**.

Una **pila** (**stack**) è una struttura dati con accesso **LIFO** (*Last In First Out*, ultimo entrato primo servito), come una pila di piatti da lavare.

Il sistema gestisce in memoria la **pila dei record di attivazione (RDA)**:

- per ogni **chiamata di funzione** viene creato (e allocato) un nuovo RDA in cima alla pila;
- al termine della chiamata il RDA viene rimosso dalla pila.

Ogni RDA contiene le locazioni di memoria per i parametri formali (se presenti), quelle per le variabili locali (se presenti) e altre informazioni che il corso non analizza. Anche gli ambienti locali dei blocchi vengono allocati/deallocati sulla pila.

Come funziona:

- il primo RDA viene riservato per il `main()`;
- a ogni attivazione di funzione o entrata in un blocco annidato viene allocato un nuovo RDA in cima alla pila;
- all'uscita dalla funzione o dal blocco annidato il corrispondente RDA viene rilasciato, liberando la memoria occupata;
- la **dimensione** di un RDA è nota in fase di compilazione, mentre **non lo è** (e non può esserlo) il numero di attivazioni di una funzione o di ingressi in un blocco annidato.

### 12.1 Esempio: evoluzione della pila

```c
int f(int);
main()
{
  int x, y, z;
  x=10;
  y=20;          /* blocco principale */
  z = f(x);      /* prima chiamata di f */
     {
     int x=50;   /* uscita da f e ingresso nel blocco annidato */
     y=f(x);     /* seconda chiamata di f */
     z=y;        /* uscita da f */
     }
  ...            /* uscita dal blocco annidato */
}

int f(int a)
{
  int z;
  z = a + 1;
  return z;
}
```

Le slide mostrano la pila in sei "punti" (il primo RDA in basso, la cima in alto). Le caselle `?` indicano valori indeterminati.

| Punto | Momento | Pila (dal basso verso l'alto) |
|---|---|---|
| 1 | dopo `y=20`, prima della prima chiamata | `main`: `x=10, y=20, z=?` |
| 2 | dentro la prima chiamata di `f`, prima di `z = a + 1` | `main`: `x=10, y=20, z=?`; `f`: `a=10, z=?` |
| 3 | uscita da `f`, ingresso nel blocco annidato | `main`: `x=10, y=20, z=11`; blocco: `x=50` |
| 4 | dentro la seconda chiamata di `f` | `main`: `x=10, y=20, z=11`; blocco: `x=50`; `f`: `a=50, z=?` |
| 5 | uscita da `f`, prima di `z=y` | `main`: `x=10, y=51, z=11`; blocco: `x=50` |
| 6 | uscita dal blocco annidato | `main`: `x=10, y=51, z=51` |

Note:

- al punto 3 la `x` del blocco (50) nasconde la `x` di `main` (10): per questo la seconda chiamata riceve 50 come parametro attuale, non 10;
- ogni chiamata a `f` crea un RDA **distinto** con un proprio `z`, che non ha nulla a che vedere con il `z` di `main`: la `z` locale di `f` scompare all'uscita;
- all'ultimo punto `z=y` ha assegnato 51 alla `z` di `main`, e il RDA del blocco annidato (con `x=50`) è stato rimosso.

## Fonte e precisazioni

- Paolo Mancarella, *Fondamenti di Programmazione*, Lezione 17, 11 novembre 2026, slide 528-566, originale: [Lezione_17.pdf](file:///Users/michelangelogubinelli/Downloads/Lezione_17.pdf).
- Il numero di slide si riferisce a quelli stampati sulle slide (la prima slide, di copertina, non ha numero).
- Le slide non contengono ragionamenti di correttezza (triple di Hoare, invarianti) né esercizi con soluzione; gli esempi sono quelli riportati sopra.
- Gli esempi usano la forma `main()` senza tipo di ritorno, di stile C classico: lo standard C moderno richiede `int main()` (o `int main(void)`); il codice va quindi letto come illustrativo. Anche `printf`/`putchar` richiedono `#include <stdio.h>`.
- La larghezza della cornice di `stampaCornice` è ricostruita (slide non leggibile in modo affidabile). Le osservazioni sul nome `abs` e su `exp` in `<stdlib.h>`/`<math.h>`, sulla conversione implicita in `return`, sulla durata statica dei globali e sui puntatori sono precisazioni aggiunte.
