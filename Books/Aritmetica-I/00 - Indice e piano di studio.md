# Aritmetica I — Dalle idee alle dimostrazioni

Questo libro nasce da tutto il materiale di Aritmetica presente nel vault: 15 note e 14 trascrizioni, dal 23 settembre al 1° novembre 2026. Il percorso segue le dipendenze fra le idee. Il suo filo conduttore è imparare a trasformare una domanda in un problema più semplice, senza perdere informazioni: contare attraverso una corrispondenza, sostituire due interi con resti più piccoli, studiare un'equazione attraverso le sue classi di soluzioni.

Le spiegazioni e gli esercizi sono una nuova esposizione didattica. I raccordi e i completamenti delle dimostrazioni sono indicati nelle fonti dei capitoli; non sono citazioni dei docenti. I materiali originari rimangono consultabili: [[Books/Aritmetica-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

## Come studiare

Leggi prima la domanda iniziale e prova gli esempi con carta e penna. Prima di leggere una dimostrazione, fermati a dire che cosa sai e che cosa vuoi ottenere. Dopo averla letta, ricostruisci il passaggio decisivo senza guardare. Saper ripetere un enunciato serve; saper spiegare perché le ipotesi sono necessarie mostra una comprensione più profonda.

Gli esercizi finali passano dall'uso diretto dei concetti alla scelta autonoma del metodo e alla dimostrazione. I riscontri sono richiudibili: aprili dopo un tentativo. Un risultato numerico corretto è un controllo; per gli esercizi dimostrativi occorre saper giustificare ogni implicazione. Puoi considerare acquisito un capitolo quando risolvi gli esercizi fondamentali senza suggerimenti e sai affrontare quelli di collegamento spiegando la scelta del metodo.

### Come leggere i blocchi

| Blocco | A che cosa serve |
|---|---|
| **In questo capitolo** | All'inizio: che cosa imparerai a fare e l'idea che lega il capitolo. |
| **Concetto chiave** | Un pilastro del libro: un risultato o una definizione che verrà riusato molte volte. Se ripassi in fretta, parti da qui. |
| **Esempi e controesempi** | Subito dopo una definizione: casi che la soddisfano e casi che violano *una sola* condizione, per vedere perché ogni condizione serve. |
| **Attenzione** | Un errore frequente, con il motivo per cui è un errore. |
| **Riscontro** | La soluzione di un esercizio, chiusa: aprila solo dopo averci provato. |

## La mappa del percorso

Le frecce indicano «serve per». Le tre parti non sono compartimenti stagni: il linguaggio delle funzioni (01) e l'induzione (02) reggono tutto, la divisione euclidea (08) è la radice di tutta l'aritmetica modulare, e le strutture della Parte III rileggono come casi di un'unica teoria i calcoli fatti nella Parte II.

```mermaid
flowchart TD
  subgraph P1["Parte I — linguaggio e conteggio"]
    C01["01 Linguaggio"] --> C02["02 Induzione"]
    C01 --> C03["03 Contare con funzioni"]
    C03 --> C04["04 Binomiali"] --> C05["05 Ripetizioni"] --> C06["06 Inclusione-esclusione"]
    C02 --> C07["07 Ricorrenze"]
    C04 --> C07
  end
  subgraph P2["Parte II — interi e resti"]
    C08["08 Euclide e Bézout"] --> C09["09 Fattorizzazione unica"]
    C08 --> C10["10 Diofantee"]
    C08 --> C11["11 Congruenze"] --> C12["12 Teorema cinese"]
    C11 --> C13["13 Quozienti"]
  end
  subgraph P3["Parte III — strutture"]
    C14["14 Gruppi"] --> C15["15 Anelli e campi"]
    C14 --> C16["16 Ciclici e ordine"] --> C17["17 Lagrange, Eulero, Fermat"]
    C17 --> C18["18 Esponenziali"]
    C17 --> C19["19 Sviluppi decimali"]
    C17 --> C20["20 Polinomiali"]
  end
  C02 --> C08
  C13 --> C14
  C12 --> C15
  C12 --> C20
```

## La mappa delle strutture

Nella Parte III compaiono molte parole nuove: gruppo, abeliano, anello, dominio, campo, unità, omomorfismo. Non sono definizioni slegate: ognuna aggiunge una regola alla precedente. Lo schema si legge dall'alto: scendendo, le strutture rispettano più regole, quindi ci sono meno esempi ma si può calcolare con più libertà.

```mermaid
flowchart TD
  S["Insieme con un'operazione"] -->|"+ associatività, neutro, inversi"| G["Gruppo — cap. 14<br/>S₃, U(n), ℤ/nℤ con +"]
  G -->|"+ commutatività"| A["Gruppo abeliano<br/>ℤ, ℤ/nℤ, U(n)"]
  G -->|"generato da un solo elemento"| CY["Gruppo ciclico — cap. 16<br/>ℤ, ℤ/nℤ, U(7)"]
  A -->|"+ un prodotto associativo, distributivo, con 1"| R["Anello in senso ampio<br/>matrici 2×2 reali"]
  R -->|"+ prodotto commutativo"| CR["Anello commutativo con 1 — cap. 15<br/>è ciò che il libro chiama «anello»<br/>ℤ/6ℤ"]
  CR -->|"+ nessun divisore dello zero"| D["Dominio d'integrità<br/>ℤ"]
  D -->|"+ ogni non nullo è invertibile"| F["Campo<br/>ℚ, ℝ, ℤ/pℤ con p primo"]
```

Due ponti collegano i due rami. Ogni anello, dimenticando il prodotto, è un gruppo abeliano rispetto alla somma. E gli elementi invertibili di un anello, le sue **unità**, formano un gruppo rispetto al prodotto: da $\mathbb Z/n\mathbb Z$ nasce così $U(n)$, il gruppo su cui lavorano Eulero, Fermat e le congruenze esponenziali.

| Struttura | Operazioni | Che cosa puoi fare | Esempio tipico | Capitolo |
|---|---|---|---|---|
| Gruppo | una | risolvere $ax=b$ e cancellare | $U(10)$, $S_3$ | [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni\|14]] |
| Gruppo ciclico | una | descrivere tutto con le potenze di un elemento | $\mathbb Z/n\mathbb Z$ | [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine\|16]] |
| Anello | due | sommare, sottrarre, moltiplicare | $\mathbb Z$, $\mathbb Z/n\mathbb Z$ | [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi\|15]] |
| Campo | due | anche dividere per ogni elemento non nullo | $\mathbb Q$, $\mathbb Z/p\mathbb Z$ | [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi\|15]] |
| Omomorfismo | — | trasportare i calcoli da una struttura a un'altra | riduzione modulo $n$ | [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi\|15]] |

