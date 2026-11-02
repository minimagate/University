# Revisione visiva finale indipendente — capitoli 8–9 e appendice

PDF controllato: `Books/October/fondamenti-di-programmazione-1-spark/fondamenti-di-programmazione-1-spark.pdf`, 39 pagine. Rendering con PDFKit tramite `pdfrender` a scala 1.2 (circa 714 × 1010 pixel per pagina). Ispezionate individualmente tutte le pagine **28–39**, non soltanto una tavola di miniature. I render sono in `/tmp/fdp-spark-2026/arrays/final-review/`.

Il rendering è stato inizialmente eseguito dalla copia scratch; appena comparsa la copia finale ne ho confrontato SHA-256: sono identiche, `1ea51b7e934a1336d4de82761e40df59404afa2505b9893f7cdb1681cafd625d`. La valutazione riguarda quindi anche il PDF consegnato alla destinazione finale.

## Esito

Nessun problema bloccante o correzione necessaria rilevata nelle pagine assegnate.

- **28–31, capitolo 8:** titolo e concetto chiave ben composti; codice del fattoriale, MCD, radice cubica e Fibonacci mantiene rientri e blocchi completi. Le formule di invariante e variante hanno limiti leggibili; prodotti e potenze sono resi correttamente. Il codice della radice apre pagina 30 dopo la preparazione dell'esempio a pagina 29: continuità chiara, senza titoli isolati. Il riquadro sulla correzione b−1 resta intero. La figura Fibonacci adattata a pagina 31 è nitida, proporzionata e coerente: (x,y)=(3,2) passa a (5,3), con promemoria del vecchio x salvato in temp. Didascalia separata e leggibile. La ricorrenza opzionale occupa una sezione continua; le due identità per parità, il programma descritto in prosa e la terminazione restano presenti. Verifica 8 completa nella stessa pagina.
- **32–36, capitolo 9:** semantica della lettura, aggiornamento selettivo e assioma rimangono entro la colonna. Il riquadro sulle somme parziali a pagina 33 è intero, con indici e sommatorie leggibili. L'invariante sulle due zone va su due display coerenti; la figura array a pagina 33 mantiene indici 0–7, confine x=3 e due parentesi per gli intervalli. Il programma seguente apre pagina 34 intero: la continuità è chiara. Codice della somma e formule con limiti n−1/x−1 non presentano sovrapposizioni. Figura bandiera a pagina 35 chiara: due e tre categorie, zona ignota, confini x,z,y,n; la didascalia spiega entrambe le righe. Il programma a due colori rimane completo, con ramo else e scambio ben indentati. Tre colori a pagina 36: il ramo annidato si distingue e tutti i comandi sono contenuti nella colonna. Verifica 9 resta insieme al termine del capitolo, senza pagina quasi vuota dedicata ai soli esercizi.
- **37–39, appendice:** tutte le sezioni e le soluzioni sono leggibili. Le soluzioni 4.1 e 8.2 continuano sulla pagina successiva, ma le riprese sono comprensibili; nessuna intestazione è lasciata senza testo. La soluzione 8.1 conserva sulla pagina 38 l'identità compensativa e il caso p=0; 8.2 ha la propria formula completa a pagina 39. Soluzioni 9.1 e 9.2 leggibili e coerenti con le domande, inclusi il secondo indice valido dopo l'aggiornamento e il caso di array vuoto. La pagina finale è parzialmente bianca, come normale termine dell'appendice; non è una pagina aggiuntiva di soli esercizi.

## Note non bloccanti

L'appendice è volutamente più densa del testo didattico, ma rimane leggibile a dimensione di lettura. Alcune stringhe di codice inline si spezzano su due righe come testo: nessuna interruzione ne altera il significato. Le intestazioni correnti possono mostrare l'ultima sezione presente nella pagina, secondo lo stile classico TeXmacs; non sono riferimenti sbagliati nel corpo.

Non ho modificato il bundle finale durante questa revisione.

## Controllo dell’orchestratore dopo l’ultima ricompilazione

L’impronta 1ea51b… riportata sopra appartiene alla copia apparsa nella destinazione prima della ricompilazione da quella cartella. Il PDF finale ha SHA-256 a9406b85c9e41fc325d6594aac5c8c4b9d9955ae0c5fd227038108d15fcc1a63. Per escludere differenze visive, le pagine finali 28–39 sono state renderizzate alla stessa scala 1,2: i dodici PNG coincidono byte per byte con quelli ispezionati dal revisore. Il testo completo coincide inoltre con la copia di lavoro.
