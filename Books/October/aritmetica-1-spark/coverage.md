# Aritmetica 1 Spark — copertura del corso

Periodo: **23 settembre–31 ottobre 2026**. Il corpus comprende **14 note e 13 trascrizioni**, incluse la nota autonoma del 19 ottobre e la lezione sulle equivalenze datata 21 ottobre nella nota e 22 ottobre nella trascrizione. La lezione del 1° novembre è esclusa. L'inventario analitico è in `source-audit.md`; percorsi e impronte delle fonti sono conservati in `assets/fonti.json`.

La copertura segue la scelta concordata per Spark: spiegazione completa dei **concetti principali**, percorso leggibile, selezione degli esercizi e delle varianti. Non dichiara la riproduzione integrale di tutti i dettagli o degli esempi numerici del corso. Le trascrizioni automatiche documentano il programma, ma le loro formule richiedono verifica matematica.

## Come leggere il controllo

- **Principale**: concetto sviluppato attraverso motivazione, esempi, definizione e ragionamento.
- **Compatto**: risultato o applicazione presente con spiegazione breve, spesso sotto «Per proseguire».
- **Variante non riprodotta**: specifico esercizio, formalismo o dimostrazione alternativa omesso; la relativa tecnica può essere trattata altrove.

## Mappa delle lezioni

| Fonte | Destinazione nel libro e livello di trattazione |
|---|---|
| **23/09 — Naturali, induzione e fattorizzazione** | **Cap. 1**, «Insiemi ed enunciati», «Induzione», «Il principio del minimo», «Induzione forte»: principale; esistenza della fattorizzazione dimostrata. **Cap. 9**, operazioni interne e proprietà: principale. L'assiomatica completa del successore e il falso argomento sul colore degli occhi non sono riprodotti; resta un esercizio sull'induzione fallace. |
| **29/09 — Cardinalità e combinatoria** | **Cap. 1**, somma dei dispari con prova e figura. **Cap. 2**, funzioni, dominio/codominio/immagine, iniettività/suriettività/biiettività, cardinalità, cassetti, prodotto cartesiano, numero delle funzioni e iniezioni, fattoriale, binomiali e sovraconteggio: principale. Indicatori e identità combinatorie: compatti. |
| **30/09 — Ricorrenze e formule combinatorie** | **Cap. 3**, successione, ricorrenza, dati iniziali, unicità, linearità, ricerca esponenziale, polinomio caratteristico e Fibonacci/Binet: principale. Caso generale con radici distinte: compatto. **Cap. 2**, Newton, Pascal, sottoinsiemi e parità, inclusione-esclusione: presenti. La seconda prova di Newton per induzione e i dettagli del cambio d'indice non sono riprodotti. |
| **05/10 — Divisione, MCD e Bézout** | **Cap. 4**, divisibilità, ordine parziale, divisione euclidea anche con segni, prove di esistenza/unicità, MCD, Euclide e terminazione: principale. **Cap. 5**, risalita e identità di Bézout: principale. L'esempio 45/17 conserva la continuità fra procedimento e identità. |
| **06/10 — Equazioni diofantee** | **Cap. 5**, lemma di Euclide e significato delle combinazioni intere. **Cap. 6**, criterio del MCD, necessità/sufficienza, soluzione particolare, parametrizzazione completa con due direzioni, vincoli e casi degeneri: principale. Reticolo illustrato. |
| **06/10 — Conteggi combinatori** | **Cap. 2**, multinomiali/anagrammi e doppio conteggio: principali; suriezioni generali e stelle/sbarre: compatti. **Cap. 3**, tassellazioni e ricorrenza: principale; somma binomiale: compatta. L'identità della trascrizione **Σk·C(n,k)=n·2^(n−1)** è spiegata contando un sottoinsieme con un elemento contrassegnato. Gli esercizi numerici grandi sono selezionati, non ripetuti tutti. |
| **07/10 — Fattorizzazione e congruenze** | **Cap. 5**, primi, lemma e unicità della fattorizzazione: principale. **Cap. 7**, congruenza come stesso resto/differenza multipla, classi, operazioni e potenze: principale; criteri 3, 9, 11: compatti. **Cap. 8**, inversi, cancellazione con cambio del modulo, congruenze lineari e sistemi: principale. |
| **13/10 — Divisori ed esercizi** | **Cap. 5**, divisori dagli esponenti, MCD/mcm e relazione col prodotto: presenti. **Cap. 2**, stelle/sbarre, e **cap. 6**, vincoli sul parametro: tecniche conservate mediante esempi più piccoli. Non riprodotti: terne xyz=2000, MCD esponenziale, particolare diofantea 11x+41y=2 con vincoli, conteggio dei 784 sottoinsiemi. |
| **14/10 — Decimali e fattoriali** | **Cap. 11**, divisione decimale, ripetizione dei resti, razionale ⇔ decimale eventualmente periodico, periodo→frazione, fattori 2 e 5 e ordine modulo il fattore coprimo: presenti. **Cap. 5**, valutazione p-adica del fattoriale e Legendre: compatti. **Cap. 6**, differenza di quadrati e parità dei fattori: percorso aggiuntivo breve. |
| **19/10 — Teorema cinese, nota autonoma** | **Cap. 8**, esistenza/unicità e ricomposizione di più moduli, con giustificazione della coprimalità necessaria al passo induttivo: presenti. I lemmi ausiliari sulla moltiplicatività del MCD e la costruzione dell'inverso per minimo tentativo non sono riprodotti come risultati separati. La nota è usata come fonte disponibile; il manoscritto menzionato non è presente. |
| **21/10 nota ↔ 22/10 trascrizione — Equivalenze** | **Cap. 7**, equivalenze, classi uguali/disgiunte, partizioni, quoziente e buona definizione: principale; costruzione dei razionali come classi: compatta. **Cap. 9**, gruppi, anelli, campi, unità e campo modulo un primo: principale. |
| **22/10 — Omomorfismi** | **Cap. 9**, omomorfismi/isomorfismi: principale; prodotto diretto, mappa cinese, equivalenza con coprimalità e restrizione alle unità: compatti, dopo la definizione delle strutture. |
| **27/10 — Esponenziali e potenze prime** | **Cap. 10–11**, ordine, ciclo delle potenze, appartenenza al generato, esponenti congrui modulo l'ordine e scomposizione del modulo: presenti. **Cap. 12**, quadratiche su campi, discriminante, eccezione p=2, sollevamento con uno/zero/p rami e ricomposizione cinese: presenti; idempotenti e conteggio 2^r: compatti. |
| **27/10 — Gruppi e permutazioni** | **Cap. 9–10**, assiomi, unicità di neutro/inverso, cancellazione, sottogruppi e criterio, intersezione/unione, generato, ciclici, ordine finito/infinito, permutazioni e composizione: principali. Radici dell'unità, centro e multipli dℤ: compatti. |

