# Geometria 1 — inventario delle fonti e mappa Spark

Volume 1, edizione ottobre 2026. Periodo richiesto: prima lezione disponibile–31 ottobre, includendo settembre. Il censimento trova **12 note e 12 transcript**, dal **23 settembre al 27 ottobre**, per circa **18 ore e 3 minuti** di registrazione. Nessuna precedente edizione principale Spark di Geometria era presente. Il vecchio volume 1 di ottobre è stato consultato come riferimento secondario, senza presupporlo già padroneggiato.

## Inventario e letture

La cartella `Notes/Geometria 1/` è stata ispezionata prima del censimento: non contiene ulteriori note di studio fuori da `Lectures/`. Tutte le note e tutti i corrispondenti transcript del periodo sono stati letti integralmente, in blocchi delimitati. Nei casi di output troncato la parte mancante è stata riletta; i riscontri effettivi e le ambiguità si trovano nei tre audit collegati sotto.

| Data e fonte | Destinazioni principali |
|---|---|
| 2026-09-23 — Insiemi, applicazioni e spazi vettoriali | 1.1–1.5, 4.1, 5.3 |
| 2026-09-25 — Numeri complessi- operazioni, forma polare e radici | 2.1–2.4, 3.1–3.2 |
| 2026-09-30 — Fattorizzazione dei polinomi e radici complesse | 2.4, 3.1–3.5 |
| 2026-09-30 — Spazi vettoriali, esempi e sottospazi | 4.1–4.4, 6.4 |
| 2026-10-02 — Span, indipendenza lineare e basi vettoriali | 5.1–5.3, 6.1 |
| 2026-10-06 — (!) Sottospazi, combinazioni lineari e basi | 4.2–4.3, 5.2, 6.3–6.4 |
| 2026-10-07 — Coordinate, basi e dimensione degli spazi vettoriali | 5.3–5.4, 6.1–6.5 |
| 2026-10-13 — Somma diretta e dimensione dei sottospazi | 3.2, 6.4, 7.1–7.4 |
| 2026-10-14 — Basi, sottospazi e sistemi lineari | 4.4, 5.3–5.4, 6.1–6.5, 8.1–8.2 |
| 2026-10-22 — Sistemi lineari e algoritmo di eliminazione di Gauss | 8.2, 9.1–9.5, 10.2–10.3 |
| 2026-10-22 — Sistemi lineari, nucleo, immagine e rango | 7.2, 8.1–8.5, 9.4 |
| 2026-10-27 — Rango, sistemi lineari e matrici elementari | 8.4–8.5, 9.4, 10.1–10.5 |

I percorsi esatti (compreso `(!)` nella nota del 6 ottobre), i 24 hash SHA-256 e i capitoli sono in `assets/fonti.json`. Il transcript del 7 ottobre ha un percorso `source_audio` sotto Aritmetica, mentre titolo, corso e contenuto sono di Geometria: è stato valutato il corpo pertinente e non è stato alterato il metadato. Non è stato aperto né modificato alcun audio.

Letture analitiche:

- [Fondamenti: 23/09, 25/09 e 30/09 polinomi](reviews/audit-01-03.md).
- [Blocco vettoriale: 30/09 spazi, 02/10, 06/10, 07/10, 13/10, 14/10](reviews/audit-04-07.md).
- [Sistemi: due registrazioni 22/10, 27/10 e riscontro sulla coda 14/10](reviews/audit-08-10.md).

## Pilastri, domande e dipendenze

| Capitolo | Domanda e punto di partenza | Collegamento che prepara |
|---|---|
| 1. Insiemi, applicazioni e campi | Che cosa assegna una funzione? Quando possiamo dividere? Quadrato e parità. | Definizioni, due inclusioni, inversa; regole per i complessi e gli scalari. |
| 2. Numeri complessi | Come risolvere x²=−1 e capire il prodotto nel piano? | Modulo/coniugato → inverso; prodotto polare → potenze → radici. |
| 3. Polinomi | Perché una radice riduce il problema? Divisione di z²−3z+2. | Fattore → induzione sul grado → fattorizzazione e molteplicità; poi applicazioni ai sottospazi polinomiali. |
| 4. Spazi e sottospazi | Che cosa condividono frecce, polinomi, funzioni e matrici? | Regole comuni e chiusura; equazioni omogenee diventano costruzioni parametriche. |
| 5. Span, indipendenza e basi | Possiamo raggiungere tutto? La scrittura è unica? Due vettori proporzionali. | Esistenza e unicità distinte; basi ordinate, coordinate e dipendenza dal campo. |
| 6. Dimensione e scambio | Perché una base del piano ha sempre due elementi? Recuperare il vettore scambiato. | Scambio → confronto → dimensione → completamento e basi dei sottospazi. |
| 7. Somme e Grassmann | Come unire sottospazi senza contare due volte la parte comune? | Somma diretta e supplementari; base comune e due completamenti; simmetriche/antisimmetriche. |
| 8. Matrici e linearità | Quali risultati raggiungiamo e quali differenze scompaiono? x↦(x₁+x₂,x₂+x₃). | Prodotto → nucleo/immagine → traslato delle soluzioni → rango–nullità. |
| 9. Gauss | Come troviamo le soluzioni senza indovinarle? Sistema già a scala. | Mosse reversibili → algoritmo finito → parametri e basi del nucleo; equazioni ↔ generatori. |
| 10. Rango ed elementari | Quali dimensioni si conservano mentre cambiano le righe? | Rouché–Capelli, rango=pivot, righe=colonne; prodotti di mosse e invertibilità. |

La struttura è stata scelta prima della stesura nel [piano di lavoro](reviews/teaching-plan.md). Le riprese delle lezioni sono riunite; il completamento viene provato prima di Grassmann e rango–nullità, e righe=colonne dopo aver giustificato l’invarianza del rango attraverso il nucleo. I riferimenti del 22 ottobre a supplementari sono integrati nel capitolo 7.

## Riferimenti e fedeltà

Aritmetica Spark è stato consultato nell’introduzione, in capitoli campione, nella coverage, nelle note editoriali e nei file di produzione: costituisce un riferimento di pazienza, motivazione delle prove e tipografia, non un indice tematico da copiare. Il vecchio Geometria è stato letto nei blocchi pertinenti dei capitoli 1–12 e nella sua mappa di correzioni. La libreria di 33 disegni rimane disponibile nel progetto; ne sono usati 20, con una correzione locale alla figura del traslato. Le impronte dell’archivio e dell’intero progetto Aritmetica consultato sono conservate in `assets/reference-hashes.json`.

Le varianti omesse, i contenuti rinvenuti solo o soprattutto nei transcript e le destinazioni effettive sono in [coverage.md](coverage.md). Le ricostruzioni non certe non sono attribuite al docente come citazioni. Fonti, archivio e altre edizioni sono conservati.

## Edizione consegnata

- [PDF](geometria-1-spark.pdf), [TeXmacs nativo](geometria-1-spark.tm), frammenti modificabili in `source/`.
- [Copertura](coverage.md), [scelte e correzioni](editorial-notes.md), [verifica finale](validation.md).
- Dieci capitoli, venti figure impiegate e venti esercizi con soluzioni ragionate. Il conteggio definitivo delle pagine è registrato in `validation.md`.
