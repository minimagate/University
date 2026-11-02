# Geometria 1 — volume 1 Spark

**51 pagine, 10 capitoli, 20 figure e 20 esercizi con soluzioni ragionate.**

Edizione di ottobre 2026, dalla prima lezione disponibile del 23 settembre fino al 31 ottobre. L'ultima fonte nel periodo è del 27 ottobre. Il volume rielabora 12 note e 12 trascrizioni; le fonti e il vecchio libro sono conservati.

- [Libro PDF](geometria-1-spark.pdf) e [documento nativo TeXmacs](geometria-1-spark.tm).
- `source/`: capitoli modificabili in UTF-8 e soluzioni; `templates/`: preambolo e impaginazione.
- `assets/`: originali SVG, copie PDF vettoriali, generatori, dimensioni e manifesto SHA-256 delle fonti.
- [Copertura](coverage.md), [inventario e mappa](source-audit.md), [scelte e correzioni](editorial-notes.md), [verifica finale](validation.md).
- `checks/` contiene i controlli matematici esatti; `reviews/` documenta letture, revisioni e risultati.

## Rigenerazione

Sono necessari Python 3.8+ e GNU TeXmacs (verificato con 2.1.5). Dalla cartella del progetto:

```sh
sh build.sh
```

Il comando assembla `source/*.tm`, converte i simboli, controlla la sintassi, aggiorna l'indice e stampa su pagina bianca. `scripts/export.sh` e il relativo `export.py` controllano timeout e presenza di un nuovo PDF completo. Una compilazione fallita conserva il PDF e il documento nativo pubblicati. Le figure PDF sono già incluse: la ricompilazione ordinaria non richiede Swift. `TEXMACS_BIN` o `TEXMACS_APP` selezionano il motore; `TEXMACS_PATH` e `TEXMACS_HOME_PATH` consentono di indicare una personalizzazione.

Per modifiche riproducibili, intervieni sui frammenti in `source/`. Puoi anche modificare direttamente il documento completo `.tm` in TeXmacs, ma una successiva esecuzione di `build.sh` lo ricostruisce dai frammenti: riporta prima lì le modifiche desiderate.

## Controlli

```sh
python3 checks/foundations.py
python3 checks/foundations-independent.py
python3 checks/vector-spaces.py
python3 checks/systems.py
python3 checks/independent.py
python3 scripts/check_assets.py
python3 scripts/verify_sources.py
```

L'ultimo comando cerca la radice del vault; se il libro è stato copiato altrove, usa `--vault /percorso/University`. I controlli dei calcoli funzionano anche senza le fonti. I calcoli finiti verificano gli esempi e sono distinti dalla revisione delle dimostrazioni.

## Figure

La libreria locale conserva i 33 disegni vettoriali dell'archivio; il libro ne seleziona una parte. Originali SVG e PDF sono abbinati, con dimensioni fisiche in `assets/sizes.json`. Per rigenerare le immagini, su macOS con Swift/WebKit e i font STIX Two:

```sh
python3 assets/disegni.py assets assets/sizes.json
swift assets/svg-to-pdf.swift assets
sh build.sh
```

Gli strumenti facoltativi di controllo pagina sono compilabili con `sh scripts/tools.sh /private/tmp/geometria-review-bin`. Il vecchio volume rimane in `Books/Archive/October/geometria-1.*` con i suoi asset; [l'indice principale](../../README.md) distingue l'edizione Spark dall'archivio.

## Revisione del 2 novembre 2026

Tutti i capitoli, le didascalie e le soluzioni sono stati rivisti per lingua e progressione. Ogni capitolo si apre con un «In breve» riscritto. I paragrafi sviluppano un passaggio alla volta; gli esempi concreti preparano le prove generali. I dettagli del lavoro e i controlli effettivi sono in [validation.md](validation.md).

Il build controlla anche la presenza delle aperture con `scripts/check-editorial.py`; gli avvisi sulla lunghezza della prosa richiedono una lettura umana e non misurano da soli la semplicità. `scripts/verify_sources.py` verifica le fonti delle lezioni. L'opzione `--references` include le impronte dei riferimenti storici, che potrebbero essere stati archiviati o rimossi separatamente; questi file non servono a rigenerare il libro.