## Scelte che alleggeriscono il percorso

Gli esercizi sulla scelta di 96 elementi fra 100, sulle coppie di sottoinsiemi con intersezione fissata, sul prodotto xyz=2000 e sulle terne distinte di somma 100 non sono riprodotti. Le loro idee di scelta, ripetizione, parità, inclusione-esclusione e distribuzione sono sviluppate con numeri più piccoli. Il MCD(3^a−1,3^b−1), le prove alternative di Newton e il linguaggio degli spazi vettoriali per le ricorrenze restano fuori dal volume. Le radici caratteristiche coincidenti non vengono aggiunte: il confine del metodo trattato è esplicito.

Ogni capitolo contiene due esercizi con risposte spiegate; i passaggi centrali sono anche svolti nel testo. Le integrazioni didattiche comprendono esempi, figure e spiegazioni strategiche, senza attribuzioni al docente. Lagrange, Eulero e la classificazione dei sottogruppi ciclici della lezione di novembre non vengono anticipati.

**Stato del documento:** controllo finale dei dodici capitoli e delle ventiquattro soluzioni, dopo revisione matematica incrociata e compilazione.

## Riferimenti nel PDF consegnato

| Capitolo | Prima pagina |
|---|---:|
| 1 | 5 |
| 2 | 9 |
| 3 | 14 |
| 4 | 18 |
| 5 | 21 |
| 6 | 25 |
| 7 | 29 |
| 8 | 33 |
| 9 | 37 |
| 10 | 40 |
| 11 | 44 |
| 12 | 47 |
| Soluzioni ragionate | 50 |

Le pagine sono quelle stampate nel PDF. Il volume ha 52 pagine complessive.