## I pilastri del libro

Ogni capitolo segnala con un blocco **Concetto chiave** i risultati su cui si regge il resto. Questa è la loro lista completa: se sai enunciarli, spiegare perché valgono e dire a che cosa servono, hai lo scheletro del corso. Usala per ripassare prima di un esame.

**Parte I**

| Capitolo | Concetti chiave |
|---|---|
| [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni\|01 · Il linguaggio delle dimostrazioni]] | Doppia inclusione · Negazione dei quantificatori · Inversa e biiezione |
| [[Books/Aritmetica-I/02 - Naturali e induzione\|02 · Naturali e induzione]] | Buon ordinamento · Principio di induzione · Esistenza della fattorizzazione in primi |
| [[Books/Aritmetica-I/03 - Contare attraverso le funzioni\|03 · Contare attraverso le funzioni]] | Principio di corrispondenza · Principio della somma e del prodotto · Funzioni, iniezioni, permutazioni |
| [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali\|04 · Sottoinsiemi e coefficienti binomiali]] | Formula del coefficiente binomiale · Identità di Pascal · Doppio conteggio |
| [[Books/Aritmetica-I/05 - Distribuzioni e ripetizioni\|05 · Distribuzioni e ripetizioni]] | Sovraconteggio uniforme · Coefficiente multinomiale · Stelle e sbarre |
| [[Books/Aritmetica-I/06 - Inclusione ed esclusione\|06 · Inclusione ed esclusione]] | Principio di inclusione-esclusione · Il contributo di un elemento vale 1 · Numero di suriezioni |
| [[Books/Aritmetica-I/07 - Ricorrenze e successioni\|07 · Ricorrenze e successioni]] | Unicità da ricorrenza e dati iniziali · Equazione caratteristica |

**Parte II**

