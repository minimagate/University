# Aritmetica I — Dalle idee alle dimostrazioni

Questo libro nasce da tutto il materiale di Aritmetica presente nel vault: 15 note e 14 trascrizioni, dal 23 settembre al 1° novembre 2026. Il percorso segue le dipendenze fra le idee. Il suo filo conduttore è imparare a trasformare una domanda in un problema più semplice, senza perdere informazioni: contare attraverso una corrispondenza, sostituire due interi con resti più piccoli, studiare un'equazione attraverso le sue classi di soluzioni.

Le spiegazioni e gli esercizi sono una nuova esposizione didattica. I raccordi e i completamenti delle dimostrazioni sono indicati nelle fonti dei capitoli; non sono citazioni dei docenti. I materiali originari rimangono consultabili: [[Books/Aritmetica-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

## Come studiare

Leggi prima la domanda iniziale e prova gli esempi con carta e penna. Prima di leggere una dimostrazione, fermati a dire che cosa sai e che cosa vuoi ottenere. Dopo averla letta, ricostruisci il passaggio decisivo senza guardare. Saper ripetere un enunciato serve; saper spiegare perché le ipotesi sono necessarie mostra una comprensione più profonda.

Gli esercizi finali passano dall'uso diretto dei concetti alla scelta autonoma del metodo e alla dimostrazione. I riscontri sono richiudibili: aprili dopo un tentativo. Un risultato numerico corretto è un controllo; per gli esercizi dimostrativi occorre saper giustificare ogni implicazione. Puoi considerare acquisito un capitolo quando risolvi gli esercizi fondamentali senza suggerimenti e sai affrontare quelli di collegamento spiegando la scelta del metodo.

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
| [[Books/Aritmetica-I/08 - Divisione euclidea e identita di Bezout\|08 · Divisione euclidea e identità di Bézout]] | Perché sostituire un numero con un resto conserva il problema? | Divisibilità, divisione con segni, MCD, algoritmo di Euclide, Bézout e lemma di Euclide. |
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
- [ ] [[Books/Aritmetica-I/08 - Divisione euclidea e identita di Bezout|08 · Divisione euclidea e identità di Bézout]]
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
