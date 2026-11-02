# Fondamenti di Programmazione — volume 1 Spark

**55 pagine, 9 capitoli, 12 figure e 18 esercizi con soluzioni ragionate.**

Edizione di ottobre 2026: raccoglie le lezioni del corso fino al 31 ottobre (date esatte delle fonti in [coverage.md](coverage.md)).

- [Libro PDF](fondamenti-di-programmazione-1-spark.pdf)
- [Documento nativo TeXmacs](fondamenti-di-programmazione-1-spark.tm)
- [Copertura](coverage.md), [analisi delle fonti](source-audit.md), [scelte editoriali](editorial-notes.md), [verifica finale](validation.md)

## Modificare e rigenerare

Con Python 3 e GNU TeXmacs 2.1.5:

```sh
sh build.sh
```

`source/` contiene i capitoli UTF-8 modificabili; `templates/` il preambolo e le impostazioni; `scripts/` conserva tutte le dipendenze di assemblaggio, conversione, esportazione e controllo. Il build rigenera `.src`, `.tm` e PDF, aggiornando l'indice. Le figure PDF vettoriali sono già fornite: la ricompilazione ordinaria non richiede Swift. `TEXMACS_BIN` o `TEXMACS_APP` permettono di scegliere il motore. Il motore grafico macOS richiede una sessione che possa avviare applicazioni.

Il `.tm` completo è modificabile direttamente in TeXmacs; per conservare le modifiche al successivo build occorre riportarle nei frammenti sotto `source/`. Il build protegge il PDF e il `.tm` precedenti in caso di esportazione fallita.

Le estensioni locali al convertitore riguardano solo i simboli della logica e della semantica; il preambolo canonico aggiunge una macro per il codice in linea. Nei listati, spazi espliciti conservano l'indentazione e i vincoli di pagina tengono insieme le righe.

## Ripetere i controlli

```sh
python3 checks/deep-pass.py
python3 checks/foundations.py
python3 checks/check-logic.py
python3 checks/check-hoare.py
python3 checks/check-arrays.py
python3 checks/review-foundations-logic-checks.py
python3 checks/review-independent.py
python3 checks/narrative-pass.py
python3 scripts/verify_sources.py
```

L'ultimo comando cerca il vault fra le cartelle ascendenti; per una copia esterna usare `--vault /percorso/University`. Gli script di verifica numerica non richiedono TeXmacs. Per le figure e gli strumenti di controllo visivo vedere [assets/README.md](assets/README.md). I risultati e le revisioni indipendenti sono conservati in `reviews/`.

## Revisione del 2 novembre 2026

Tutti i capitoli, le didascalie e le soluzioni sono stati rivisti per lingua e progressione. Ogni capitolo si apre con un «In breve» riscritto. I paragrafi sviluppano un passaggio alla volta; gli esempi concreti preparano le prove generali. I dettagli del lavoro e i controlli effettivi sono in [validation.md](validation.md).

Il build controlla anche la presenza delle aperture con `scripts/check-editorial.py`; gli avvisi sulla lunghezza della prosa richiedono una lettura umana e non misurano da soli la semplicità. `scripts/verify_sources.py` verifica le fonti delle lezioni. L'opzione `--references` include le impronte dei riferimenti storici, che potrebbero essere stati archiviati o rimossi separatamente; questi file non servono a rigenerare il libro.

## Revisione narrativa del 2 novembre 2026

Tutta la prosa, compresi introduzione, «In breve», didascalie ed esercizi, è stata riscritta in forma narrativa secondo lo standard Spark aggiornato: frasi collegate, scelte motivate, meno due punti e nessuna nota rivolta al revisore. I contenuti sono gli stessi; i dettagli sono in [editorial-notes.md](editorial-notes.md) e i controlli in [validation.md](validation.md).