| Capitolo | Concetti chiave |
|---|---|
| [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout\|08 · Divisione euclidea e identità di Bézout]] | Divisione euclidea · Identità di Bézout · Lemma di Euclide (forma coprima) |
| [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica\|09 · Primi e fattorizzazione unica]] | Lemma del primo · Teorema fondamentale dell'aritmetica · Valutazioni: prodotto e divisibilità |
| [[Books/Aritmetica-I/10 - Equazioni diofantee\|10 · Equazioni diofantee]] | Criterio di esistenza · Tutte le soluzioni di $ax+by=c$ |
| [[Books/Aritmetica-I/11 - Congruenze e inversi modulari\|11 · Congruenze e inversi modulari]] | Compatibilità con somma e prodotto · Quando esiste l'inverso · Congruenza lineare |
| [[Books/Aritmetica-I/12 - Sistemi e teorema cinese del resto\|12 · Sistemi e teorema cinese del resto]] | Teorema cinese del resto (due moduli) · Ricostruzione da più resti · Teorema generale per due moduli |
| [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente\|13 · Equivalenze e insiemi quoziente]] | Classi uguali o disgiunte · Buona definizione |

**Parte III**

| Capitolo | Concetti chiave |
|---|---|
| [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni\|14 · Gruppi, sottogruppi e permutazioni]] | Gruppo · Criterio del sottogruppo · Ordine di una permutazione |
| [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi\|15 · Anelli, campi e omomorfismi]] | $\mathbb Z/n\mathbb Z$ è un campo se e solo se $n$ è primo · Omomorfismo: una funzione che conserva le operazioni · Teorema cinese come isomorfismo |
| [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine\|16 · Gruppi ciclici e ordine]] | Una potenza vale l'identità se e solo se l'esponente è multiplo dell'ordine · Ordine di una potenza · I sottogruppi di un gruppo ciclico sono ciclici |
| [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat\|17 · Lagrange, Eulero e Fermat]] | Teorema di Lagrange · Teorema di Eulero (e Fermat) |
| [[Books/Aritmetica-I/18 - Congruenze esponenziali\|18 · Congruenze esponenziali]] | Le potenze sono uguali se e solo se gli esponenti sono congrui modulo l'ordine · Ordine modulo un prodotto di moduli coprimi |
| [[Books/Aritmetica-I/19 - Frazioni e sviluppi decimali\|19 · Frazioni e sviluppi decimali]] | Razionale equivale a eventualmente periodico · Antiperiodo e periodo dal denominatore ridotto |
| [[Books/Aritmetica-I/20 - Congruenze polinomiali e sollevamento\|20 · Congruenze polinomiali e sollevamento]] | Si risolve primo per primo e si ricompone · Sollevamento di Hensel |

Per ritrovare rapidamente dove è definita una parola, usa il [[Books/Aritmetica-I/91 - Glossario|glossario]].

## Parte I — Il linguaggio e l'arte di contare

| Capitolo | Domanda guida | Che cosa costruisce |
|---|---|---|
| [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni\|01 · Il linguaggio delle dimostrazioni]] | Come si rende controllabile un ragionamento? | Insiemi, quantificatori, implicazioni, funzioni, corrispondenze e controesempi. |
| [[Books/Aritmetica-I/02 - Naturali e induzione\|02 · Naturali e induzione]] | Come si dimostrano infiniti casi con un argomento finito? | Buon ordinamento, induzione debole e forte, proprietà cumulative, esistenza della fattorizzazione. |
| [[Books/Aritmetica-I/03 - Contare attraverso le funzioni\|03 · Contare attraverso le funzioni]] | Quando due collezioni hanno lo stesso numero di oggetti? | Cardinalità, somma e prodotto, cassetti, funzioni, iniezioni e permutazioni. |
| [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali\|04 · Sottoinsiemi e coefficienti binomiali]] | Come si toglie l'ordine da una scelta? | Insieme delle parti, coefficienti binomiali, Pascal, Newton, doppio conteggio. |
| [[Books/Aritmetica-I/05 - Distribuzioni e ripetizioni\|05 · Distribuzioni e ripetizioni]] | Che cosa cambia se gli oggetti si possono ripetere? | Anagrammi, multinomiali, scatole distinguibili, stelle e sbarre, vincoli. |
| [[Books/Aritmetica-I/06 - Inclusione ed esclusione\|06 · Inclusione ed esclusione]] | Come si contano insiemi che si sovrappongono? | Complementari, funzioni caratteristiche, inclusione-esclusione, suriezioni. |
| [[Books/Aritmetica-I/07 - Ricorrenze e successioni\|07 · Ricorrenze e successioni]] | Come si riconosce un problema più piccolo dentro quello iniziale? | Tassellazioni, Fibonacci, unicità da dati iniziali, equazione caratteristica. |

