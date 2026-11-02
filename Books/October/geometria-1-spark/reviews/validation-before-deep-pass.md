# Geometria 1 Spark — verifica finale

Data: **2 novembre 2026**. Edizione principale, volume 1, settembre–ottobre 2026.

## Output consegnato

- **47 pagine**, compresi copertina, introduzione, indice, dieci capitoli e appendice delle soluzioni.
- **20 figure vettoriali impiegate**; la libreria locale conserva 33 originali SVG con copie PDF.
- **20 esercizi**, ciascuno con soluzione ragionata; corrispondenza degli identificatori controllata automaticamente, senza doppioni.
- PDF: **1,140,684 byte**, circa 1,14 MB. Documento completo nativo TeXmacs e frammenti modificabili, template, asset, generatori e script locali inclusi.

## Revisione matematica separata

Tutti i capitoli e tutte le soluzioni sono stati letti integralmente dal responsabile dell'integrazione. Ciascun blocco ha inoltre una revisione matematica di un autore diverso: `reviews/review-math-01-03.md`, `review-math-04-07.md`, `review-math-08-10.md`. Controllate ipotesi, direzioni delle equivalenze, casi nulli e noncircolarità.

Particolare attenzione a: costruzione degli inversi; argomenti delle radici; teorema del fattore e induzione; limite delle radici non circolare; molteplicità coniugate; campo degli scalari; scambio e completamento; esistenza di basi finite dei sottospazi; indipendenza nella prova di Grassmann; due inclusioni del traslato; rango–nullità; invarianza del rango tramite nucleo prima di righe=colonne; ordine delle mosse e delle inverse. Le precisazioni emerse sono integrate nel testo, compresi il campo reale dell'esercizio 8.2 e l'ipotesi z,w≠0 nella derivazione del prodotto polare.

**Cinque script di controllo esatto superati**, con sola libreria standard Python:

- `checks/foundations.py`: operazioni F2, 512 triple di sottoinsiemi, complessi in aritmetica razionale e anelli quadratici, radici e fattorizzazioni.
- `checks/foundations-independent.py`: espansioni simboliche indipendenti per associatività complessa, coniugio, norma, fattori coniugati e completamento del quadrato.
- `checks/vector-spaces.py`: parametrizzazioni, indipendenza, coordinate, basi dei polinomi, scambio, somme e decomposizione simmetrica.
- `checks/systems.py`: ranghi e famiglie affini con aritmetica razionale, tutti gli esercizi del blocco finale e conteggi su F2,F3,F5.
- `checks/independent.py`: **1.850 controlli** aggiuntivi, fra cui tutte le 64 matrici possibili di tipo 2×3 su F2, i relativi 256 sistemi, 625 decomposizioni simmetriche e dati numerici delle figure.

I risultati sono conservati in `reviews/check-results.txt`. Questi controlli verificano esempi e identità; non sono presentati come dimostrazioni dei teoremi generali.

## Compilazione e controllo editoriale

Compilazione con GNU TeXmacs **2.1.5**, tramite gli script aggiornati della skill. La prima esportazione nel sandbox si è arrestata all'inizializzazione del servizio grafico macOS; la compilazione locale con accesso al servizio grafico è riuscita. `sh build.sh` è stato poi eseguito dalla **cartella definitiva** `Books/October/geometria-1-spark/`: assemblaggio, conversione, controllo sintattico, aggiornamento dell'indice, salvataggio nativo e nuova stampa PDF completati.

Preambolo canonico: Computer Modern predefinito, 11 pt, A4 e margini prescritti, senza assegnazioni personalizzate di `font` o `math-font`. I font Computer Modern del testo e della matematica e STIX delle figure risultano incorporati; TeXmacs emette un avviso generico di sostituzione font, senza glifi mancanti rilevati nell'ispezione. Nessuna dipendenza esterna al progetto è necessaria oltre a Python e TeXmacs per ricompilare il PDF con le figure già incluse.

Le **47 pagine della copia definitiva** sono state renderizzate e ispezionate tutte. Le pagine con formule, riquadri e figure erano state inoltre viste singolarmente a scala 1,5 dai revisori dei tre blocchi. Dopo gli interventi, nuova ispezione di tutti i fogli finali e controllo a scala 1,5 delle pagine **10,11,12,21,22,29,33,34,39,43**. Verificati indice, numeri dei capitoli, aperture, figure proporzionate, didascalie, formule, frazioni, radici, matrici e riquadri.

Correzioni visive applicate e ricontrollate: pagina 22 con la sezione sul campo insieme alla verifica; pagina 39 con figura e applicazione finale insieme agli esercizi; pagina 43 con l'intera sezione facoltativa; etichetta S=ξ+S0 e tratto superiore della figura `traslato` dentro il canvas. La pagina conclusiva delle soluzioni è naturalmente più breve. Non risultano formule fuori margine, testo tagliato, didascalie isolate, asset mancanti o pagine contenenti soltanto gli esercizi. I report delle bozze in `reviews/` distinguono le osservazioni iniziali dalle riparazioni finali.

La libreria storica di 33 disegni è stata ispezionata separatamente; le figure usate sono state ricontrollate nel libro. `scripts/check_assets.py` verifica tutti i 20 richiami, originali SVG/PDF, titoli/descrizioni e dimensioni nella colonna; risultato in `reviews/assets-check.json`.

## Integrità e ambito delle modifiche

`python3 .agents/skills/monthly-book/scripts/sources.py verify Books/October/geometria-1-spark/assets/fonti.json`: **24 fonti intatte, 0 modificate**. Il verificatore locale conferma inoltre **201 file di riferimento intatti**: vecchio volume di Geometria con asset e progetto Aritmetica Spark consultato. Destinazioni dei capitoli e sezioni compilate in ogni voce del manifesto.

Nessuna modifica a note, trascrizioni, audio, Bases, AGENTS.md o skill. Gli interventi di questa produzione riguardano soltanto il nuovo bundle e l'indice `Books/README.md`. Sono stati conservati gli aggiornamenti preesistenti e concorrenti delle altre edizioni e dell'indice, senza ripristinarli allo stato iniziale. Stato Git rilevato all'inizio e ricontrollato alla fine.

## Limiti dichiarati

La fonte è il corpus disponibile, non una certificazione di tutte le lezioni effettivamente tenute. Le trascrizioni ASR non garantiscono formule di lavagna esatte; i casi ambigui sono descritti nelle note editoriali. La lezione del 1° novembre è esclusa. La selezione delle varianti è esplicita in `coverage.md`; tutti i pilastri sono trattati. TFA, confronto generale delle basi infinite e unicità della forma ridotta restano risultati enunciati senza prova, con tale limite visibile nel testo. Non restano problemi matematici o di impaginazione individuati e non risolti nella revisione.

## Impronte della consegna

- PDF SHA-256: `5a55fa8b12abc021249404dd20c7066b62a86db2aaeddc61d93775e4bd36cbf9`.
- TeXmacs SHA-256: `0db6a0185ba60274d83189f736ce04179ae9bff6ff18e8db44294f057a6f49fe`.

Conteggi e aperture dei capitoli sono anche in `reviews/final-validation.json`.
