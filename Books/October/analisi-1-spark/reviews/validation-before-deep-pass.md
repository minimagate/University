# Analisi 1 Spark — verifica finale

Data: **2 novembre 2026**.

## Artefatti consegnati

- PDF definitivo: **60 pagine**, **1.036.592 byte** (circa 1 MB).
- **14 capitoli**, introduzione, indice con le sezioni principali e appendice delle soluzioni.
- **23 figure vettoriali** con SVG originali, PDF e dimensioni fisiche; nessuna figura rasterizzata.
- **30 esercizi** con **30 soluzioni ragionate**, corrispondenza controllata automaticamente.
- Documento GNU TeXmacs completo, frammenti UTF-8 in `source/`, preambolo/coda, script locali e documentazione di copertura, scelte e fonti.

## Revisione matematica e didattica

Tutti i capitoli e tutte le soluzioni sono stati letti integralmente dal coordinatore. I tre blocchi hanno inoltre ricevuto una revisione matematica da un revisore diverso dall'autore; i rapporti sono in `reviews/reviews-a-by-b.md`, `reviews-b-by-c.md` e `reviews-c-by-a.md`. La revisione delle prove è separata dai controlli automatici dei conti.

Controllati in particolare: induzione e segno in Bernoulli; supremo e caratterizzazione ε; Archimede e costruzione di √2 mediante perturbazioni; definizioni e unicità dei limiti; monotone, costruzione di e e margine uniforme per e<3; algebra senza divisioni per zero; radici/rapporto e casi 0, 1, +∞; continuità e notevoli senza derivate; domini e rami delle inverse; non esistenza con sottosuccessioni; Landau e cancellazioni; catena con incremento nullo; inversa con continuità; ipotesi di De L'Hôpital; Taylor–Peano con derivata n-esima richiesta solo al centro; composizioni e precisione dei resti; iperboliche e soluzioni.

La revisione unitaria ha spostato il caso a −∞ dopo la sua definizione, usando prima una successione equivalente, e ha esplicitato il risultato generale sulle radici n-esime dei polinomi. Le definizioni delle inverse trigonometriche e la continuità sono ordinate prima delle applicazioni.

Controlli automatici eseguiti con esito positivo:

- `checks/verify_math.py`: **513 verifiche**, con frazioni esatte per identità e coefficienti; valori trigonometrici e inverse controllati numericamente. Risultato analitico in `checks/results.json`.
- `checks/check_review_a.py`: **1.120 controlli esatti** su somme, Bernoulli e fattoriali, più **5 casi** sui livelli del grafico.
- `checks/check_review_c.py`: **10 verifiche esatte indipendenti** su prodotti, composte, reciproci, coefficienti e limiti di Taylor.
- `checks/checks-limiti.py`: aritmetica razionale su **80 indici**, per e_n, margine 35/12, rapporti binomiali/fattoriali, somme e rami alterni.
- `checks/verify_structure.py`: **14 capitoli, 30 coppie esercizio/soluzione, 23 figure complete e tutte le 16 note con le 5 trascrizioni mappate**.

I conteggi si riferiscono ai diversi script e comprendono verifiche sovrapposte: non sono sommati come altrettanti risultati matematici distinti. Le prove dei teoremi e la validità analitica dei resti non sono dedotte da questi controlli finiti.

## Compilazione e controllo visivo

`sh build.sh` è stato eseguito con successo **nella cartella definitiva** `Books/October/analisi-1-spark/`: assemblaggio, conversione Unicode, controllo sintattico rafforzato, aggiornamento indice/riferimenti, salvataggio nativo ed esportazione con GNU TeXmacs 2.1.5. Il motore richiede l'inizializzazione macOS fuori dal sandbox; la compilazione finale autorizzata è riuscita. L'avviso generico sulla sostituzione di font è stato seguito da controllo visivo dei simboli: non sono stati rilevati glifi mancanti.

La prima revisione ha rilevato e corretto: titolo 14 troppo lungo, chiusure con soli esercizi dei capitoli 3 e 6, intervalli delle inverse spezzati nel riquadro. Il titolo è stato abbreviato, le ripetizioni selezionate e quattro figure ridotte moderatamente; le mappe delle inverse iniziano ora le rispettive righe. La riparazione delle pagine 11 e 19 definitive è stata verificata anche da un revisore indipendente.

**Tutte le 60 pagine della copia consegnata sono state renderizzate e ispezionate visivamente dal coordinatore.** La precedente impaginazione di 61 pagine aveva ricevuto anche tre controlli visivi indipendenti, documentati in `reviews/visual-first.md`, `visual-middle.md` e `visual-last.md`; i rapporti conservano le pagine e, dove rilevato, l'hash della versione effettivamente esaminata. Dopo le riparazioni il coordinatore ha riesaminato tutte le pagine finali; formule e figure dense sono state controllate anche a scala 1.2–1.4. Sono stati verificati copertina, indice completo, numeri di pagina, formule, riquadri, didascalie, margini e leggibilità delle figure.

Il controllo delle coordinate delle righe del PDF non rileva sconfinamenti orizzontali. Non restano pagine con i soli esercizi, titoli isolati, asset mancanti o contenuti tagliati. Alcune chiusure di capitolo sono più ariose e contengono ragionamento sostanziale insieme agli esercizi. Il testo estratto dal PDF della cartella definitiva coincide esattamente con quello della versione finale di produzione.

I 23 SVG sono stati rigenerati dal generatore selezionato e confrontati byte per byte: **identici**, con dimensioni coerenti e PDF vettoriali presenti. Tutte le figure archiviate sono state viste in una tavola d'insieme; le figure usate sono state controllate anche nel libro.

## Integrità e perimetro

`python3 .agents/skills/monthly-book/scripts/sources.py verify Books/October/analisi-1-spark/assets/fonti.json`: **21 fonti intatte, 0 modificate** (16 note e 5 trascrizioni).

`python3 Books/October/analisi-1-spark/scripts/verify_sources.py`: **238 file intatti, 0 modificati o assenti**: le 21 fonti, **90 file dell'archivio Analisi** e **127 file del riferimento Aritmetica Spark**. Le impronte iniziali sono conservate in `checks/preserved-files.json`. Nessun audio o Base è stato modificato.

È stato confrontato lo stato Git iniziale con quello finale. Il workspace aveva modifiche preesistenti ed è stato aggiornato anche da lavori concorrenti su altri volumi durante questa produzione. Questo intervento riguarda il bundle Analisi e la sua voce nell'indice `Books/README.md`; non ripulisce, annulla o attribuisce a sé le modifiche concorrenti. L'indice conserva anche le voci aggiunte in parallelo.

## Limiti dichiarati

I PDF AM1 originali citati nelle note di ottobre non sono disponibili nel workspace: sono state analizzate tutte le note disponibili, senza certificare il confronto con quegli originali. La selezione delle varianti è esplicita in `coverage.md` e `source-audit.md`. La costruzione astratta dei reali e delle potenze reali, il fondamento di archi/aree e la prova di De L'Hôpital restano risultati dichiaratamente assunti. Non risultano difetti matematici o tipografici aperti nella revisione effettuata.

## Impronte degli output

- PDF SHA-256: `40b32bc2ec71909b1860116b32c685fe04e61180cd934b346d8fe7446403189a`
- TeXmacs SHA-256: `a3334ab83f18165dd8e0d09fd4e7cd5ba5d66215e467ad23a5eb27e0f0a89217`