I capitoli 03–07 formano una catena: prima si contano scelte semplici, poi si controllano ripetizioni e sovrapposizioni, infine si conta costruendo una ricorrenza.

## Parte II — Gli interi e i loro resti

| Capitolo | Domanda guida | Che cosa costruisce |
|---|---|---|
| [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout\|08 · Divisione euclidea e identità di Bézout]] | Perché sostituire un numero con un resto conserva il problema? | Divisibilità, divisione con segni, MCD, algoritmo di Euclide, Bézout e lemma di Euclide. |
| [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica\|09 · Primi e fattorizzazione unica]] | In che senso i primi sono i mattoni degli interi? | Unicità della fattorizzazione, valutazioni, MCD e mcm, divisori, formula di Legendre. |
| [[Books/Aritmetica-I/10 - Equazioni diofantee\|10 · Equazioni diofantee]] | Quando una retta passa per punti a coordinate intere? | Equazioni lineari, tutte le soluzioni, vincoli, differenze di quadrati. |
| [[Books/Aritmetica-I/11 - Congruenze e inversi modulari\|11 · Congruenze e inversi modulari]] | Quale informazione conserviamo quando guardiamo solo il resto? | Operazioni modulari, criteri di divisibilità, inversi, cancellazione e congruenze lineari. |
| [[Books/Aritmetica-I/12 - Sistemi e teorema cinese del resto\|12 · Sistemi e teorema cinese del resto]] | Come si ricostruisce un numero da più resti? | Due e più moduli coprimi, costruzione esplicita, compatibilità e caso generale. |
| [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente\|13 · Equivalenze e insiemi quoziente]] | Come si trattano come un solo oggetto rappresentazioni diverse? | Relazioni e partizioni, classi, quozienti, razionali e buona definizione. |

Questa parte può essere iniziata dopo 01–02. Il capitolo 09 usa anche i conteggi di 03–05 nelle applicazioni ai divisori. Le congruenze vengono prima usate concretamente e poi rilette come un esempio di quoziente: l'astrazione avrà così un oggetto familiare a cui riferirsi.

## Parte III — Le strutture spiegano i calcoli

| Capitolo | Domanda guida | Che cosa costruisce |
|---|---|---|
| [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni\|14 · Gruppi, sottogruppi e permutazioni]] | Che cosa hanno in comune sommare, ruotare e comporre simmetrie? | Assiomi di gruppo, inversi, sottogruppi, centro, permutazioni e cicli disgiunti. |
| [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi\|15 · Anelli, campi e omomorfismi]] | Quali calcoli si conservano cambiando rappresentazione? | Anelli e campi, unità, divisori dello zero, omomorfismi e teorema cinese strutturale. |
| [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine\|16 · Gruppi ciclici e ordine]] | Quanto si può costruire ripetendo una sola operazione? | Ordine, ordine di una potenza, generatori, sottogruppi ciclici finiti e infiniti. |
| [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat\|17 · Lagrange, Eulero e Fermat]] | Perché alcune potenze sono obbligate a tornare a uno? | Classi laterali e Lagrange, funzione di Eulero, teoremi di Eulero e Fermat, ordini possibili. |
| [[Books/Aritmetica-I/18 - Congruenze esponenziali\|18 · Congruenze esponenziali]] | Come si trova un esponente quando le potenze si ripetono? | Appartenenza al sottogruppo generato, tutte le soluzioni, moduli composti e compatibilità degli esponenti. |
| [[Books/Aritmetica-I/19 - Frazioni e sviluppi decimali\|19 · Frazioni e sviluppi decimali]] | Perché una frazione produce un periodo? | Divisione come processo a stati finiti, razionalità, denominatore, antiperiodo e ordine di 10. |
| [[Books/Aritmetica-I/20 - Congruenze polinomiali e sollevamento\|20 · Congruenze polinomiali e sollevamento]] | Come si passa da una soluzione approssimata a una più precisa? | Quadratiche modulo primi, potenze prime, sollevamenti semplici e singolari, ricomposizione con il teorema cinese. |

Lagrange è sviluppato come raccordo didattico: permette di giustificare le proprietà degli ordini richiamate nelle lezioni. Le radici dell'unità sono un esempio geometrico; la loro lettura trigonometrica è un approfondimento, non un prerequisito per l'aritmetica modulare.

## Tre momenti di verifica

Dopo 07, prova a risolvere un conteggio spiegando quali oggetti conti e perché ogni oggetto compare il numero di volte dichiarato. Dopo 13, prova a risolvere una diofantea e un sistema modulare distinguendo esistenza, costruzione e completezza delle soluzioni. Dopo 20, prova un problema con modulo composto scegliendo autonomamente fra fattorizzazione, ordini, sollevamento e teorema cinese.

## Checklist di avanzamento

Spunta un capitolo solo dopo aver risolto senza aiuto almeno gli esercizi 1–6 e aver spiegato con parole tue l’idea centrale. Gli esercizi 7–8 indicano che sai trasferire il metodo a una situazione nuova.

- [ ] [[Books/Aritmetica-I/01 - Il linguaggio delle dimostrazioni|01 · Il linguaggio delle dimostrazioni]]
- [ ] [[Books/Aritmetica-I/02 - Naturali e induzione|02 · Naturali e induzione]]
- [ ] [[Books/Aritmetica-I/03 - Contare attraverso le funzioni|03 · Contare attraverso le funzioni]]
- [ ] [[Books/Aritmetica-I/04 - Sottoinsiemi e coefficienti binomiali|04 · Sottoinsiemi e coefficienti binomiali]]
- [ ] [[Books/Aritmetica-I/05 - Distribuzioni e ripetizioni|05 · Distribuzioni e ripetizioni]]
- [ ] [[Books/Aritmetica-I/06 - Inclusione ed esclusione|06 · Inclusione ed esclusione]]
- [ ] [[Books/Aritmetica-I/07 - Ricorrenze e successioni|07 · Ricorrenze e successioni]]
- [ ] [[Books/Aritmetica-I/08 - Divisione euclidea e identità di Bezout|08 · Divisione euclidea e identità di Bézout]]
- [ ] [[Books/Aritmetica-I/09 - Primi e fattorizzazione unica|09 · Primi e fattorizzazione unica]]
- [ ] [[Books/Aritmetica-I/10 - Equazioni diofantee|10 · Equazioni diofantee]]
- [ ] [[Books/Aritmetica-I/11 - Congruenze e inversi modulari|11 · Congruenze e inversi modulari]]
- [ ] [[Books/Aritmetica-I/12 - Sistemi e teorema cinese del resto|12 · Sistemi e teorema cinese del resto]]
- [ ] [[Books/Aritmetica-I/13 - Equivalenze e insiemi quoziente|13 · Equivalenze e insiemi quoziente]]
- [ ] [[Books/Aritmetica-I/14 - Gruppi sottogruppi e permutazioni|14 · Gruppi, sottogruppi e permutazioni]]
- [ ] [[Books/Aritmetica-I/15 - Anelli campi e omomorfismi|15 · Anelli, campi e omomorfismi]]
- [ ] [[Books/Aritmetica-I/16 - Gruppi ciclici e ordine|16 · Gruppi ciclici e ordine]]
- [ ] [[Books/Aritmetica-I/17 - Lagrange Eulero e Fermat|17 · Lagrange, Eulero e Fermat]]
- [ ] [[Books/Aritmetica-I/18 - Congruenze esponenziali|18 · Congruenze esponenziali]]
- [ ] [[Books/Aritmetica-I/19 - Frazioni e sviluppi decimali|19 · Frazioni e sviluppi decimali]]
- [ ] [[Books/Aritmetica-I/20 - Congruenze polinomiali e sollevamento|20 · Congruenze polinomiali e sollevamento]]

Il percorso copre il materiale attualmente disponibile. Eventuali lezioni successive potranno diventare nuovi capitoli senza cambiare le fonti originarie.
